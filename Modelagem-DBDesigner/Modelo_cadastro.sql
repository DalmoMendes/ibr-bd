CREATE TABLE Pessoa (
  idPessoa INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(100)  NULL  ,
  sexo INTEGER UNSIGNED  NULL  ,
  datanascimento DATE  NULL  ,
  login VARCHAR(100)  NULL  ,
  senha VARCHAR(100)  NULL  ,
  status_pessoa INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idPessoa));



CREATE TABLE pessoa_cpf (
  idpessoa_cpf INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Pessoa_idPessoa INTEGER UNSIGNED  NOT NULL  ,
  numero_cpf VARCHAR(11)  NULL  ,
  status_cpf INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idpessoa_cpf)  ,
INDEX pessoa_cpf_FKIndex1(Pessoa_idPessoa),
  FOREIGN KEY(Pessoa_idPessoa)
    REFERENCES Pessoa(idPessoa)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);

CREATE TABLE empresa_cnpf (
  idempresa_cnpf INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Pessoa_idPessoa INTEGER UNSIGNED  NOT NULL  ,
  numero_cnpj VARCHAR(11)  NULL  ,
  statutus_cnpj INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idempresa_cnpf)  ,
INDEX empresa_cnpf_FKIndex1(Pessoa_idPessoa),
  FOREIGN KEY(Pessoa_idPessoa)
    REFERENCES Pessoa(idPessoa)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




