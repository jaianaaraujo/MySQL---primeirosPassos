CREATE SCHEMA `base_de_dados`;

USE  `base_de_dados`;

-- CRIANDO  TABELA
CREATE TABLE  `base_de_dados`
( `user_id` INT NOT NULL AUTO_INCREMENT,
   `first_name`          VARCHAR(100) NULL,
   `last_name`           VARCHAR(100) NULL,
   `email`               VARCHAR(100) NULL,
   `password_hash`       VARCHAR(100) NULL,
   PRIMARY KEY (`user_id`)
);

-- EXCLUINDO TABELA
DROP TABLE `base_de_dados`;

-- CRIANDO TABELA 
CREATE TABLE  `users`
( `user_id` INT NOT NULL AUTO_INCREMENT,
   `first_name`          VARCHAR(100) NULL,
   `last_name`           VARCHAR(100) NULL,
   `email`               VARCHAR(100) NULL,
   `password_hash`       VARCHAR(100) NULL,
   PRIMARY KEY (`user_id`)  -- no final sempre colocamos a primary key 
);

-- CRIANDO TABELA

CREATE TABLE `roles`
(`role_id` INT NOT NULL AUTO_INCREMENT,
   `name`          VARCHAR(100) NULL,
   PRIMARY KEY (`role_id`) -- no final sempre colocamos a primary key 
   );
   
   
-- CRIANDO TABELAS 

CREATE TABLE `profiles`
(`profile_id` INT NOT NULL AUTO_INCREMENT,
`bio`                 VARCHAR(100) NULL,
`description`         VARCHAR(100) NULL,
`user_id`             INT NULL,
PRIMARY KEY (`profile_id`), -- no final sempre colocamos a primary key 
CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES  `base_de_dados`.`users`(`user_id`) -- CONSTRAINT: digo que estou criand uma regra, ou seja, que terá uma chave estrangeira
                                                                                            -- FOREIGN KEY: Eu digo que nessa tabela atual, terá essa FOREIGN KEY 
                                                                                            -- REFERENCES: Eu tenho que referenciar onde está a chave primária desta chave estarangeira
);

CREATE TABLE `users_roles`
(`user_role_id`    INT NOT NULL AUTO_INCREMENT,
`user_id`             INT NULL,
`role_id`           INT NULL,
PRIMARY KEY (`user_role_id`),
CONSTRAINT  `FKuser_id`FOREIGN KEY (`user_id`) REFERENCES  `base_de_dados`.`users`(`user_id`),
CONSTRAINT `FKrole_id` FOREIGN KEY (`role_id`) REFERENCES `base_de_dados`.`roles`(`role_id`)
);


-- CRIANDO UMA NOVA COLUNA 
ALTER TABLE `base_de_dados`.`users` ADD `created_at`  DATETIME DEFAULT NOW() NOT NULL; -- Para registrar a data e hora que foi criado
																					-- A função NOW() vai  criar a data e hora do registro atual


-- CRIANDO UMA NOVA COLUNA 
ALTER TABLE `base_de_dados`.`users` ADD `update_at` DATETIME DEFAULT now() NOT NULL;
																					-- A função NOW() vai  criar a data e hora do registro atual

-- EXCLUINDO UMA NOVA COLUNA 
ALTER TABLE   `base_de_dados`.`users`  DROP COLUMN `created_at`;






