-- Your SQL goes here
CREATE TABLE engine
(
    id         SERIAL    NOT NULL,
    uuid       UUID      NOT NULL DEFAULT uuid_generate_v4(),
    power      INT,
    agility    INT,
    stats      jsonb     NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT "UQ-engine-uuid" UNIQUE (uuid),
    CONSTRAINT "PK-engine" PRIMARY KEY (id)
);

CREATE TABLE chassis
(
    id         SERIAL    NOT NULL,
    uuid       UUID      NOT NULL DEFAULT uuid_generate_v4(),
    power      INT,
    agility    INT,
    stats      jsonb     NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT "UQ-chassis-uuid" UNIQUE (uuid),
    CONSTRAINT "PK-chassis" PRIMARY KEY (id)
);


CREATE TABLE car
(
    id         SERIAL    NOT NULL,
    uuid       UUID      NOT NULL DEFAULT uuid_generate_v4(),
    team_id    INT,
    engine_id  INT,
    chassis_id INT,
    stats      jsonb     NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT "UQ-car-uuid" UNIQUE (uuid),
    CONSTRAINT "FK_team" FOREIGN KEY (team_id) REFERENCES team (id),
    CONSTRAINT "FK_engine" FOREIGN KEY (engine_id) REFERENCES engine (id),
    CONSTRAINT "FK_chassis" FOREIGN KEY (chassis_id) REFERENCES chassis (id),
    CONSTRAINT "PK-car" PRIMARY KEY (id)
);