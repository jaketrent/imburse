BEGIN;

CREATE TABLE stories (
  id integer not null,
  title varchar(255),
  description text,
  created date default now()
);

ALTER TABLE stories ADD PRIMARY KEY (id);

CREATE SEQUENCE stories_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

END;
