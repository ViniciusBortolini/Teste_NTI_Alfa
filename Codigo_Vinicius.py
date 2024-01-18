##Comando para ser rodado no terminal: pip install requests
##Comando para ser rodado no terminal: pip install psycopg2

import requests
import psycopg2

"""
Função responsável por consumir a API.

@param cnpj (int): valor inteiro que corresponde ao CNPJ da filial que deseja buscar as informações

@return json: retorna um json com as informações buscadas na API.
"""
def consumir_api(cnpj):
    requisicao = requests.get(f"https://receitaws.com.br/v1/cnpj/{cnpj}")
    try:
        return requisicao.json()
    except:
        print("Não foi possível acessar a requisição. Por gentileza verifique o CNPJ")

#testando se deu certo o acesso na api
#print(consumir_api(82110818000121))

"""
Função responsável por conectar-se ao banco de dados.
Para isso utilizasse o psycopg2

@return conexao: retorna a conexão realizada com o banco de dados.
"""
def conectar_banco():
    ##Solicitado ao Renan qual seria o servido e o respectivo login e senha    
    try:
        conexao = psycopg2.connect(
            user = "postgres",
            password = "postgres",
            host = "152.67.55.2",
            port = "5432",
            database = "teste_nti"
        )
        return conexao
    except:
        print("Não foi possível conectar ao banco de dados.")

#print(conectar_banco())

"""
Função responsável por inserir as informações no banco de dados.

@param dados (json()): como parâmetro é necessário passar um json
"""
def inserir(dados):
    conexao = conectar_banco()
    cursor = conexao.cursor()
    nome = dados['nome']
    cidade = dados['municipio']
    estado = dados['uf']
    cnpj = dados['cnpj']
    print("estado:", estado)

    try:       
        sql_insert = f"INSERT INTO filiais_alfa(nome, cnpj, cidade, estado) VALUES ('{nome}', '{cnpj}', '{cidade}', '{estado}')"
        print("resultado: ", sql_insert)
        cursor.execute(sql_insert, conexao)
        conexao.commit() 
        print("Dados inseridos com sucesso!")
    except Exception as error:
        print("Não foi possível realizar a inserção de dados.", error)
    finally:
        conexao.close()
        cursor.close()
        print("Conexão encerrada com sucesso")


dados = consumir_api(82110818000121)
#print(dados['nome'])
inserir(dados)

"""
Função responsável por buscar todas o nome de todas filiais e os seus estados
"""
def buscar():
    conexao = conectar_banco()
    cursor = conexao.cursor()
    
    try:       
        query = ("""SELECT nome, estado FROM filiais_alfa f """)
        cursor.execute(query)
        for(nome, estado) in cursor:
            print(nome, "-",estado)
        
    except Exception as error:
        print("Não foi possível realizar a inserção de dados.", error)
    finally:
        conexao.close()
        cursor.close()
        print("Conexão encerrada com sucesso")


dados = consumir_api(82110818000121)
#print(dados['nome'])
buscar()
