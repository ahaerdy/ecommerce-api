CREATE TABLE cliente (
                         id BIGINT NOT NULL AUTO_INCREMENT,
                         nome VARCHAR(100) NOT NULL,
                         email VARCHAR(100) NOT NULL UNIQUE,
                         cpf VARCHAR(14) NOT NULL UNIQUE,
                         data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
                         PRIMARY KEY (id)
);