CREATE DATABASE avoltadoplanetaalien;
USE avoltadoplanetaalien;

CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);


truncate verbo;


select * from verbo;



insert into verbo(nomeverbo) values("Relembrar");
insert into verbo(nomeverbo) values("Utilizar");
insert into verbo(nomeverbo) values("Modificar");
insert into verbo(nomeverbo) values("Resolver");
insert into verbo(nomeverbo) values("Delimitar");
insert into verbo(nomeverbo) values("Produzir");
insert into verbo(nomeverbo) values("Traçar");
insert into verbo(nomeverbo) values("Explicar");
insert into verbo(nomeverbo) values("Selecionar");
insert into verbo(nomeverbo) values ("Listar"),("Reconhocer"),("Indentifcar"),("Localizar"),("Descrever"),("Citar"),("Esquematizar"),("Relacionar"),("Demosntar"),("Parafrasear"),("Assosiar"),("Utilizar"),("Modificar"),("Experimentar"),("Calcular"),("Classificar"),("Resolver"),("Categorizar"),("Comparar"),("Integrar"),("Investigar"),("Defender"),("Delimitar"),("Estimar"),("Selecionar"),("Justificar"),("Explicar"),("Elaborar"),("Desenhar"),("Produzir"),("Prototipar"),("Idear"),("Inventar");


CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(40)
);

select * from bloom;

alter table bloom drop column nome;

alter table bloom add column nome varchar(40);

delete from bloom where id = 2;

update bloom set id = 2
where id = 13;

select  verbo.nomeverbo,bloom.nome
from verbo
inner join bloom on verbo.id = bloom.id;

select * from verbo
inner join bloom on verbo.fk_bloom_id= bloom.id;

select* from verbo;


insert into bloom(nome) values ("MEMORIZAR");
insert into bloom(nome) values ("COMPREEDER");
insert into bloom(nome) values ("APLICAR");
insert into bloom(nome) values ("ANALISAR");
insert into bloom(nome) values ("AVALIAR");
insert into bloom(nome) values ("CRIAR");



CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(200)
);

select * from historia;


INSERT INTO  historia VALUES(
	"","História do Jogo – Planeta Alien (A Revolta do Furão)","No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens. A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.","Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz."
);


CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);

select* from competencia;


truncate competencia;

delete from competencia where id = 1;

update bloom set id = 1
where id = 2;

insert into competencia(descricao) 
values ("1. Encontrar Tags (força nível 1)
         a. O furão deve encontrar as principais “tags html” para matar um inimigo.
		 2. Encontrar “Selectores” (força nível 2)
         a. O furão deve utilizar os selectores para assim conseguir elevar o nivel.
		 3. Encontrar “Scripts” (força nível 3)
         a. O furão deve produzir scripts para assim hackar as cameras da nave.
		 4. Encontrar “Exceptions” (força nível 4)
         a. O furão deve modificar as exceptions para passar pelas barreras de proteão. 
		 5. Encontrar “Conditions” (força nível 5)
         a. O furão deve relacionar Conditions com o ntigo codigo do aliens.
		 6. Encontrar “Loops” (força nível 6)
         a. O furão deve Esquematizar Loops para conseguir enganar as cameras depois de hackar.
		 7. Encontrar “Arrays” (força nível 7)
         a. O furão deve Localizar Arrays para saber onde se tem armazenado as senhas do controle.
		 8. Encontrar “Functions” (força nível 8)
         a. O furão deve Inventar Functions para conseguir utilizaro doom como golpe final.
		 9. Encontrar “Objects” (força nível 9)
         a. O furão deve Categorizar Objects para assim percebe onde e quando foi armazenado as senhas.
		 10. Encontrar “Databases” (força nível 10)
         a. O furão deve Investigar o DataBase para assim recuperar o controle e salvar a todos seus amigos");

CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

truncate etapa;
 
select * from etapa;

drop table etapa;

insert into etapa(instrucao,ponto,tipo) values 
("Encontrar Tags",1,"H"),
("Encontrar “Selectores”",2,"H"),
("Encontrar “Scripts”", 3,"H"),
("Encontrar “Exceptions” ", 4,"H"),
("Encontrar “Conditions” ", 5,"H"),
("Encontrar “Loops” ", 6,"H"),
("Encontrar “Arrays”", 7,"H"),
("Encontrar “Functions”",8,"H"),
(" Encontrar “Objects”",9,"H"),
("Encontrar “Databases”", 10,"H");

CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);

select missao.titulo,missao.forca,competencia.descricao
from missao
inner join competencia on missao.id = competencia.id;


select * from missao
inner join competencia on missao.id = competencia.id = etapa.id;

select  verbo.nomeverbo,bloom.nome
from verbo
inner join bloom on verbo.id = bloom.id;


select*from missao;

insert into missao(titulo,forca) values
("Encontrar Tags",1),
("Encontrar “Selectores”",2),
("Encontrar “Scripts”",3),
("Encontrar “Exceptions”",4),
("Encontrar “Conditions",5),
("Encontrar “Loops”",6),
("Encontrar “Arrays”",7),
("Encontrar “Functions”",8),
("Encontrar “Objects”",9),
("Encontrar “Databases”",10);

CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);

ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;

ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;

ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;

ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;

ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;

ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;

ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;