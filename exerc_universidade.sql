CREATE DATABASE universidade;
USE universidade;
CREATE TABLE alunos(
mat INT PRIMARY KEY,
nome VARCHAR(50),
endereco VARCHAR(60),
cidade VARCHAR(35)
);	

CREATE TABLE disciplinas(
cod_disc VARCHAR(10) PRIMARY KEY,
nome_disc VARCHAR(65),
carga_hor INT
);

CREATE TABLE professores(
cod_prof INT PRIMARY KEY,
nome VARCHAR(55),
endereco VARCHAR(50),
cidade VARCHAR(40)
);

CREATE TABLE turma(
cod_turma INT ,
cod_disc VARCHAR(10),
cod_prof INT,
ano INT,
horario VARCHAR(15),
FOREIGN KEY(cod_disc) REFERENCES disciplinas(cod_disc),
FOREIGN KEY(cod_prof) REFERENCES professores(cod_prof)
); 

CREATE TABLE historico(
mat INT,
cod_disc VARCHAR(10), 
cod_turma INT,
cod_prof INT,
ano INT,
frequencia VARCHAR(30),
nota DOUBLE,
FOREIGN KEY(mat) REFERENCES alunos(mat),
FOREIGN KEY(cod_disc) REFERENCES turma(cod_disc),
FOREIGN KEY(cod_turma) REFERENCES turma(cod_turma),
FOREIGN KEY(cod_prof) REFERENCES turma(cod_prof)
); 


INSERT INTO alunos(mat,nome,endereco,cidade) VALUES
(2015010101,'JOSE DE ALENCAR','RUA DAS ALMAS','NATAL'),
(2015010102,'JOÃO JOSÉ','AVENIDA RUY CARNEIRO','JOÃO PESSOA'),
(2015010103,'MARIA JOAQUINA', 'RUA CARROSSEL','RECIFE'),
(2015010104,'MARIA DAS DORES','RUA DAS LADEIRAS','FORTALEZA'),
(2015010105,'JOSE CLAUDINO DOS SANTOS','CENTRO','NATAL'),
(2015010106,'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO','NATAL');

INSERT INTO disciplinas VALUES
('BD','BANCO DE DADOS',100),
('POO','PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS',100),
('WEB','AUTORIA WEB',50),
('ENG','ENGENHARIA DE SOFTWARE',80);


 INSERT INTO professores(cod_prof,nome,endereco,cidade) VALUES
 (212131,'NICKERSON FERREIRA','RUA MANAÍRA','JOÃO PESSOA'),
 (122135,'ADORILSON BEZERRA','AVENIDA SALGADO FILHO','NATAL'),
 (192011,'DIEGO OLIVEIRA','AVENIDA ROBERTO FREIRE','NATAL');
 
 INSERT INTO turma(cod_turma,cod_disc,cod_prof,ano,horario) VALUES
 (1,'BD',212131,2015,'11H-12H'),
 (2,'BD',212131,2015,'13H-14H'),
 (1,'POO',192011,2015,'07H-08H'),
 (1,'WEB',122135,2015,'07H-08H'),
 (1,'ENG',122135,2015,'10H-11H');
 select * from alunos;
select * from disciplinas;
select * from professores;
select * from turma;
select * from historico;

