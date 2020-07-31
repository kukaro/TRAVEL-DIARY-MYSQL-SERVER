-- DROP DATABASE mydb;

CREATE DATABASE td_db;

use td_db;

CREATE TABLE user(
    email VARCHAR(100) PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    age INT DEFAULT NULL,
    birth_date DATETIME DEFAULT NULL,
    password VARCHAR(100) NOT NULL,
    is_hiworks BOOLEAN DEFAULT FALSE,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

CREATE TABLE picture(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    path VARCHAR(100) NOT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE picture ADD CONSTRAINT fk_picture_owneremail_user_email 
    FOREIGN KEY (owner_email) REFERENCES user(email);

CREATE TABLE usergroup(
    id INT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    created_date VARCHAR(100) NOT NULL
);

ALTER TABLE usergroup ADD CONSTRAINT fk_usergroup_owneremail_user_email
    FOREIGN KEY (owner_email) REFERENCES user(email);

CREATE TABLE usergroup_user(
    id INT PRIMARY KEY,
    usergroup_id INT NOT NULL,
    user_email varchar(100) NOT NULL
);

ALTER TABLE usergroup_user ADD CONSTRAINT fk_usergroupuser_usergroupid_usergroup_id
    FOREIGN KEY (usergroup_id) REFERENCES usergroup(id);

ALTER TABLE usergroup_user ADD CONSTRAINT fk_usergroupuser_useremail_user_email
    FOREIGN KEY (user_email) REFERENCES user(email);

-- select * from information_schema.table_constraints where constraint_schema = 'td_db';


CREATE TABLE post(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    title VARCHAR(255) NOT NULL,
    contents TEXT NOT NULL,
    parents_post_id INT DEFAULT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE post ADD CONSTRAINT fk_post_owneremail_user_email
    FOREIGN KEY (owner_email) REFERENCES user(email);

CREATE TABLE post_picture(
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,
    picture_id INT NOT NULL
);

ALTER TABLE post_picture ADD CONSTRAINT fk_postpicturet_post
    FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE CASCADE;

ALTER TABLE post_picture ADD CONSTRAINT fk_postpicture_picture
    FOREIGN KEY (picture_id) REFERENCES picture(id) ON DELETE CASCADE;

ALTER TABLE post_picture ADD UNIQUE uq_postpicture (post_id , picture_id);

CREATE TABLE postcomment(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    post_id INT NOT NULL,
    contents VARCHAR(1000) NOT NULL,
    parents_comment_id INT DEFAULT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_owneremail_user_email
    FOREIGN KEY (owner_email) REFERENCES user(email) ON DELETE CASCADE;

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_postid_post_id
    FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE CASCADE;

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_parentscommentid_postcomment_id
    FOREIGN KEY (parents_comment_id) REFERENCES postcomment(id) ON DELETE CASCADE;

CREATE TABLE hiworksauth(
    user_no INT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    office_no INT NOT NULL,
    user_id VARCHAR(100) NOT NULL,
    user_name VARCHAR(100) NOT NULL,
    access_token VARCHAR(100) DEFAULT NULL,
    refresh_token VARCHAR(100) DEFAULT NULL
);

ALTER TABLE hiworksauth ADD CONSTRAINT fk_hiworksauth_owneremail_user_email
    FOREIGN KEY (owner_email) REFERENCES user(email) ON DELETE CASCADE;

CREATE TABLE friend(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_email VARCHAR(100) NOT NULL,
    friend_email VARCHAR(100) NOT NULL
);

ALTER TABLE friend ADD CONSTRAINT fk_friend_owneremail_user_email
    FOREIGN KEY (owner_email) REFERENCES user(email) ON DELETE CASCADE;

ALTER TABLE friend ADD CONSTRAINT fk_friend_friendemail_user_email
    FOREIGN KEY (friend_email) REFERENCES user(email) ON DELETE CASCADE;

ALTER TABLE friend ADD UNIQUE uq_friend (owner_email , friend_email);