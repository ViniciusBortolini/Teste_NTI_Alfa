/*
1- Crie uma tabela no banco de dados para armazenar o cadastro das filiais da Alfa
Transportes. Na tabela, deverão ser armazenados os seguintes dados:
-código (numérico autoincremento)
-cnpj
-nome
-cidade
-estado
*/
create table filiais_alfa(
    codigo serial primary key,
    nome varchar(100) not null,
    cnpj varchar(18) not null,
    cidade varchar(50) not null,
    estado varchar(2) not null
);

/*
2- Insira os dados abaixo na tabela de filiais
*/
INSERT INTO filiais_alfa (nome, cnpj, cidade, estado)
VALUES
('ALFA TRANSPORTES LTDA', '82110818000121', 'Caçador', 'SC'),
('ALFA TRANSPORTES LTDA', '82110818000202', 'Curitiba', 'PR'),
('ALFA TRANSPORTES LTDA', '82110818000393', 'Guarulhos', 'SP'),
('ALFA TRANSPORTES LTDA', '82110818001608', 'Betim', 'MG'),
('ALFA TRANSPORTES LTDA', '82110818000806', 'Cachoeirinha', 'RS'),
('ALFA TRANSPORTES LTDA', '82110818002760', 'Tres Lagoas', 'MS'),
('ALFA TRANSPORTES LTDA', '82110818002094', 'Goiania', 'GO'),
('ALFA TRANSPORTES LTDA', '82110818002507', 'Serra', 'ES'),
('ALFA TRANSPORTES LTDA', '82110818002841', 'Rio de Janeiro', 'RJ');

/*Verificar se o insert foi realizado com sucesso*/
select * from filiais_alfa;


/*Criar tabela departamentos*/

/*
3 - Crie uma tabela para armazenar o cadastro dos departamentos de cada filial. Nesta tabela,
deverão ser armazenados os seguintes dados:
-código (numérico autoincremento, chave primária)
-nome do departamento
-código da filial (chave estrangeira)
*/
CREATE TABLE departamentos(
    codigo serial primary key,
    nome varchar(50) not null,
    codigo_filial integer not null references filiais_alfa(codigo)
);

/*
4- Para cada filial, insira os seguintes departamentos
-Expedição
-SAC
-Operacional
-Administrativo
-Gerência
*/
INSERT INTO departamentos (nome, codigo_filial)
VALUES
('Expedição', 1),
('SAC', 1),
('Operacional', 1),
('Administrativo', 1),
('Gerência', 1),
('Expedição', 2),
('SAC', 2),
('Operacional', 2),
('Administrativo', 2),
('Gerência', 2),
('Expedição', 3),
('SAC', 3),
('Operacional', 3),
('Administrativo', 3),
('Gerência', 3),
('Expedição', 4),
('SAC', 4),
('Operacional', 4),
('Administrativo', 4),
('Gerência', 4),
('Expedição', 5),
('SAC', 5),
('Operacional', 5),
('Administrativo', 5),
('Gerência', 5),
('Expedição', 6),
('SAC', 6),
('Operacional', 6),
('Administrativo', 6),
('Gerência', 6),
('Expedição', 7),
('SAC', 7),
('Operacional', 7),
('Administrativo', 7),
('Gerência', 7),
('Expedição', 8),
('SAC', 8),
('Operacional', 8),
('Administrativo', 8),
('Gerência', 8),
('Expedição', 9),
('SAC', 9),
('Operacional', 9),
('Administrativo', 9),
('Gerência', 9);

/*
5- Crie uma tabela para armazenar os colaboradores. O colaborador deve ter os dados abaixo:
-CPF (chave primária)
*/
create table colaboradores(
    cpf varchar(11) primary key,
    nome varchar(200) not null,
    genero varchar(1) not null CHECK (genero in ('M', 'F')),
    data_admissao date not null,
    salario numeric(10,2) not null,
    codigo_departamento integer not null references departamentos(codigo)
);


