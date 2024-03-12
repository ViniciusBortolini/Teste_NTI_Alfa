Teste Técnico realizado para Analista de Sistemas na empresa Alfa Transportes Matriz Caçador.

O teste foi realizado inicialmente através de comandos DDL e DML, os quais correspondem aos exercícios abaixo do número 1 ao 10. O arquivo SQL_Vinicius.sql contém todos os comandos DDL e DML que desenvolvi para resolução do teste.
A parte final do teste corresponde a criação de um programa em Python  utilizando a biblioteca Request para consultar os dados da API e popular no banco criado anteriormente. O enunciado deste exercício corresponde a questão bonus. Além do exercício proposto, desenvolvi também uma função para realizar a busca das filiais populadas no banco. O arquivo Codigo_Vinicius.py contém todo o programa desenvolvido para a questão bonus.

1- Crie uma tabela no banco de dados para armazenar o cadastro das filiais da Alfa
Transportes. Na tabela, deverão ser armazenados os seguintes dados:
-código (numérico autoincremento)
-cnpj
-nome
-cidade
-estado

2- Insira os dados abaixo na tabela de filiais
CNPJ 82110818000121
NOME ALFA TRANSPORTES LTDA
CIDADE Caçador
ESTADO SC
CNPJ 82110818000202
NOME ALFA TRANSPORTES LTDA
CIDADE Curitiba
ESTADO PR
CNPJ 82110818000393
NOME ALFA TRANSPORTES LTDA
CIDADE Guarulhos
ESTADO SP
CNPJ 82110818001608
NOME ALFA TRANSPORTES LTDA
CIDADE Betim
ESTADO MG
CNPJ 82110818000806
NOME ALFA TRANSPORTES LTDA
CIDADE Cachoeirinha
ESTADO RS
CNPJ 82110818002760
NOME ALFA TRANSPORTES LTDA
CIDADE Tres Lagoas
ESTADO MS
CNPJ 82110818002094
NOME ALFA TRANSPORTES LTDA
CIDADE Goiania
ESTADO GO
CNPJ 82110818002507
NOME ALFA TRANSPORTES LTDA
CIDADE Serra
ESTADO ES
CNPJ 82110818002841
NOME ALFA TRANSPORTES LTDA
CIDADE Rio de Janeiro
ESTADO RJ

3 - Crie uma tabela para armazenar o cadastro dos departamentos de cada filial. Nesta tabela,
deverão ser armazenados os seguintes dados:
-código (numérico autoincremento, chave primária)
-nome do departamento
-código da filial (chave estrangeira)

4- Para cada filial, insira os seguintes departamentos
-Expedição
-SAC
-Operacional
-Administrativo
-Gerência

5- Crie uma tabela para armazenar os colaboradores. O colaborador deve ter os dados abaixo:
-CPF (chave primária)
-Nome
-Gênero(M ou F)
-Data de Admissão
-Salário
-Código do departamento o qual pertence

6- Insira pelo menos 3 colaboradores para cada filial

7- Crie uma consulta SQL que liste todos os colaboradores da empresa. A consulta deve trazer
as seguintes colunas: -CPF do colaborador -Nome -Cidade da Filial -Nome do Departamento
Obs.: O resultado deve ser ordenado pelo código da filial + nome do colaborador

8- Crie uma consulta SQL que liste os 5 colaboradores mais antigos da empresa. A consulta
deve trazer as seguintes colunas:
-CPF do colaborador
-Nome -Data de Admissão
-Cidade da Filial que o colaborador pertence
Obs.: O resultado deve ser ordenado pela data de admissão mais antiga para mais recente

9- Crie uma consulta SQL que liste a quantidade de colaboradores por filial. A consulta deve
trazer as seguintes colunas:
-Código da Filial
-Cidade
-Quantidade de Colaboradores

10- Crie uma consulta SQL que liste a média salarial por departamento de toda a empresa. A
consulta deve trazer as seguintes colunas:
-Código do Departamento
-Nome do Departamento
-Média Salarial

DESAFIO BÔNUS
Crie um programa em Python, que utilize a biblioteca requests para consultar os dados das
filiais da Alfa Transportes listadas acima e popular automaticamente a tabela de filiais,
buscando os dados na API ReceitaWS. Link para Documentação da API:
https://receitaws.com.br/api Link para Documentação da biblioteca Requests:
https://docs.python-requests.org/en/latest/
