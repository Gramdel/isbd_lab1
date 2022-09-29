CREATE TABLE city_type (
    id BIGSERIAL PRIMARY KEY,
    description TEXT NOT NULL UNIQUE
);

CREATE TABLE location (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE city (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    population BIGINT NOT NULL,
    city_type BIGINT REFERENCES city_type(id) NOT NULL,
    location BIGINT REFERENCES location(id) NOT NULL UNIQUE
);

CREATE TABLE job (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE doubt (
    id BIGSERIAL PRIMARY KEY,
    description TEXT NOT NULL UNIQUE
);

CREATE TABLE expectation (
    id BIGSERIAL PRIMARY KEY,
    description TEXT NOT NULL UNIQUE
);

CREATE TABLE citizen (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    age INT NOT NULL,
    reincarnation_count int,
    city BIGINT REFERENCES city(id) NOT NULL,
    job BIGINT REFERENCES job(id),
    doubt BIGINT REFERENCES doubt(id),
    expectation BIGINT REFERENCES expectation(id)
);

CREATE TABLE technology (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    expectation BIGINT REFERENCES expectation(id)
);

CREATE TABLE citizen_technology (
    citizen BIGINT REFERENCES citizen(id) NOT NULL,
    technology BIGINT REFERENCES technology(id) NOT NULL,
    PRIMARY KEY (citizen, technology)
);