mysql -h localhost -u root -p
       // local // user  // password

------------------- COMANDOS -------------------

SHOW DATABASES;
// Mostrar banco de dados

CREATE DATABASE testeDeBanco;
// Criar banco de dados

USE testeDeBanco;
// Acessar banco de dados;

SHOW TABLES;
// Mostrar tabelas

DESCRIBE users;
// Mostra estrutura da tabela 'users'

------------------- TRABALHANDO COM TABELAS -------------------

// Criar tabela com nome 'users', suas colunas e definindo atributo dos dados
CREATE TABLE users(
       name VARCHAR(50),
       email VARCHAR(100),
       age INT
);

// Adicionando dados 
INSERT INTO users(name, email, age) VALUES (
       "Lizzy",
       "lili@gmail.com",
       5
);

// Listando dados da tabela
      //all
SELECT * FROM users;

                     //condição
SELECT * FROM users WHERE age >= 5;
SELECT * FROM users WHERE name = "Moonlight";

------------------- DELETANDO E EDITANDO DADOS -------------------

// Limpar a tabela
DELETE FROM users 

// Deletar dados especificos
DELETE FROM users WHERE name = "Adriana Saito";

// Atualizando dados especificos
         //campo a ser alterado        // condição!!
UPDATE users SET name = "Moonzinho" WHERE name = "Moonlight";
UPDATE users SET name = "Lalinha", email = "lala@teste.com" WHERE name = "Layka";