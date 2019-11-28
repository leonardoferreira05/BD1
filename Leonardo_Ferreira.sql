CREATE DATABASE logistica;
USE logistica;

CREATE TABLE fornecedor(
cod_forn VARCHAR(10) PRIMARY KEY,
nome_forn VARCHAR(50) NOT NULL,
estatus INT,
cidade VARCHAR(40) );

CREATE TABLE peca(
cod_peca VARCHAR(10) PRIMARY KEY,
nome_peca VARCHAR(50) NOT NULL,
cor VARCHAR(15) );

CREATE TABLE embarque(
cod_forn_e VARCHAR(10) ,
cod_peca_e VARCHAR(10),
quantidade INT,
FOREIGN KEY(cod_forn_e) REFERENCES fornecedor(cod_forn),
FOREIGN KEY(cod_peca_e) REFERENCES peca(cod_peca),
PRIMARY KEY(cod_forn_e,cod_peca_e) );
 
 INSERT INTO fornecedor VALUES
 ('F1','PAVAN',20,'JUIZ DE FORA'),
 ('F2','ABC',10,'RIO DE JANEIRO'),
 ('F3','TUCANO',30,'RIO DE JANEIRO'),
 ('F4','MATIASE',20,'JUIZ DE FORA'),
 ('F5','RODOPAZ',30,'SAO PAULO');
 
 INSERT INTO peca VALUES
 ('P1','PARAFUSO','PRETA'),
 ('P2','PORCA','AZUL'),
 ('P3','ARRUELA','BRANCA'),
 ('P4','PREGO','PRETA'),
 ('P5','CANO','VERDE'),
 ('P6','FIO','AZUL');
 
 INSERT INTO embarque VALUES
 ('F1','P1',300),
 ('F1','P2',200),
 ('F1','P3',400),
 ('F1','P4',200),
 ('F1','P5',100),
 ('F1','P6',100),
 ('F2','P1',300),
 ('F2','P2',300),
 ('F3','P2',200),
 ('F4','P2',200),
 ('F4','P4',300),
 ('F4','P5',400);
 
/*A)*/  SELECT DISTINCT cod_peca_e FROM embarque;
/*B)*/ SELECT cod_forn  FROM fornecedor WHERE cidade="RIO DE JANEIRO" AND estatus>20;
/*C)*/SELECT nome_forn FROM fornecedor,embarque WHERE cod_forn=cod_forn_e AND cod_peca_e="P2";
/*D)*/SELECT cod_forn,estatus FROM fornecedor WHERE cidade="RIO DE JANEIRO" ORDER BY estatus DESC;
/*E)*/ SELECT nome_peca FROM peca WHERE nome_peca LIKE'P%';
/*F)*/ SELECT nome_forn,cidade FROM fornecedor ORDER BY nome_forn;
/*G)*/ SELECT nome_forn,nome_peca FROM fornecedor,peca,embarque WHERE cod_forn=cod_forn_e AND cod_peca=cod_peca_e AND quantidade=400;
 
 
 
 
 
 






