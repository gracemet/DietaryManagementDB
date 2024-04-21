USE DIET_MANAGEMENT;

CREATE TABLE LoginInfo(
	Username VARCHAR(30),
    Password VARCHAR(30)
);

-- CREATE TABLE PATIENT(
-- 	Id INT NOT NULL AUTO_INCREMENT,
-- 	Username VARCHAR(30),
--     Password VARCHAR(30)
-- );

INSERT INTO LoginInfo
VALUES ('ChandlerM', 'pass'),
       ('GraceM', 'pass'),
       ('MatthewW', 'pass'),
       ('JohnDoe', 'abc'),
       ('JaneDoe', 'cat');

-- INSERT INTO PATIENT(Username, Password)
-- VALUES ('JohnDoe', 'abc'),
--        ('JaneDoe', 'cat');
