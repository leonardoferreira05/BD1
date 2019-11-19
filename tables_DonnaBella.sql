CREATE DATABASE beladona;
USE beladona;
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY,
nome_cliente VARCHAR(50) NOT NULL


);

/* FOREIGN KEY(cod_cliente)
REFERENCE
cliente(cod_cliente)

FOREIGN KEY(nome) REFERENCES tabela(atributo);--forma correta

---------------------------------------
CHECK-- CRIAR DOMINIO DO ATRIBUTO 
	cod_dpto INT(4) PRIMARY KEY CHECK
-----------------------------------------
    DEFAULT--
		CPF INT(11) DEFAULT 99999999999;
------------------------------------------        
DOMAIN 
	CREATE DOMAIN cpf
    AS INT(11)
    DEFAULT 99999999999
    
    CREATE DOMAIN nomedominio AS VARCHAR(11) DEFAULT '999 999 999 99';
------------------------------------------
DROP TABLE nome_da_tabela;-- APAGA A TABELA INTEIRA
 DELETE
 TRUNCATE;--APAGA PARTE DA TABELA
 -------------------------------------------
 ON DELETE-- NO MOMENTO QUE EU DELETAR A INFORMAÇAO(TENHO DUAS OPÇÕES)
 CASCADE(+ PERIGOSO,EXCLUI OS REGISTROS DA TABELA FILHA AUTOMATICAMENTE, AO EXCLUIR UM REGISTRO DA TABELA PAI) 
 SET NULL(DEFINE COMO NULL O VALOR DO CAMPO NA TABELA FILHA, AO EXCLUIR O REGISTRO DA TABELA PAI)
 
 
 ON UPDATE CASCADE;
 --------------------------------------------------
 CONSTRAINT--ORGANIZA TUDO EM UM BLOCO SÓ E A PARTIR DAÍ COMEÇA AS RESTRIÇOES DOS DADOS.
 ------------------------------------------------------------
 RECUPERAÇÃO DA INFORMAÇÃO
 SELECT--<LISTA DE ATRIBUTOS>
 FROM--<LISTA DE TABELAS>
  WHERE--<CONDIÇÕES> sem WHERE não da erro em uma tabela, mas em duas tabela pode dar erro.
  EX: SELECT*FROM cliente; --seleciona todos os atributos/colunas da tabela cliente.
  SELECT nome,codcliente FROM cliente;--
   SELECT nome='joao';  seleciona todos os clientes que se chamam JOAO.
  SELECT nome,codcliente FROM cliente WHERE saldo>0;  mostra todos os saldos positivo.
  --------------------------------------------------------------------------------------
  
  ATRIBUTOS DE PROJEÇÃO-- SELECT nome...
  CONDIÇÃO DE SELEÇÃO-- WHERE saldo>10 AND...
  -------------------------------------------------
  BETWEEN
  saldo BETWEEN 0 AND 11;-- DE 1 A 10
  
  
  
  
  
  
    
*/