create database clinicaBoaSaude;
use clinicaBOASAUDE;
create table paciente(
codpac int auto_increment primary key,
nome varchar(200) not null,
endereco varchar(250),
telefone char(15));

create table medico (
crm int primary key,
nome varchar(200),
especialidade varchar(100),
endereco varchar(250),
telefone char(15));

create table convenio(
codconv int primary key,
nome varchar(200));

insert into paciente(nome,endereco,telefone) values
('Joao','Rua 1', '9809-9756'),
('Jose','Rua B', '3621-8978'),
('Maria','Rua 10', '4567-9872'),
('Joana','Rua J', '3343-9889'),
('Alfredo', 'Rua X', '8989-0383'),
('Joaquim', 'Rua A', '9898-0134'),
('Ana', 'Rua W', '9384-8920'),
('Analice', 'Rua 2', '9834-1123'),
('Caio', 'Av Central', '9849-2313'),
('Eduardo', 'Av Goytacazes', NULL),
('Lourenço', NULL, '8787-3454'),
('Miqueias', 'Av 1', NULL),
('Fabricio', 'Av 2', '7679-0927');

insert into medico(crm,nome,endereco,telefone, especialidade)
values
(18739, 'Elias', 'Rua X','8738-1221','Pediatria'),
(7646, 'Ana', 'Av Z', '7829-1233','Obstetricia'),
(39872,'Pedro','Tv H','9888-2333','Oftalmologia'),
(87568,'Adib',NULL, NULL, 'Cirurgia Plástica'),
(7873,'Eustaquio',NULL, NULL, 'Pediatria'),
(89876,'João Carneiro',NULL, NULL, 'Clínica Geral'),
(32029,'Karla',NULL, NULL,'Dermatologia');

insert into convenio (codconv, nome) values
(189,'Cassi'),
(232,'Unimed'),
(454,'Santa Casa'),
(908,'Copasa'),
(435,'São Lucas');

SELECT nome FROM paciente ORDER BY nome; /*nome dos pacientes em ordem alfabetica*/
SELECT nome FROM paciente ORDER BY nome DESC;/*nome dos pacientes em ordem DECRESCENTE*/

SELECT nome FROM medico ORDER BY nome; /* nome dos medicos em ordem alfabetica*/ 

SELECT nome FROM convenio ORDER BY codconvenio; /*todos convenios ordenados pelo codigo */

SELECT nome, especialidade FROM medico ORDER BY nome;/* O nome dos médicos e sua respectiva especialidade em ordem alfabética*/
SELECT nome, especialidade FROM medico ORDER BY nome AND ORDER BY especialidade; /*caso o medico tenha mais especialidades*/

SELECT nome FROM paciente WHERE endereco='Rua J';/*vai aparecer só Joana QUE MORA NA RUA J*/
SELECT nome FROM paciente WHERE endereco LIKE'%RUAJ';/* TUDO QUE APARECE RUA J*/
SELECT nome FROM paciente WHERE endereco LIKE'%RUAJ';/*TUDO QUE CONTENHA*/

SELECT DISTINCT especialidade FROM medico; /*diferentes especialidades*/


