--CREATE SCHEMA thoughts;
--SET search_path = thoughts;

CREATE TABLE thought_model (
    username   varchar(40) NOT NULL,
    id         serial,
    timestamp  date,
    text       varchar(200)
);

INSERT INTO thought_model (username, text, timestamp) VALUES ('peterparker', 'A great power carries a great responsability', now());
INSERT INTO thought_model (username, text, timestamp) VALUES ('peterparker2', 'A great power carries a great responsability', now());
