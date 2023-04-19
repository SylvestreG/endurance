-- Your SQL goes here
CREATE TABLE racing_driver
(
    id          SERIAL            NOT NULL,
    uuid        UUID              NOT NULL DEFAULT uuid_generate_v4(),
    firstname   character varying NOT NULL,
    lastname    character varying NOT NULL,
    surname     character varying,
    nationality character varying NOT NULL,
    stats       jsonb             NOT NULL,
    team_id     INT,
    created_at  TIMESTAMP         NOT NULL DEFAULT now(),
    updated_at  TIMESTAMP         NOT NULL DEFAULT now(),
    CONSTRAINT "UQ-racing-driver-uuid" UNIQUE (uuid),
    CONSTRAINT "FK_team" FOREIGN KEY (team_id) REFERENCES team (id),
    CONSTRAINT "PK-racing-driver" PRIMARY KEY (id)
);