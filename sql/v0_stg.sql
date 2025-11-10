CREATE SCHEMA IF NOT EXISTS stg;

DROP TABLE IF EXISTS stg.netflix_titles;
CREATE TABLE stg.netflix_titles (
    show_id TEXT,
    "type" TEXT,
    title TEXT, 
    director TEXT,
    "cast" TEXT,
    country TEXT,
    date_added TEXT,
    release_year TEXT,
    rating TEXT,
    duration TEXT,
    listed_in TEXT,
    description TEXT
);