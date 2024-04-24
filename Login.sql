USE DIET_MANAGEMENT;

CREATE TABLE LoginInfo(
	Username VARCHAR(30),
    Password VARCHAR(30)
);

INSERT INTO LoginInfo
VALUES ('ChandlerM', 'pass'),
       ('GraceM', 'pass'),
       ('MatthewW', 'pass'),
       ('JohnDoe', 'abc'),
       ('JaneDoe', 'cat');
