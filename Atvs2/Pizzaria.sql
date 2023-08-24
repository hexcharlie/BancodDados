create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id int primary key auto_increment,
categoria varchar(255),
descricao varchar(255)
);

create table tb_pizzas(
id_pizza int auto_increment,
sabor varchar(255) primary key,
valor decimal(6,2),
tamanho varchar(255),
borda varchar(255),
foreign key(id_pizza) references tb_categorias(id)
);

insert into tb_categorias(categoria,descricao)
values
("Tradicional","pizzas salgadas"),
("Sobremesa","pizzas doces"),
("Vegetariana","pizzas sem carne vermelha"),
("Vegana","pizzas sem produtos de origem animal"),
("Meio a Meio","pizzas com dois sabores diferentes");

insert into tb_pizzas(sabor,valor,tamanho,borda,id_pizza)
values
("Pepperoni",50.00,"grande","catupiry",1),
("Quatro Queijos",45.00,"grande","mussarela",1),
("Romeu e Julieta",60.00,"pequena","goiabada",2),
("Chocolate",55.00,"media","creme de baunilha",2),
("Margherita",30.00,"grande","mussarela",3),
("Abobrinha",35.00,"grande","queijo feta",3),
(" Legumes Grelhados",70.00,"grande","sem borda",4),
("Calabresa e Mussarela",30.00,"grande","catupiry",5);

select * from tb_pizzas;

select * from tb_pizzas where valor >45.00;
select * from tb_pizzas where valor between 50.00 and 100.00;
select * from tb_pizzas where sabor like "%m%";

select sabor,valor,tamanho,borda,id_pizza from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.id_pizza;
select sabor,valor,tamanho,borda,id_pizza from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.id_pizza where tb_categorias.categoria = "Tradicional";









