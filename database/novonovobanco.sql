create database healthful;

use healthful;

CREATE TABLE usuario (
    idUser int identity (1,1) PRIMARY KEY NOT NULL,
    nomeUser varchar (40) unique NOT NULL,
    emailUser varchar (30) NOT NULL,
    senhaUser varchar (30) NOT NULL,
    nivelUser int NOT NULL, 
);


CREATE TABLE categoria (
    idCategoria int identity (1,1) PRIMARY KEY NOT NULL,
    nomeCategoria varchar (20) unique NOT NULL,
);




CREATE TABLE postagem (
    idPost int identity (1,1) PRIMARY KEY NOT NULL,
    tituloPost varchar (20) NOT NULL,
    textPost varchar (8000),
);




CREATE TABLE comentario (
    idComent int identity (1,1) PRIMARY KEY NOT NULL,
    textoComent varchar (3000),
);