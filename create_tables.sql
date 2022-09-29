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
    location BIGINT REFERENCES location(id) ON DELETE CASCADE NOT NULL UNIQUE
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
    city BIGINT REFERENCES city(id) ON DELETE CASCADE NOT NULL,
    job BIGINT REFERENCES job(id) ON DELETE SET NULL,
    doubt BIGINT REFERENCES doubt(id) ON DELETE SET NULL,
    expectation BIGINT REFERENCES expectation(id) ON DELETE SET NULL
);

CREATE TABLE technology (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    expectation BIGINT REFERENCES expectation(id) ON DELETE SET NULL
);

CREATE TABLE citizen_technology (
    citizen BIGINT REFERENCES citizen(id) ON DELETE CASCADE NOT NULL,
    technology BIGINT REFERENCES technology(id) ON DELETE CASCADE NOT NULL,
    PRIMARY KEY (citizen, technology)
);