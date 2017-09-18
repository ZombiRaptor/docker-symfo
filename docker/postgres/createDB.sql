CREATE TABLE posts (
    post_id serial PRIMARY KEY,
    title varchar(255) NOT NULL
);

INSERT INTO posts (title) values ('First post blog.');