/*
6- Insira pelo menos 3 colaboradores para cada filial
*/
insert into colaboradores (cpf, nome, genero, data_admissao, salario, codigo_departamento)
values 
('00000000001', 'Vinicius Bortolini', 'M', '2024-01-18', 4200.00, 1),
('00000000002', 'Matheus Fernandes', 'M', '2022-03-22', 2000.00, 2),
('00000000003', 'Matheus Souza', 'M', '2021-04-23', 6000.50, 3),
('00000000004', 'Julia Godoy', 'F', '2020-05-12', 7000.00, 6),
('00000000005', 'Fernanda Silva', 'F', '2019-05-13', 8000.00, 7),
('00000000006', 'Anthony Cruz', 'M', '2018-05-14', 5000.00, 8),
('00000000007', 'Guilherme Pereira', 'M', '2017-05-15', 4500.00, 11),
('00000000008', 'Maria Lucia Lemos', 'F', '2016-05-16', 4600.00, 12),
('00000000009', 'Nayara Lisboa', 'F', '2015-05-17', 4700.00, 13),
('00000000010', 'Nicolas Lopes', 'M', '2020-05-17', 4900.00, 16),
('00000000011', 'Naiara Souva', 'F', '2021-05-18', 3000.00, 17),
('00000000012', 'Eduardo Vidal', 'M', '2022-05-19', 3500.00, 18),
('00000000013', 'Maria Godoy', 'F', '2020-03-22',  3400.00, 23),
('00000000014', 'Lucas Godoy', 'M', '2021-03-24', 3200.00, 24),
('00000000015', 'Bernardo Silva', 'M', '2022-03-28', 3100.00, 25),
('00000000016', 'Cristiano Souza', 'M', '2023-04-22', 3300.00, 26),
('00000000017', 'Ronaldo Pereira', 'M', '2023-04-24', 3400.00, 27),
('00000000018', 'Leonardo Godoy', 'M', '2023-04-28', 3600.00, 28),
('00000000019', 'Juliana Pereira', 'F', '2023-07-21', 3700.00, 33),
('00000000020', 'Maria Eduarda Godoy', 'F', '2022-07-22', 3800.00, 34),
('00000000021', 'Maria Joaquina Godoy', 'F', '2021-07-23', 3900.00, 35),
('00000000022', 'Maria Clara Godoy', 'F', '2020-08-24', 4900.00, 36),
('00000000023', 'Maria Fernandes Godoy', 'F', '2019-09-24', 4800.00, 37),
('00000000024', 'Lucas da Silva', 'M', '2018-10-25', 4550.00, 38),
('00000000025', 'Renan Souza', 'M', '2013-11-21', 4500.00, 43),
('00000000026', 'Barbara Lemos', 'F', '2010-12-12', 4500.00, 44),
('00000000027', 'Joaquim Almeida', 'M', '2015-10-20', 4500.00, 45);


/*
7- Crie uma consulta SQL que liste todos os colaboradores da empresa. A consulta deve trazer
as seguintes colunas: -CPF do colaborador -Nome -Cidade da Filial -Nome do Departamento
Obs.: O resultado deve ser ordenado pelo código da filial + nome do colaborador
*/
select c.cpf as "CPF", c.nome as "Nome Colaborador", f.cidade as "Cidade da Filial", d.nome as "Nome Departamento" from
departamentos d
join filiais_alfa f on f.codigo = d.codigo_filial
join colaboradores c on c.codigo_departamento = d.codigo
order by d.codigo_filial, c.nome; 

/*
8- Crie uma consulta SQL que liste os 5 colaboradores mais antigos da empresa. A consulta
deve trazer as seguintes colunas:
-CPF do colaborador
-Nome -Data de Admissão
-Cidade da Filial que o colaborador pertence
Obs.: O resultado deve ser ordenado pela data de admissão mais antiga para mais recente
*/

select c.cpf as "CPF", c.nome as "Nome Colaborador", c.data_admissao as "Data de Admissão", f.cidade as "Cidade da Filial" from departamentos d
join filiais_alfa f on f.codigo = d.codigo_filial
join colaboradores c on c.codigo_departamento = d.codigo
order by c.data_admissao asc limit 5;

/*
9- Crie uma consulta SQL que liste a quantidade de colaboradores por filial. A consulta deve
trazer as seguintes colunas:
-Código da Filial
-Cidade-Quantidade de Colaboradores
*/

select f.codigo as "Código Filial", f.cidade as "Cidade", count(f.codigo) as "Quantidade de Colaboradores" from departamentos d
join filiais_alfa f on f.codigo = d.codigo_filial
join colaboradores c on c.codigo_departamento = d.codigo
group by f.codigo;

/*
Incluindo novos 3 colaboradores para validar a query
*/
insert into colaboradores (cpf, nome, genero, data_admissao, salario, codigo_departamento)
values 
('00000000028', 'Vinicius Locatelli', 'M', '2019-01-18', 4200.00, 1),
('00000000029', 'Arthur Locatelli', 'M', '2019-01-18', 4200.00, 1),
('00000000030', 'Maria Almeida', 'F', '2020-10-20', 4500.00, 45);


/*
10- Crie uma consulta SQL que liste a média salarial por departamento de toda a empresa. A
consulta deve trazer as seguintes colunas:
-Código do Departamento
-Nome do Departamento
-Média Salaria
*/

select d.codigo as "Código Departamento", d.nome as "Nome Departamento", avg(c.salario) as "Média Salarial" from departamentos d
join filiais_alfa f on f.codigo = d.codigo_filial
join colaboradores c on c.codigo_departamento = d.codigo
group by d.codigo;



