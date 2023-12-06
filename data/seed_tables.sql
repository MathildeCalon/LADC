BEGIN;

/* INSERTION ROLE */

INSERT INTO "role"("name") VALUES ('admin'), ('user');

/* INSERTION CATEGORIE */

INSERT INTO
    "categorie"("name")
VALUES ('Alimentaire'), ('Son et lumière'), ('Ludique'), ('Décoration');

/* INSERTION ARTICLE */

INSERT INTO
    "article"(
        "titre",
        "description",
        "prix",
        "photo",
        "categorie_id"
    )
VALUES (
        'Machine à Popcorn',
        'Préparez vos propres popcorns !',
        40,
        'popcorn.jpg',
        1
    ), (
        'Vidéo-projecteur',
        'Projetez vos images, vidéos et musique pour profiter d''une bonne soirée !',
        40,
        'videoproj.jpg',
        2
    ), (
        'Sono et micro',
        'Profitez d''une sono de 400w et d''un micro pour animer vos soirées !',
        50,
        'sono.jpg',
        2
    ), (
        'Jeux de lumière',
        'Allumez votre soirée de mille couleurs !',
        40,
        'jeuxdelumiere.jpg',
        2
    ), (
        'Perfectdraft',
        'Vos invités seront ravis de déguster une bière bien fraîche',
        20,
        'perfectdraft.jpg',
        1
    ), (
        'Borne karaoké',
        'Chantez !',
        60,
        'karaoke.jpg',
        3
    ), (
        'Ecran',
        'A utiliser avec le retroprojecteur',
        10,
        'ecran.jpg',
        2
    ), (
        'Mange debout',
        'Offrez des points de ravitaillement',
        8,
        'mangedebout.jpg',
        4
    );

COMMIT;