drop database dbprodutos;
 
create database dbprodutos;
 
use dbprodutos;
 
 
CREATE TABLE PRODUTOS 
( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2) 
);
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

select * from PRODUTOS;


select NOME,VALOR from PRODUTOS;



select nome as "Nome", codigo as "Código" from PRODUTOS;



select nome,tipo from produtos where valor <=150;


select * from PRODUTOS where QUANTIDADE >= 300 and valor <= 50;

select * from PRODUTOS where QUANTIDADE >= 300 or valor <= 50;

select * from PRODUTOS where tipo in('INFORMATICA','TELEFONE');

select * from PRODUTOS where tipo not in('INFORMATICA','TELEFONE');

select * from produtos where valor between 200 and 600;

select * from produtos where valor not between 200 and 600;

select * from PRODUTOS where codigo = 5;


select * from produtos where nome like '%o';

select * from produtos where nome like '%a%' or tipo = 'Informatica';

select * from produtos where nome not like '%a%' or tipo = 'Informatica';


select valor * 1.2 as 'Valor' from produtos where nome like 'F%'; 

select valor from produtos where nome like 'F%';


update produtos set valor = valor * 1.12 where nome like 'F%';
select nome,valor from produtos where nome like 'F%';	

update produtos set quantidade = quantidade + 50 where valor>400 and valor<600;
select * from produtos where valor>400 and valor<600;	