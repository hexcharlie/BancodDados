create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
id int primary key auto_increment,
classe varchar(255) not null,
raca varchar(255) not null
);

insert into tb_classes(classe,raca)
values 
("Mago","Anão"),
("Guerreiro","Elfo"),
("Ladrão","Orc"),
("Ladino","Humano"),
("Paladino","Elfo Negro");

select * from tb_classes;

create table tb_personagens(
nome varchar(255)primary key,
combate varchar(255),
reino varchar(255),
arma varchar(255),
atqespecial varchar(255),
class_id int auto_increment,
foreign key(class_id) references tb_classes(id)
);

ALTER TABLE tb_personagens ADD atq bigint;
ALTER TABLE tb_personagens ADD dfs bigint;


insert into tb_personagens(nome,combate,reino,arma,atqespecial,atq,dfs,class_id)
values
("Elandria","Corpo-a-Corpo","Eldoria","Espada","Dança das Lâminas",2000,1500,2),
("Thorgar","Curta Distancia","Arandor","Besta","Flecha Flamejante",1500,3000,4),
("Sylas","Longa Distancia","Eldoria","Estilingue","Impacto Sísmico",3500,1000,3),
("Lyra","Magia","Sylvaria","Cajado","Explosão Etérea",4000,500,2),
("Kaelin","Corpo-a-Corpo","Eldoria","Espada","Lâmina Sombria",2000,1000,1),
("Isolde","Curta Distancia","Arandor","Besta","Golpe Relâmpago",4000,500,5),
("Draven","Longa Distancia","Eldoria","Arco","Invocação de Espíritos",1200,3000,2),
("Seraphina","Corpo-a-Corpo","Arandor","Espada","Dança das Lâminas",7000,200,1);
select * from tb_personagens;

select * from tb_personagens where atq >2000;
select * from tb_personagens where dfs between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

select nome,combate,reino,arma,atqespecial,atq,dfs,class_id from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.class_id;
select nome,combate,reino,arma,atqespecial,atq,dfs,class_id from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.class_id where tb_classes.raca = "Elfo";






