CREATE TABLE t_utilisateur
(
    usr_id    SERIAL PRIMARY KEY,
    usr_login VARCHAR(20) NOT NULL
);

CREATE TABLE t_fournisseur
(
    fou_id   SERIAL PRIMARY KEY,
    fou_name VARCHAR(50) NOT NULL
);

CREATE TABLE t_releve
(
    rel_usr_id     NUMBER,
    rel_fou_id     NUMBER,
    rel_date_debut DATE   NOT NULL,
    rel_date_fin   DATE   NOT NULL,
    rel_hp         NUMBER NOT NULL,
    rel_hc         NUMBER NOT NULL,
    rel_total      NUMBER NOT NULL,
    PRIMARY KEY (rel_usr_id, rel_fou_id),
    CONSTRAINT fk_usr FOREIGN KEY (rel_usr_id) REFERENCES t_utilisateur (usr_id),
    CONSTRAINT fk_fou FOREIGN KEY (rel_fou_id) REFERENCES t_fournisseur (fou_id)
);
