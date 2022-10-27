/* 02-Pessoa_cpf: */

CREATE TABLE Pessoa_CPF (
    codigo int(11) PRIMARY KEY,
    nome varchar(50),
    numero_cpf vachar(11),
    status_cpf int(1),
    UNIQUE (codigo, numero_cpf)
);