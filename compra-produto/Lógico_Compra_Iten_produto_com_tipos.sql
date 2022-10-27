/* Lógico_Compra_Iten_produto_com_tipos: */

CREATE TABLE Compra (
    CodCompra INTEGER(11) PRIMARY KEY,
    datahora_compra TIMESTAMP,
    status_compra INTEGER(1)
);

CREATE TABLE Produto (
    CodProduto INTEGER(11) PRIMARY KEY,
    Nome_produto VARCHAR(30),
    valor_produto DECIMAL(10,2),
    qtde_produto INTEGER(11),
    status_produto INTEGER(1)
);

CREATE TABLE Iten (
    fk_Produto_CodProduto INTEGER(11),
    fk_Compra_CodCompra INTEGER(11),
    qtde_iten INTEGER(11),
    valor_iten DECIMAL(10,2),
    status_iten INTEGER(1),
    CodIten INTEGER(11) PRIMARY KEY
);
 
ALTER TABLE Iten ADD CONSTRAINT FK_Iten_2
    FOREIGN KEY (fk_Produto_CodProduto)
    REFERENCES Produto (CodProduto)
    ON DELETE RESTRICT;
 
ALTER TABLE Iten ADD CONSTRAINT FK_Iten_3
    FOREIGN KEY (fk_Compra_CodCompra)
    REFERENCES Compra (CodCompra)
    ON DELETE RESTRICT;