--create database chit_chat
--use chit_chat
--CREATE TABLE Users (
--user_id int PRIMARY KEY,
--username TEXT,
--email TEXT,
--password TEXT
--);


--create table Posts(
--post_id int primary key,
--user_id int,
--content text,
--timestamp datetime,
--foreign key (user_id) REFERENCES Users(user_id)
--);
--A timestamp is a sequence of characters or encoded information identifying
--when a certain event occurred, usually giving date and time of day, 
--sometimes accurate to a small fraction of a second.


--create table photos(
--	photo_id int primary key,
--	user_id int,
--	caption text,
--	image_url text,
--	timestamp datetime,
--	foreign key (user_id) REFERENCES Users(user_id)
--);


--create table videos(
--	video_id int primary key,
--	user_id int,
--	title text,
--	video_url text,
--	timestamp datetime,
--	foreign key (user_id) references Users(user_id)
--);


--create table Interactions(
--	interaction_id int primary key,
--	user_id int,
--	post_id int,
--	video_id int,
--	photo_id int,
--	action text,
--	timestamp datetime,
--	foreign key (user_id) references Users(user_id),
--	foreign key (post_id) references Posts(post_id),
--	foreign key (photo_id) references photos(photo_id),
--	foreign key (video_id) references videos(video_id),
--);