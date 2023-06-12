CREATE DATABASE Valorant;
USE Valorant;


CREATE TABLE classes(
idClasse INT PRIMARY KEY AUTO_INCREMENT,
Classe VARCHAR(30)
);

INSERT INTO classes VALUES 
	(NULL , 'Duelista'),
	(NULL , 'Iniciador'),
	(NULL , 'Controlador'),
	(NULL , 'Sentinela');
    
SELECT * FROM classes;


CREATE TABLE cadastro (
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
Username VARCHAR(40),
email VARCHAR(100),
senha VARCHAR(50),
fkClasse INT,
CONSTRAINT fkCla FOREIGN KEY (fkClasse)
REFERENCES classes (idClasse)
);

SELECT * FROM cadastro;

INSERT INTO cadastro VALUES
	(NULL , 'teste5' , 'teste3@email.com', '123', 3),
	(NULL , 'eu' , 'eu@email.com', '123', 1),
	(NULL , 'teste' , 'teste@email.com', '123', 2),
	(NULL , 'saas' , 'saas@email.com', '123', 3),
	(NULL , 'suus' , 'suus@email.com', '123', 4),
	(NULL , 'siis' , 'siis@email.com', '123', 2);
    
 
 SELECT COUNT(cadastro.fkClasse) AS Likes, classes.Classe AS Classes FROM cadastro
JOIN classes ON cadastro.fkClasse = classes.idClasse GROUP BY cadastro.fkClasse ORDER BY Likes DESC; 

select count(fkClasse) as Votos, Classe as Classe from Cadastro
JOIN classes ON fkClasse = idClasse group by fkClasse;