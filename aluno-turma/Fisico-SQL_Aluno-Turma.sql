/* Logico_Aluno-Turma: */

CREATE TABLE Aluno (
    Codigo INTEGER PRIMARY KEY,
    Matricula VARCHAR(11),
    CPF VARCHAR(11),
    RG VARCHAR(30),
    Nome VARCHAR(100),
    Sexo CHAR(1),
    UNIQUE (CPF, RG, Matricula)
);

CREATE TABLE Turma (
    CodigoTurma INTEGER PRIMARY KEY,
    Ano_letivo CHAR(4),
    Ano_Serie CHAR(4),
    Horario VARCHAR(14),
    fk_Aluno_Codigo INTEGER
);
 
ALTER TABLE Turma ADD CONSTRAINT FK_Turma_2
    FOREIGN KEY (fk_Aluno_Codigo)
    REFERENCES Aluno (Codigo)
    ON DELETE RESTRICT;