 -- /sql/v0_ingest_raw.sql
 CREATE SCHEMA IF NOT EXISTS raw;

 DROP TABLE IF EXISTS raw.netflix_titles;
 CREATE TABLE raw.netflix_titles (
 	show_id	VARCHAR(10),
 	type	VARCHAR(10),
 	title TEXT,
 	director	TEXT,
 	"cast"	TEXT,
 	country	TEXT,
 	date_added	 DATE,
 	release_year	INT,
 	rating	VARCHAR(10),
 	duration	VARCHAR(20),
 	listed_in	TEXT,
 	description	TEXT
 	);
 -- Client-side load (you run via psql)
\COPY raw.netflix_titles FROM '/app/data/netflix_titles.csv' DELIMITER ',' CSV HEADER;