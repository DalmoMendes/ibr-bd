CREATE TABLE usuario (
  idusuario INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  usu_primeiro_nome VARCHAR(30)  NULL  ,
  usu_segundo_nome VARCHAR(50)  NULL  ,
  usu_genero CHAR(1)  NULL  ,
  usu_dtnascimento DATE  NULL  ,
  usu_login VARCHAR(100)  NULL  ,
  usu_senha VARCHAR(255)  NULL  ,
  usu_nivel INTEGER UNSIGNED  NULL  ,
  usu_dtcadastro TIMESTAMP  NULL  ,
  usu_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idusuario));



CREATE TABLE registro_log (
  idregistro_log INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  log_dtacesso TIMESTAMP  NULL  ,
  log_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idregistro_log)  ,
INDEX registro_log_FKIndex1(usuario_idusuario),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE imagem (
  idimagem INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  img_nome VARCHAR(20)  NULL  ,
  img_arquivo VARCHAR(255)  NULL  ,
  img_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idimagem)  ,
INDEX imagem_FKIndex1(usuario_idusuario),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE categoria (
  idcategoria INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  cat_nome VARCHAR(50)  NULL  ,
  cat_descricao VARCHAR(255)  NULL  ,
  cat_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idcategoria)  ,
INDEX categoria_FKIndex1(usuario_idusuario),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE endereco (
  idendereco INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  end_cep VARCHAR(20)  NULL  ,
  end_tipo VARCHAR(20)  NULL  ,
  end_rua VARCHAR(50)  NULL  ,
  end_numero VARCHAR(50)  NULL  ,
  end_bairro VARCHAR(100)  NULL  ,
  end_cidade VARCHAR(100)  NULL  ,
  end_uf CHAR(2)  NULL  ,
  end_complemento VARCHAR(255)  NULL  ,
  end_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idendereco)  ,
INDEX endereco_FKIndex1(usuario_idusuario),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE noticia (
  idnoticia INTEGER UNSIGNED  NOT NULL  ,
  categoria_idcategoria INTEGER UNSIGNED  NOT NULL  ,
  imagem_idimagem INTEGER UNSIGNED  NOT NULL  ,
  usuario_idusuario INTEGER UNSIGNED  NOT NULL  ,
  not_titulo INTEGER UNSIGNED  NULL  ,
  not_subtitulo INTEGER UNSIGNED  NULL  ,
  not_descricao INTEGER UNSIGNED  NULL  ,
  not_texto INTEGER UNSIGNED  NULL  ,
  not_dtcadastro INTEGER UNSIGNED  NULL  ,
  not_status INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idnoticia)  ,
INDEX noticia_FKIndex1(usuario_idusuario)  ,
INDEX noticia_FKIndex2(imagem_idimagem)  ,
INDEX noticia_FKIndex3(categoria_idcategoria),
  FOREIGN KEY(usuario_idusuario)
    REFERENCES usuario(idusuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(imagem_idimagem)
    REFERENCES imagem(idimagem)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(categoria_idcategoria)
    REFERENCES categoria(idcategoria)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




