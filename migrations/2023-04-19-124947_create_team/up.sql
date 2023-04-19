-- Your SQL goes here
CREATE TABLE team
(
    id         SERIAL            NOT NULL,
    uuid       UUID              NOT NULL DEFAULT uuid_generate_v4(),
    name       character varying NOT NULL,
    created_at TIMESTAMP         NOT NULL DEFAULT now(),
    updated_at TIMESTAMP         NOT NULL DEFAULT now(),
    CONSTRAINT "UQ-team-uuid" UNIQUE (uuid),
    CONSTRAINT "PK-team" PRIMARY KEY ("id")
);