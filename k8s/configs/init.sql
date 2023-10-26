CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;

DROP TABLE IF EXISTS `member`;
create table member (
        id bigint not null auto_increment,
        platform varchar(20) not null,
        social_id varchar(500) not null,
        primary key (id)
) engine=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `public_key`;
create table public_key (
        id bigint not null auto_increment,
        exponent varchar(20) not null,
        public_key varchar(256) not null,
        modulus varchar(500) not null,
        primary key (id)
    ) engine=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;