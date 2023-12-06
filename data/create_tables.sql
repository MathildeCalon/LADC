BEGIN;

DROP TABLE IF EXISTS utilisateur_commander_article CASCADE;

DROP TABLE IF EXISTS article CASCADE;

DROP TABLE IF EXISTS categorie CASCADE;

DROP TABLE IF EXISTS utilisateur CASCADE;

DROP TABLE IF EXISTS role CASCADE;

/* CREATION TABLE ROLE */

CREATE TABLE
    IF NOT EXISTS role(
        id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
            INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
        ),
        name text NOT NULL,
        CONSTRAINT role_pkey PRIMARY KEY (id)
    );

/* CREATION TABLE CATEGORIE */

CREATE TABLE
    IF NOT EXISTS categorie(
        id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
            INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
        ),
        name text NOT NULL,
        CONSTRAINT categorie_pkey PRIMARY KEY (id)
    );

/* CREATION TABLE UTILISATEUR */

CREATE TABLE
    IF NOT EXISTS utilisateur(
        id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
            INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
        ),
        nom text NOT NULL,
        prénom text NOT NULL,
        date_de_naissance integer NOT NULL,
        numéro_de_téléphone integer,
        adresse_postale text,
        email text NOT NULL UNIQUE,
        mot_de_passe text NOT NULL,
        validation boolean DEFAULT FALSE,
        role_id integer NOT NULL,
        CONSTRAINT utilisateur_pkey PRIMARY KEY (id),
        CONSTRAINT role_id FOREIGN KEY (role_id) REFERENCES role(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION NOT VALID
    );

CREATE TABLE
    IF NOT EXISTS article(
        id integer NOT NULL GENERATED ALWAYS AS IDENTITY (
            INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1
        ),
        titre text NOT NULL UNIQUE,
        description text NOT NULL,
        prix integer NOT NULL,
        photo text,
        categorie_id integer NOT NULL,
        CONSTRAINT article_pkey PRIMARY KEY (id),
        CONSTRAINT categorie_id FOREIGN KEY (categorie_id) REFERENCES categorie(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION NOT VALID
    );

CREATE TABLE
    IF NOT EXISTS utilisateur_commander_article(
        utilisateur_id int NOT NULL,
        article_id int NOT NULL,
        date_de_début int,
        date_de_fin int,
        numéro_de_commande int NOT NULL,
        CONSTRAINT utilisateur_id FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
        CONSTRAINT article_id FOREIGN KEY (article_id) REFERENCES article (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
    );

COMMIT;