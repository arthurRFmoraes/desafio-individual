-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE thebeatles;

USE thebeatles;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso(
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(550),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);
CREATE TABLE votacao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    idAlbum VARCHAR(2),
    fkUsuario INT,
    FOREIGN KEY(fkUsuario) REFERENCES usuario(id)
);		
drop table votacao;

INSERT INTO votacao (idAlbum, fkUsuario) VALUES
('1', '1'),
('6', '2'),
('10', '3'),
('4', '4'),
('11', '5'),
('2', '6'),
('8', '7'),
('13', '8'),
('3', '9'),
('5', '10'),
('9', '11'),
('7', '12'),
('12', '13'),
('1', '14'),
('6', '15'),
('10', '16'),
('4', '17'),
('11', '18'),
('2', '19'),
('8', '20'),
('13', '21'),
('3', '22'),
('5', '23'),
('9', '24'),
('7', '25'),
('12', '26'),
('1', '27'),
('6', '28'),
('10', '29'),
('4', '30'),
('11', '31'),
('2', '32'),
('8', '33'),
('13', '34'),
('3', '35'),
('5', '36'),
('9', '37'),
('7', '38'),
('12', '39'),
('1', '40')
;
select * from votacao where fkusuario = 100;
select * from votacao;
SELECT * FROM usuario;
/*
comando para sql server - banco remoto - ambiente de produção
*/

-- CREATE TABLE usuario (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	nome VARCHAR(50),
-- 	email VARCHAR(50),
-- 	senha VARCHAR(50),
-- );

-- CREATE TABLE comentario (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	titulo VARCHAR(100),
-- 	descricao VARCHAR(250),
-- 	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
-- );


/*
comandos para criar usuário em banco de dados azure, sqlserver,
com permissão de insert + update + delete + select
*/

-- CREATE USER [usuarioParaAPIWebDataViz_datawriter_datareader]
-- WITH PASSWORD = '#Gf_senhaParaAPIWebDataViz',
-- DEFAULT_SCHEMA = dbo;

-- EXEC sys.sp_addrolemember @rolename = N'db_datawriter',
-- @membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';

-- EXEC sys.sp_addrolemember @rolename = N'db_datareader',
-- @membername = N'usuarioParaAPIWebDataViz_datawriter_datareader';
INSERT INTO usuario (nome, email, senha) VALUES
('Usuário 1', 'usuario1@gmail.com', 'senha1'),
('Usuário 2', 'usuario2@gmail.com', 'senha2'),
('Usuário 3', 'usuario3@gmail.com', 'senha3'),
('Usuário 4', 'usuario4@gmail.com', 'senha4'),
('Usuário 5', 'usuario5@gmail.com', 'senha5'),
('Usuário 6', 'usuario6@gmail.com', 'senha6'),
('Usuário 7', 'usuario7@gmail.com', 'senha7'),
('Usuário 8', 'usuario8@gmail.com', 'senha8'),
('Usuário 9', 'usuario9@gmail.com', 'senha9'),
('Usuário 10', 'usuario10@gmail.com', 'senha10'),
('Usuário 11', 'usuario11@gmail.com', 'senha11'),
('Usuário 12', 'usuario12@gmail.com', 'senha12'),
('Usuário 13', 'usuario13@gmail.com', 'senha13'),
('Usuário 14', 'usuario14@gmail.com', 'senha14'),
('Usuário 15', 'usuario15@gmail.com', 'senha15'),
('Usuário 16', 'usuario16@gmail.com', 'senha16'),
('Usuário 17', 'usuario17@gmail.com', 'senha17'),
('Usuário 18', 'usuario18@gmail.com', 'senha18'),
('Usuário 19', 'usuario19@gmail.com', 'senha19'),
('Usuário 20', 'usuario20@gmail.com', 'senha20'),
('Usuário 21', 'usuario21@gmail.com', 'senha21'),
('Usuário 22', 'usuario22@gmail.com', 'senha22'),
('Usuário 23', 'usuario23@gmail.com', 'senha23'),
('Usuário 24', 'usuario24@gmail.com', 'senha24'),
('Usuário 25', 'usuario25@gmail.com', 'senha25'),
('Usuário 26', 'usuario26@gmail.com', 'senha26'),
('Usuário 27', 'usuario27@gmail.com', 'senha27'),
('Usuário 28', 'usuario28@gmail.com', 'senha28'),
('Usuário 29', 'usuario29@gmail.com', 'senha29'),
('Usuário 30', 'usuario30@gmail.com', 'senha30'),
('Usuário 31', 'usuario31@gmail.com', 'senha31'),
('Usuário 32', 'usuario32@gmail.com', 'senha32'),
('Usuário 33', 'usuario33@gmail.com', 'senha33'),
('Usuário 34', 'usuario34@gmail.com', 'senha34'),
('Usuário 35', 'usuario35@gmail.com', 'senha35'),
('Usuário 36', 'usuario36@gmail.com', 'senha36'),
('Usuário 37', 'usuario37@gmail.com', 'senha37'),
('Usuário 38', 'usuario38@gmail.com', 'senha38'),
('Usuário 39', 'usuario39@gmail.com', 'senha39'),
('Usuário 40', 'usuario40@gmail.com', 'senha40')
;

