
CREATE USER `openfashion` IDENTIFIED BY '123123';
ALTER USER 'openfashion'@'rihdb.cd4iqywkwn5q.ap-south-1.rds.amazonaws.com' IDENTIFIED BY '123123';
CREATE DATABASE openfashion;
USE openfashion;
GRANT ALL PRIVILEGES ON openfashion.* TO 'openfashion';
