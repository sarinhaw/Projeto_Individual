create database VS;
use VS;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha char(7)
);

select * from usuario;

create table quiz (
idQuiz int primary key auto_increment,
erros varchar(45),
acertos varchar(45),
dateQuiz DATETIME DEFAULT current_timestamp,
fkUsuario int,
constraint fkUsuario foreign key (fkUsuario)
references usuario(idUsuario)
);

select acertos, erros
        from quiz
			order by idQuiz desc;