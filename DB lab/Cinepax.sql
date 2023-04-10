--drop database if EXISTS Cinepax;
--create database Cinepax2;
--use Cinepax2;


create table Movie(
MovieID int primary key,
MName varchar(50),
Realease_Date date,
Play_time int
);
select* from Movie;

insert into movie values (1,'Fast and Furious 8','2017-04-13',136);
insert into movie values (2,'Logan','2017-03-07',137);
insert into movie values (3,'Terminator Genisys','2015-07-01',126);
insert into movie values (4,'Captain America: Civil War','2017-06-06',147);
insert into movie values (5,'Batman v Superman: Dawn of Justice','2016-03-25',151);
insert into movie values (6,'The Hitman Bodyguard','2017-08-18',125);
insert into movie values (7,'Hotel Transylvania 2','2015-09-25',89);
insert into movie values (8,'The Dark Tower','2017-08-04',95);
insert into movie values (9,'Atomic Blonde','2017-07-28',115);
insert into movie values (10,'Spider-Man: Homecoming','2017-07-07',133);

create table MType(
TypeID int primary key,
TName varchar(2)
);
insert into MType(TypeID,Tname) values(1,'2D');
insert into MType(TypeID,Tname) values(2,'3D');
select*from MType;

create table  Movie_Type(
TypeID int,
MovieID int,
primary key(TypeID,MovieID),
foreign key(TypeID) references MType(TypeID),
foreign key(MovieID) references Movie(MovieID)
);

select*from Movie_Type
insert into Movie_Type values(1,1);
insert into Movie_Type values(2,1);
insert into Movie_Type values(1,2);
insert into Movie_Type values(1,3);
insert into Movie_Type values(2,3);
insert into Movie_Type values(1,4);
insert into Movie_Type values(2,4);
insert into Movie_Type values(1,5);
insert into Movie_Type values(2,5);
insert into Movie_Type values(1,6);
insert into Movie_Type values(1,7);
insert into Movie_Type values(2,7);
insert into Movie_Type values(1,8);
insert into Movie_Type values(1,9);
insert into Movie_Type values(2,10);

create table  Category(
CatID int primary key,
CatName varchar(25)
);

insert into Category values (1,'Action');
insert into Category values (2,'Adventure');
insert into Category values (3,'Animation');
insert into Category values (4,'Crime');
insert into Category values (5,'Drama');
insert into Category values (6,'Sci-Fi');
insert into Category values (7,'Thriller');
insert into Category values (8,'Comedy');
insert into Category values (9,'Mystery');
insert into Category values (10,'Horror');

create table  Movie_Category(
MovieID int,
CatID int,
foreign key(MovieID) references Movie(MovieID),
foreign key(CatID) references Category(CatID)
);

insert into Movie_Category values (1,1);
insert into Movie_Category values (1,2);
insert into Movie_Category values (1,4);
insert into Movie_Category values (2,1);
insert into Movie_Category values (2,5);
insert into Movie_Category values (2,6);
insert into Movie_Category values (3,1);
insert into Movie_Category values (3,6);
insert into Movie_Category values (4,1);
insert into Movie_Category values (4,6);
insert into Movie_Category values (5,1);
insert into Movie_Category values (5,6);
insert into Movie_Category values (5,7);
insert into Movie_Category values (6,1);
insert into Movie_Category values (6,8);
insert into Movie_Category values (7,3);
insert into Movie_Category values (7,8);
insert into Movie_Category values (7,2);
insert into Movie_Category values (8,1);
insert into Movie_Category values (8,2);
insert into Movie_Category values (8,10);
insert into Movie_Category values (9,1);
insert into Movie_Category values (9,7);
insert into Movie_Category values (9,9);
insert into Movie_Category values (10,1);
insert into Movie_Category values (10,4);
insert into Movie_Category values (10,6);



create table  Screen(
ScreenID int primary key,
ScreenName varchar(25)
);
select*From Screen;
insert into Screen values (1,'Silver');
insert into Screen values (2,'Gold');
insert into Screen values (3,'Platinum');
insert into Screen values (4,'Platinum Plus');

create table  SType(
TypeID int primary key,
TName varchar(2)
);
insert into SType values(1,'2D');
insert into SType values(2,'3D');

create table  Screen_Type(
ScreenID int,
TypeID int,
primary key(ScreenID,TypeID),
foreign key(ScreenID) references Screen(ScreenID),
foreign key(TypeID) references SType(TypeID)
);

insert into Screen_Type values (1,1);
insert into Screen_Type values (2,1);
insert into Screen_Type values (2,2);
insert into Screen_Type values (3,1);
insert into Screen_Type values (3,2);
insert into Screen_Type values (4,2);



create table  Screen_Movie(
Screen_Movie_ID int primary key ,
Screening_Date date,
Shift varchar(25),
MovieID int,
ScreenID int,
foreign key(MovieID) references Movie(MovieID),
foreign key(ScreenID) references Screen(ScreenID)
);

INSERT INTO screen_movie (Screen_Movie_ID, Screening_Date, Shift, MovieID, ScreenID) VALUES
(1, '2017-08-24', 'After Noon', 1, 1),
(2, '2017-08-24', 'Morning', 1, 2),
(3, '2017-08-24', 'Evening', 1, 3),
(4, '2017-08-25', 'After Noon', 1, 2),
(5, '2017-08-25', 'Morning', 1, 1),
(6, '2017-08-25', 'Evening', 1, 4),
(7, '2017-08-24', 'After Noon', 2, 2),
(8, '2017-08-24', 'Morning', 2, 1),
(9, '2017-08-24', 'Evening', 2, 2),
(10, '2017-08-25', 'After Noon', 2, 1),
(11, '2017-08-25', 'Evening', 2, 3),
(12, '2017-08-24', 'After Noon', 3, 3),
(13, '2017-08-24', 'Evening', 3, 4),
(14, '2017-08-25', 'After Noon', 3, 3),
(15, '2017-08-25', 'Morning', 3, 2),
(16, '2017-08-25', 'Evening', 3, 2),
(17, '2017-08-26', 'After Noon', 3, 3),
(18, '2017-08-26', 'Morning', 3, 2),
(19, '2017-08-26', 'Evening', 3, 4),
(20, '2017-08-24', 'After Noon', 4, 4),
(21, '2017-08-24', 'Morning', 4, 3),
(22, '2017-08-24', 'Evening', 4, 1),
(23, '2017-08-25', 'After Noon', 4, 4),
(24, '2017-08-25', 'Morning', 4, 3),
(25, '2017-08-25', 'Evening', 4, 1),
(26, '2017-08-26', 'After Noon', 4, 2),
(27, '2017-08-26', 'Morning', 4, 3),
(28, '2017-08-26', 'Evening', 4, 3),
(29, '2017-08-26', 'After Noon', 5, 4),
(30, '2017-08-26', 'Evening', 5, 2),
(31, '2017-08-27', 'After Noon', 5, 2),
(32, '2017-08-27', 'Morning', 5, 1),
(33, '2017-08-27', 'Evening', 5, 3),
(34, '2017-08-28', 'After Noon', 5, 2),
(35, '2017-08-28', 'Morning', 5, 1),
(36, '2017-08-28', 'Evening', 5, 4),
(37, '2017-08-26', 'After Noon', 6, 1),
(38, '2017-08-26', 'Evening', 6, 1),
(39, '2017-08-27', 'After Noon', 6, 1),
(40, '2017-08-27', 'Morning', 6, 2),
(41, '2017-08-27', 'Evening', 6, 2),
(42, '2017-08-28', 'After Noon', 6, 1),
(43, '2017-08-28', 'Morning', 6, 2),
(44, '2017-08-28', 'Evening', 6, 2),
(45, '2017-08-27', 'After Noon', 7, 4),
(46, '2017-08-27', 'Evening', 7, 4),
(47, '2017-08-28', 'After Noon', 7, 4),
(48, '2017-08-28', 'Morning', 7, 4),
(49, '2017-08-28', 'Evening', 7, 4),
(50, '2017-08-29', 'After Noon', 7, 1),
(51, '2017-08-29', 'Morning', 7, 2),
(52, '2017-08-29', 'Evening', 7, 3),
(53, '2017-08-27', 'After Noon', 8, 3),
(54, '2017-08-27', 'Evening', 8, 1),
(55, '2017-08-28', 'After Noon', 8, 3),
(56, '2017-08-28', 'Morning', 8, 3),
(57, '2017-08-28', 'Evening', 8, 3),
(58, '2017-08-29', 'After Noon', 8, 2),
(59, '2017-08-29', 'Morning', 8, 1),
(60, '2017-08-29', 'Evening', 8, 2),
(61, '2017-08-29', 'After Noon', 9, 3),
(62, '2017-08-29', 'Evening', 9, 1),
(63, '2017-08-30', 'After Noon', 9, 3),
(64, '2017-08-30', 'Morning', 9, 1),
(65, '2017-08-30', 'Evening', 9, 3),
(66, '2017-08-31', 'After Noon', 9, 2),
(67, '2017-08-31', 'Morning', 9, 1),
(68, '2017-08-31', 'Evening', 9, 1),
(69, '2017-08-29', 'After Noon', 10, 1),
(70, '2017-08-29', 'Evening', 10, 4),
(71, '2017-08-30', 'After Noon', 10, 2),
(72, '2017-08-30', 'Morning', 10, 3),
(73, '2017-08-30', 'Evening', 10, 4),
(74, '2017-08-31', 'After Noon', 10, 3),
(75, '2017-08-31', 'Morning', 10, 2),
(76, '2017-08-31', 'Evening', 10, 4);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','After Noon',1,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Morning',1,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Evening',1,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','After Noon',1,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Morning',1,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Evening',1,4);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','After Noon',2,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Morning',2,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Evening',2,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','After Noon',2,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Evening',2,3);


--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','After Noon',3,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Evening',3,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','After Noon',3,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Morning',3,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Evening',3,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','After Noon',3,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Morning',3,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Evening',3,4);


--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','After Noon',4,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Morning',4,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-24','Evening',4,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','After Noon',4,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Morning',4,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-25','Evening',4,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','After Noon',4,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Morning',4,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Evening',4,3);


--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','After Noon',5,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Evening',5,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','After Noon',5,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Morning',5,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Evening',5,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','After Noon',5,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Morning',5,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Evening',5,4);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','After Noon',6,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-26','Evening',6,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','After Noon',6,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Morning',6,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Evening',6,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','After Noon',6,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Morning',6,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Evening',6,2);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','After Noon',7,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Evening',7,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','After Noon',7,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Morning',7,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Evening',7,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','After Noon',7,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Morning',7,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Evening',7,3);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','After Noon',8,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-27','Evening',8,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','After Noon',8,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Morning',8,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-28','Evening',8,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','After Noon',8,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Morning',8,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Evening',8,2);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','After Noon',9,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Evening',9,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','After Noon',9,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','Morning',9,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','Evening',9,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','After Noon',9,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','Morning',9,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','Evening',9,1);

--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','After Noon',10,1);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-29','Evening',10,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','After Noon',10,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','Morning',10,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-30','Evening',10,4);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','After Noon',10,3);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','Morning',10,2);
--insert into Screen_Movie(Screening_Date,Shift,MovieID,ScreenID) values ('2017-08-31','Evening',10,4);
select*From Screen_Movie

create table  Customer(
CID int primary key,
CName varchar(25),
CAddress varchar(50)
);

select*From Customer

insert into Customer values (1,'Ali','DHA');
insert into Customer values (2,'Ahmad','Johar Town');
insert into Customer values (3,'Amna','Bahria Town');
insert into Customer values (4,'Iqra','Muslim Town');
insert into Customer values (5,'Shahzaib','Mughalpura');
insert into Customer values (6,'Suleman','Faisal Town');
insert into Customer values (7,'Jahangir','Gulshan Ravi');
insert into Customer values (8,'Sadaf','DHA');
insert into Customer values (9,'Awais','Bahria Town');
insert into Customer values (10,'Samia','Faisal Town');

create table  Staff(
SID int primary key,
SName varchar(25),
SDesignation varchar(25),
SAddress varchar(25)
);

insert into Staff values (1,'Shahroz','Admin','DHA');
insert into Staff values (2,'Iqbal','Ticket Issuer','Johar Town');
insert into Staff values (3,'Nasir','Ticket Issuer','Mughalpura');
insert into Staff values (4,'Awais','Admin','Bahria Town');
insert into Staff values (5,'Saqib','Ticket Issuer','Gulshan Ravi');
insert into Staff values (6,'Ali','Ticket Issuer','Johar Town');
insert into Staff values (7,'Waqar','Admin','Faisal Town');
insert into Staff values (8,'Jamshed','Ticket Issuer','Johar Town');
insert into Staff values (9,'Saqlain','Admin','Mughalpura');
insert into Staff values (10,'Sajjad','Ticket Issuer','Gulshan Ravi');

select*From Staff
create table  Booking(
BID int primary key ,
No_of_Seats int,
Staff_Booking_Date date,
Screen_Movie_ID int,
foreign key(Screen_Movie_ID) references Screen_Movie(Screen_Movie_ID),
SID int,
CID int,
foreign key(SID) references Staff(SID),
foreign key(CID) references Customer(CID)
);

select*from Booking

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-22',21,1,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-22',7,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-22',1,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-22',4,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',8,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-22',7,1,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-22',1,2,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(8,'2017-08-22',21,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-22',12,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',3,10,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-22',10,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-22',12,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(8,'2017-08-22',1,6,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-22',7,7,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',3,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-22',12,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',2,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-22',13,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-22',4,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(8,'2017-08-22',8,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-22',15,8,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',3,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-22',7,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-22',13,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-22',9,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-22',2,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-22',11,2,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-22',9,6,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-22',14,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-22',16,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-23',4,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',10,5,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',7,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-23',13,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',8,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-23',11,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',6,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-23',2,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',2,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-23',11,6,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-23',5,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-23',12,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',9,9,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-23',22,8,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',11,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-23',4,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',20,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-23',15,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-23',12,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-23',4,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',21,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-23',7,8,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',2,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-23',13,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',6,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',2,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',11,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',9,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',22,3,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',1,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-24',4,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',8,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',2,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',10,9,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',3,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',11,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-23',4,2,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',20,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-23',15,1,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-23',12,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-23',8,7,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',21,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-23',7,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-23',22,3,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-23',13,8,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',6,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',2,9,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',11,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-23',9,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-23',14,9,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',1,1,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-24',4,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',8,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',2,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',10,7,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',3,3,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',12,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',25,6,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',1,9,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-24',5,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',11,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-24',13,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',20,1,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-24',5,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',22,7,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-24',6,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',8,6,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-24',7,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',2,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',4,4,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-24',10,3,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',2,8,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',20,2,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',1,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',3,5,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-24',16,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',22,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',1,1,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',17,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-24',9,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',14,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',5,8,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',20,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',3,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',20,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',1,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',23,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-24',16,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',18,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-24',1,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',21,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-24',9,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',14,1,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',5,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',20,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',3,8,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',20,8,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',24,7,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-24',5,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-24',26,2,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-24',26,3,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-24',20,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',16,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',6,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',26,8,3); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',26,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',17,1,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',16,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',6,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',16,5,1); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',10,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',17,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',16,2,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',17,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',5,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',23,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',14,9,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',18,9,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',23,9,2); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',23,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',15,9,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',24,8,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',25,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',16,1,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',24,9,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',6,8,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',4,2,7); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',15,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',16,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',17,9,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',14,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',25,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',42,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',10,6,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,5,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',15,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',24,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',18,1,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',14,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',6,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',4,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',16,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',15,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',16,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',5,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',16,3,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',6,9,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',16,1,6); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,10,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',10,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',17,5,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',16,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',17,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',5,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',23,2,4);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',14,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',18,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',41,10,10); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',23,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',15,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',23,3,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',24,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',16,10,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',24,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-25',6,4,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,1,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',4,8,5); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',15,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',16,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',17,10,1);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',14,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',41,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',23,7,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-25',10,7,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,7,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',15,3,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',4,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',18,7,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',14,8,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',6,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',4,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',16,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',37,5,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,7,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-25',16,5,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-25',5,1,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',40,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',37,5,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',24,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',23,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',38,9,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',5,4,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-25',6,3,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-25',4,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-25',25,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-25',28,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-25',4,5,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',17,1,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',26,5,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',30,7,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',26,5,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-26',27,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',28,5,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',26,4,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',29,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',28,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-26',31,5,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',30,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-26',18,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',38,1,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-26',40,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',35,5,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',38,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',18,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',35,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',32,9,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-26',29,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',37,7,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-26',17,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',27,3,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',28,5,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',35,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-26',29,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',30,5,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-26',26,1,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',29,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',37,5,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',34,5,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',29,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-26',33,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',31,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-26',18,5,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-26',27,5,7);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-26',32,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',29,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',39,7,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',17,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',18,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-26',28,5,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-26',36,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-26',28,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-26',30,2,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',38,6,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',27,8,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',17,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',33,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',53,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-27',54,7,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',53,9,2); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',39,9,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',54,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',36,6,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',32,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-27',39,9,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-26',31,1,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-26',53,3,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-26',34,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-27',39,4,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',53,8,2); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',53,8,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',35,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',54,8,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',54,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-27',53,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',54,7,7); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',33,9,5); 
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',39,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',32,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',40,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',41,1,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-27',42,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-27',39,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-27',44,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',70,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',45,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',33,7,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-27',36,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',31,5,8);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-27',43,3,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-27',46,8,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',34,2,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',45,6,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-27',32,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',46,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',55,4,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',56,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',54,7,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-27',55,3,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',57,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',55,3,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',54,3,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(8,'2017-08-27',57,3,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',55,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',57,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',57,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',56,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',41,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',40,3,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',33,3,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-27',45,5,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-27',46,4,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-27',73,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',70,9,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(8,'2017-08-27',46,1,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-27',45,2,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',40,6,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-27',31,8,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-27',33,3,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-28',43,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',55,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',57,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',56,5,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-28',43,3,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',56,3,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',47,3,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',56,3,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',43,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',42,6,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',36,1,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-28',34,3,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',44,4,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',35,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',47,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',48,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',49,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',50,4,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',48,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',71,3,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',49,2,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',50,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',49,3,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',61,5,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',44,3,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',34,1,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',36,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',42,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',47,3,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-28',71,7,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',34,3,10);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',48,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-28',35,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',42,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',48,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',43,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',62,1,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',70,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',49,5,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',42,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',61,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-28',58,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-28',59,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',60,1,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',58,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',58,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',52,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',51,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',50,9,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',58,8,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',52,9,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-28',60,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-28',58,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-28',58,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',52,10,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',51,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',50,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',58,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',52,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',58,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',50,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',58,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',63,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',61,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',62,10,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',63,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',50,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',63,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',50,7,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',61,9,3);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',62,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',62,5,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',69,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',50,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',51,7,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',52,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',58,1,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',61,4,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',58,2,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',63,2,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',69,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-29',50,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',69,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-29',70,7,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-29',69,2,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',52,3,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',50,5,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',59,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',60,8,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',63,2,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',52,9,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-29',52,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',51,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',62,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',51,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',61,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',50,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',52,10,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-29',59,7,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-29',61,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-29',65,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-29',62,4,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-29',62,2,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(7,'2017-08-29',50,8,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',71,9,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-30',64,10,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-30',72,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-30',71,9,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',63,10,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-30',64,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',63,4,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-30',67,2,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-30',66,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',65,5,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',64,6,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',73,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',64,9,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-30',75,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',73,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',72,4,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',63,10,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',66,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',72,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-30',64,2,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-30',67,1,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',65,9,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',68,9,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',64,8,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',64,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',74,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',71,9,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',72,4,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-30',63,2,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',65,2,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',63,7,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',68,6,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-30',63,3,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',64,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-30',71,2,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-30',74,2,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-30',65,5,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-30',66,2,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',65,1,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-30',63,4,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-30',64,2,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-30',64,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',65,7,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-30',76,3,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-30',71,2,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(2,'2017-08-31',75,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-31',76,3,5);

--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-31',66,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',67,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-31',74,10,10);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-31',68,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-31',66,7,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-31',74,2,7);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-31',66,6,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-31',76,5,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',76,6,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',76,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-31',68,8,2);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-31',75,10,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-31',76,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',76,7,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-31',73,4,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-31',66,10,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',75,3,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',76,1,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',75,3,1);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-31',67,10,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-31',68,10,9);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-31',76,10,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-31',76,5,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(3,'2017-08-31',75,3,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(10,'2017-08-31',67,6,4);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(5,'2017-08-31',76,9,6);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(1,'2017-08-31',68,8,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(4,'2017-08-31',75,1,5);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(6,'2017-08-31',68,6,8);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-31',74,4,3);
--insert into Booking(No_of_Seats,Staff_Booking_Date,Screen_Movie_ID,SID,CID) values(9,'2017-08-31',68,3,4);
INSERT INTO booking (BID, No_of_Seats, Staff_Booking_Date, Screen_Movie_ID, SID, CID) VALUES
(1, 3, '2017-08-22', 21, 1, 1),
(2, 5, '2017-08-22', 7, 3, 5),
(3, 1, '2017-08-22', 1, 5, 4),
(4, 6, '2017-08-22', 4, 7, 5),
(5, 2, '2017-08-22', 8, 9, 2),
(6, 1, '2017-08-22', 7, 1, 4),
(7, 6, '2017-08-22', 1, 2, 3),
(8, 8, '2017-08-22', 21, 8, 6),
(9, 9, '2017-08-22', 12, 10, 1),
(10, 2, '2017-08-22', 3, 10, 4),
(11, 3, '2017-08-22', 10, 10, 5),
(12, 6, '2017-08-22', 12, 4, 5),
(13, 8, '2017-08-22', 1, 6, 2),
(14, 9, '2017-08-22', 7, 7, 6),
(15, 2, '2017-08-22', 3, 9, 1),
(16, 9, '2017-08-22', 12, 10, 3),
(17, 2, '2017-08-22', 2, 10, 7),
(18, 1, '2017-08-22', 13, 2, 2),
(19, 6, '2017-08-22', 4, 1, 7),
(20, 8, '2017-08-22', 8, 5, 1),
(21, 9, '2017-08-22', 15, 8, 2),
(22, 2, '2017-08-22', 3, 3, 4),
(23, 7, '2017-08-22', 7, 9, 8),
(24, 5, '2017-08-22', 13, 4, 9),
(25, 10, '2017-08-22', 9, 10, 1),
(26, 2, '2017-08-22', 2, 7, 7),
(27, 6, '2017-08-22', 11, 2, 6),
(28, 5, '2017-08-22', 9, 6, 3),
(29, 4, '2017-08-22', 14, 8, 1),
(30, 3, '2017-08-22', 16, 9, 8),
(31, 2, '2017-08-23', 4, 10, 1),
(32, 1, '2017-08-23', 10, 5, 2),
(33, 1, '2017-08-23', 7, 10, 5),
(34, 7, '2017-08-23', 13, 3, 4),
(35, 5, '2017-08-23', 8, 7, 1),
(36, 4, '2017-08-23', 11, 4, 1),
(37, 3, '2017-08-23', 6, 10, 3),
(38, 10, '2017-08-23', 2, 10, 9),
(39, 5, '2017-08-23', 2, 1, 7),
(40, 6, '2017-08-23', 11, 6, 3),
(41, 9, '2017-08-23', 5, 8, 6),
(42, 7, '2017-08-23', 12, 10, 1),
(43, 5, '2017-08-23', 9, 9, 4),
(44, 4, '2017-08-23', 22, 8, 2),
(45, 3, '2017-08-23', 11, 4, 10),
(46, 10, '2017-08-23', 4, 10, 1),
(47, 5, '2017-08-23', 20, 7, 2),
(48, 6, '2017-08-23', 15, 5, 1),
(49, 9, '2017-08-23', 12, 6, 8),
(50, 4, '2017-08-23', 4, 3, 6),
(51, 5, '2017-08-23', 21, 8, 5),
(52, 2, '2017-08-23', 7, 8, 4),
(53, 5, '2017-08-23', 2, 10, 7),
(54, 2, '2017-08-23', 13, 1, 7),
(55, 1, '2017-08-23', 6, 2, 7),
(56, 3, '2017-08-23', 2, 9, 2),
(57, 7, '2017-08-24', 11, 10, 8),
(58, 1, '2017-08-23', 9, 10, 1),
(59, 3, '2017-08-23', 22, 3, 3),
(60, 7, '2017-08-24', 1, 4, 7),
(61, 4, '2017-08-24', 4, 6, 6),
(62, 3, '2017-08-24', 8, 8, 1),
(63, 2, '2017-08-24', 2, 9, 5),
(64, 1, '2017-08-24', 10, 9, 4),
(65, 1, '2017-08-24', 3, 9, 2),
(66, 3, '2017-08-23', 11, 5, 7),
(67, 10, '2017-08-23', 4, 2, 1),
(68, 5, '2017-08-23', 20, 8, 9),
(69, 6, '2017-08-23', 15, 1, 9),
(70, 9, '2017-08-23', 12, 9, 10),
(71, 4, '2017-08-23', 8, 7, 9),
(72, 5, '2017-08-23', 21, 4, 7),
(73, 2, '2017-08-23', 7, 6, 6),
(74, 5, '2017-08-23', 22, 3, 2),
(75, 2, '2017-08-23', 13, 8, 4),
(76, 1, '2017-08-23', 6, 9, 1),
(77, 3, '2017-08-23', 2, 9, 3),
(78, 7, '2017-08-24', 11, 5, 1),
(79, 1, '2017-08-23', 9, 2, 5),
(80, 3, '2017-08-23', 14, 9, 7),
(81, 7, '2017-08-24', 1, 1, 1),
(82, 4, '2017-08-24', 4, 6, 8),
(83, 3, '2017-08-24', 8, 8, 6),
(84, 2, '2017-08-24', 2, 4, 10),
(85, 1, '2017-08-24', 10, 7, 9),
(86, 1, '2017-08-24', 3, 3, 10),
(87, 7, '2017-08-24', 12, 9, 5),
(88, 7, '2017-08-24', 25, 6, 9),
(89, 5, '2017-08-24', 1, 9, 4),
(90, 4, '2017-08-24', 5, 5, 7),
(91, 3, '2017-08-24', 11, 2, 2),
(92, 10, '2017-08-24', 13, 9, 1),
(93, 1, '2017-08-24', 20, 1, 10),
(94, 7, '2017-08-24', 5, 4, 8),
(95, 5, '2017-08-24', 22, 7, 6),
(96, 4, '2017-08-24', 6, 8, 1),
(97, 5, '2017-08-24', 8, 6, 3),
(98, 6, '2017-08-24', 7, 9, 5),
(99, 9, '2017-08-24', 2, 4, 1),
(100, 9, '2017-08-24', 4, 4, 4),
(101, 4, '2017-08-24', 10, 3, 1),
(102, 5, '2017-08-24', 2, 8, 10),
(103, 2, '2017-08-24', 20, 2, 9),
(104, 5, '2017-08-24', 1, 7, 7),
(105, 5, '2017-08-24', 3, 5, 6),
(106, 6, '2017-08-24', 16, 4, 9),
(107, 9, '2017-08-24', 22, 4, 8),
(108, 9, '2017-08-24', 1, 1, 4),
(109, 5, '2017-08-24', 17, 4, 1),
(110, 6, '2017-08-24', 9, 9, 8),
(111, 1, '2017-08-24', 14, 6, 10),
(112, 3, '2017-08-24', 5, 8, 8),
(113, 5, '2017-08-24', 20, 7, 5),
(114, 2, '2017-08-24', 3, 4, 1),
(115, 1, '2017-08-24', 20, 2, 2),
(116, 5, '2017-08-24', 1, 3, 6),
(117, 5, '2017-08-24', 23, 4, 8),
(118, 6, '2017-08-24', 16, 8, 3),
(119, 9, '2017-08-24', 18, 5, 7),
(120, 9, '2017-08-24', 1, 9, 1),
(121, 5, '2017-08-24', 21, 4, 10),
(122, 6, '2017-08-24', 9, 4, 8),
(123, 1, '2017-08-24', 14, 1, 9),
(124, 3, '2017-08-24', 5, 4, 8),
(125, 5, '2017-08-24', 20, 4, 5),
(126, 2, '2017-08-24', 3, 8, 7),
(127, 1, '2017-08-24', 20, 8, 4),
(128, 1, '2017-08-24', 24, 7, 8),
(129, 3, '2017-08-24', 5, 8, 6),
(130, 5, '2017-08-24', 26, 2, 9),
(131, 2, '2017-08-24', 26, 3, 10),
(132, 1, '2017-08-24', 20, 5, 1),
(133, 7, '2017-08-25', 16, 9, 2),
(134, 6, '2017-08-25', 6, 6, 8),
(135, 2, '2017-08-25', 26, 8, 3),
(136, 9, '2017-08-25', 4, 4, 5),
(137, 9, '2017-08-25', 26, 4, 9),
(138, 4, '2017-08-25', 17, 1, 10),
(139, 7, '2017-08-25', 16, 4, 7),
(140, 6, '2017-08-25', 6, 4, 9),
(141, 2, '2017-08-25', 16, 5, 1),
(142, 9, '2017-08-25', 4, 4, 9),
(143, 9, '2017-08-25', 10, 9, 10),
(144, 4, '2017-08-25', 17, 8, 6),
(145, 3, '2017-08-25', 16, 2, 8),
(146, 2, '2017-08-25', 17, 7, 1),
(147, 1, '2017-08-25', 5, 4, 5),
(148, 1, '2017-08-25', 23, 3, 4),
(149, 7, '2017-08-25', 14, 9, 9),
(150, 5, '2017-08-25', 18, 9, 7),
(151, 2, '2017-08-25', 23, 9, 2),
(152, 9, '2017-08-25', 23, 6, 6),
(153, 9, '2017-08-25', 15, 9, 3),
(154, 4, '2017-08-25', 24, 8, 10),
(155, 4, '2017-08-25', 25, 4, 9),
(156, 1, '2017-08-25', 16, 1, 6),
(157, 1, '2017-08-25', 24, 9, 4),
(158, 7, '2017-08-25', 6, 8, 8),
(159, 5, '2017-08-25', 5, 9, 5),
(160, 2, '2017-08-25', 4, 2, 7),
(161, 3, '2017-08-25', 15, 7, 1),
(162, 10, '2017-08-25', 16, 9, 1),
(163, 5, '2017-08-25', 17, 9, 6),
(164, 6, '2017-08-25', 14, 9, 10),
(165, 9, '2017-08-25', 25, 4, 9),
(166, 9, '2017-08-25', 42, 3, 6),
(167, 4, '2017-08-25', 10, 6, 9),
(168, 5, '2017-08-25', 5, 5, 3),
(169, 3, '2017-08-25', 15, 9, 2),
(170, 10, '2017-08-25', 24, 8, 9),
(171, 5, '2017-08-25', 18, 1, 6),
(172, 6, '2017-08-25', 14, 10, 8),
(173, 5, '2017-08-25', 5, 10, 7),
(174, 3, '2017-08-25', 6, 10, 9),
(175, 10, '2017-08-25', 4, 2, 4),
(176, 5, '2017-08-25', 16, 7, 1),
(177, 6, '2017-08-25', 15, 9, 5),
(178, 9, '2017-08-25', 4, 4, 10),
(179, 2, '2017-08-25', 16, 10, 8),
(180, 1, '2017-08-25', 5, 6, 10),
(181, 7, '2017-08-25', 16, 3, 7),
(182, 6, '2017-08-25', 6, 9, 1),
(183, 2, '2017-08-25', 16, 1, 6),
(184, 9, '2017-08-25', 4, 10, 2),
(185, 9, '2017-08-25', 10, 10, 3),
(186, 4, '2017-08-25', 17, 5, 6),
(187, 3, '2017-08-25', 16, 10, 8),
(188, 2, '2017-08-25', 17, 7, 10),
(189, 1, '2017-08-25', 5, 8, 9),
(190, 1, '2017-08-25', 23, 2, 4),
(191, 7, '2017-08-25', 14, 4, 5),
(192, 5, '2017-08-25', 18, 6, 10),
(193, 2, '2017-08-25', 41, 10, 10),
(194, 9, '2017-08-25', 23, 10, 8),
(195, 9, '2017-08-25', 15, 9, 10),
(196, 4, '2017-08-25', 23, 3, 3),
(197, 4, '2017-08-25', 24, 10, 7),
(198, 1, '2017-08-25', 16, 10, 2),
(199, 1, '2017-08-25', 24, 10, 10),
(200, 7, '2017-08-25', 6, 4, 6),
(201, 5, '2017-08-25', 5, 1, 4),
(202, 2, '2017-08-25', 4, 8, 5),
(203, 3, '2017-08-25', 15, 10, 9),
(204, 10, '2017-08-25', 16, 10, 8),
(205, 5, '2017-08-25', 17, 10, 1),
(206, 6, '2017-08-25', 14, 7, 5),
(207, 9, '2017-08-25', 41, 9, 10),
(208, 9, '2017-08-25', 23, 7, 6),
(209, 4, '2017-08-25', 10, 7, 8),
(210, 5, '2017-08-25', 5, 7, 6),
(211, 3, '2017-08-25', 15, 3, 9),
(212, 10, '2017-08-25', 4, 4, 7),
(213, 5, '2017-08-25', 18, 7, 3),
(214, 6, '2017-08-25', 14, 8, 4),
(215, 5, '2017-08-25', 5, 2, 2),
(216, 3, '2017-08-25', 6, 9, 5),
(217, 10, '2017-08-25', 4, 7, 10),
(218, 5, '2017-08-25', 16, 7, 1),
(219, 6, '2017-08-25', 37, 5, 6),
(220, 9, '2017-08-25', 4, 7, 8),
(221, 2, '2017-08-25', 16, 5, 10),
(222, 1, '2017-08-25', 5, 1, 5),
(223, 5, '2017-08-25', 40, 8, 6),
(224, 3, '2017-08-25', 37, 5, 8),
(225, 10, '2017-08-25', 24, 9, 8),
(226, 5, '2017-08-25', 23, 5, 4),
(227, 6, '2017-08-25', 38, 9, 9),
(228, 5, '2017-08-25', 5, 4, 3),
(229, 3, '2017-08-25', 6, 3, 7),
(230, 10, '2017-08-25', 4, 2, 7),
(231, 5, '2017-08-25', 25, 8, 5),
(232, 6, '2017-08-25', 28, 5, 1),
(233, 9, '2017-08-25', 4, 5, 2),
(234, 3, '2017-08-26', 17, 1, 4),
(235, 7, '2017-08-26', 26, 5, 10),
(236, 7, '2017-08-26', 30, 7, 9),
(237, 5, '2017-08-26', 26, 5, 8),
(238, 10, '2017-08-26', 27, 8, 9),
(239, 2, '2017-08-26', 28, 5, 3),
(240, 7, '2017-08-26', 26, 4, 6),
(241, 7, '2017-08-26', 29, 5, 4),
(242, 5, '2017-08-26', 28, 9, 8),
(243, 10, '2017-08-26', 31, 5, 10),
(244, 2, '2017-08-26', 30, 3, 5),
(245, 6, '2017-08-26', 18, 7, 2),
(246, 5, '2017-08-26', 38, 1, 6),
(247, 4, '2017-08-26', 40, 8, 1),
(248, 3, '2017-08-26', 35, 5, 9),
(249, 2, '2017-08-26', 38, 6, 6),
(250, 1, '2017-08-26', 18, 5, 7),
(251, 1, '2017-08-26', 35, 2, 7),
(252, 5, '2017-08-26', 32, 9, 6),
(253, 10, '2017-08-26', 29, 8, 9),
(254, 2, '2017-08-26', 37, 7, 8),
(255, 6, '2017-08-26', 17, 4, 10),
(256, 5, '2017-08-26', 27, 3, 10),
(257, 7, '2017-08-26', 28, 5, 3),
(258, 5, '2017-08-26', 35, 5, 4),
(259, 4, '2017-08-26', 29, 8, 5),
(260, 3, '2017-08-26', 30, 5, 2),
(261, 4, '2017-08-26', 26, 1, 9),
(262, 3, '2017-08-26', 29, 9, 10),
(263, 2, '2017-08-26', 37, 5, 9),
(264, 1, '2017-08-26', 34, 5, 6),
(265, 1, '2017-08-26', 29, 8, 1),
(266, 10, '2017-08-26', 33, 2, 7),
(267, 5, '2017-08-26', 31, 5, 7),
(268, 6, '2017-08-26', 18, 5, 10),
(269, 9, '2017-08-26', 27, 5, 7),
(270, 4, '2017-08-26', 32, 4, 9),
(271, 3, '2017-08-26', 29, 8, 3),
(272, 2, '2017-08-26', 39, 7, 4),
(273, 1, '2017-08-26', 17, 7, 5),
(274, 1, '2017-08-26', 18, 7, 2),
(275, 9, '2017-08-26', 28, 5, 10),
(276, 4, '2017-08-26', 36, 1, 7),
(277, 5, '2017-08-26', 28, 9, 10),
(278, 2, '2017-08-26', 30, 2, 6),
(279, 1, '2017-08-26', 38, 6, 3),
(280, 3, '2017-08-26', 27, 8, 8),
(281, 7, '2017-08-26', 17, 7, 5),
(282, 1, '2017-08-26', 33, 4, 1),
(283, 3, '2017-08-26', 53, 8, 9),
(284, 6, '2017-08-27', 54, 7, 4),
(285, 2, '2017-08-27', 53, 9, 2),
(286, 9, '2017-08-27', 39, 9, 9),
(287, 4, '2017-08-27', 54, 7, 10),
(288, 3, '2017-08-27', 36, 6, 9),
(289, 2, '2017-08-27', 32, 7, 2),
(290, 1, '2017-08-27', 39, 9, 7),
(291, 7, '2017-08-26', 31, 1, 5),
(292, 1, '2017-08-26', 53, 3, 8),
(293, 3, '2017-08-26', 34, 5, 4),
(294, 6, '2017-08-27', 39, 4, 3),
(295, 2, '2017-08-27', 53, 8, 2),
(296, 9, '2017-08-27', 53, 8, 6),
(297, 4, '2017-08-27', 35, 7, 1),
(298, 3, '2017-08-27', 54, 8, 9),
(299, 2, '2017-08-27', 54, 7, 2),
(300, 1, '2017-08-27', 53, 6, 10),
(301, 2, '2017-08-27', 54, 7, 7),
(302, 2, '2017-08-27', 33, 9, 5),
(303, 9, '2017-08-27', 39, 7, 2),
(304, 4, '2017-08-27', 32, 9, 8),
(305, 3, '2017-08-27', 40, 2, 5),
(306, 2, '2017-08-27', 41, 1, 4),
(307, 1, '2017-08-27', 42, 7, 2),
(308, 1, '2017-08-27', 39, 8, 3),
(309, 7, '2017-08-27', 44, 9, 2),
(310, 5, '2017-08-27', 70, 3, 6),
(311, 4, '2017-08-27', 45, 7, 10),
(312, 3, '2017-08-27', 33, 7, 9),
(313, 10, '2017-08-27', 36, 7, 2),
(314, 5, '2017-08-27', 31, 5, 8),
(315, 7, '2017-08-27', 43, 3, 9),
(316, 7, '2017-08-27', 46, 8, 2),
(317, 5, '2017-08-27', 34, 2, 1),
(318, 4, '2017-08-27', 45, 6, 4),
(319, 7, '2017-08-27', 32, 8, 5),
(320, 5, '2017-08-27', 46, 3, 5),
(321, 4, '2017-08-27', 55, 4, 2),
(322, 5, '2017-08-27', 56, 1, 3),
(323, 4, '2017-08-27', 54, 7, 2),
(324, 6, '2017-08-27', 55, 3, 2),
(325, 3, '2017-08-27', 57, 8, 3),
(326, 5, '2017-08-27', 55, 3, 7),
(327, 4, '2017-08-27', 54, 3, 7),
(328, 8, '2017-08-27', 57, 3, 2),
(329, 2, '2017-08-27', 55, 5, 7),
(330, 9, '2017-08-27', 57, 6, 8),
(331, 9, '2017-08-27', 57, 3, 5),
(332, 4, '2017-08-27', 56, 2, 7),
(333, 4, '2017-08-27', 41, 5, 4),
(334, 5, '2017-08-27', 40, 3, 9),
(335, 4, '2017-08-27', 33, 3, 1),
(336, 6, '2017-08-27', 45, 5, 2),
(337, 3, '2017-08-27', 46, 4, 6),
(338, 5, '2017-08-27', 73, 7, 7),
(339, 4, '2017-08-27', 70, 9, 3),
(340, 8, '2017-08-27', 46, 1, 2),
(341, 2, '2017-08-27', 45, 2, 9),
(342, 9, '2017-08-27', 40, 6, 5),
(343, 9, '2017-08-27', 31, 8, 8),
(344, 4, '2017-08-27', 33, 3, 7),
(345, 5, '2017-08-28', 43, 3, 6),
(346, 2, '2017-08-28', 55, 3, 5),
(347, 1, '2017-08-28', 57, 5, 7),
(348, 3, '2017-08-28', 56, 5, 4),
(349, 5, '2017-08-28', 43, 3, 3),
(350, 2, '2017-08-28', 56, 3, 1),
(351, 1, '2017-08-28', 47, 3, 10),
(352, 3, '2017-08-28', 56, 3, 3),
(353, 7, '2017-08-28', 43, 2, 7),
(354, 9, '2017-08-28', 42, 6, 2),
(355, 4, '2017-08-28', 36, 1, 6),
(356, 5, '2017-08-28', 34, 3, 9),
(357, 2, '2017-08-28', 44, 4, 6),
(358, 1, '2017-08-28', 35, 8, 5),
(359, 3, '2017-08-28', 47, 7, 7),
(360, 7, '2017-08-28', 48, 3, 4),
(361, 9, '2017-08-28', 49, 3, 5),
(362, 4, '2017-08-28', 50, 4, 3),
(363, 2, '2017-08-28', 48, 6, 6),
(364, 1, '2017-08-28', 71, 3, 3),
(365, 3, '2017-08-28', 49, 2, 1),
(366, 7, '2017-08-28', 50, 3, 4),
(367, 9, '2017-08-28', 49, 3, 8),
(368, 2, '2017-08-28', 61, 5, 9),
(369, 4, '2017-08-28', 44, 3, 2),
(370, 2, '2017-08-28', 34, 1, 10),
(371, 1, '2017-08-28', 36, 4, 8),
(372, 3, '2017-08-28', 42, 3, 4),
(373, 7, '2017-08-28', 47, 3, 5),
(374, 6, '2017-08-28', 71, 7, 6),
(375, 2, '2017-08-28', 34, 3, 10),
(376, 4, '2017-08-28', 48, 1, 3),
(377, 2, '2017-08-28', 35, 2, 4),
(378, 1, '2017-08-28', 42, 10, 3),
(379, 3, '2017-08-28', 48, 8, 1),
(380, 7, '2017-08-28', 43, 4, 9),
(381, 1, '2017-08-28', 62, 1, 5),
(382, 3, '2017-08-28', 70, 6, 8),
(383, 9, '2017-08-28', 49, 5, 2),
(384, 4, '2017-08-28', 42, 10, 5),
(385, 4, '2017-08-28', 61, 3, 6),
(386, 1, '2017-08-28', 58, 4, 7),
(387, 3, '2017-08-28', 59, 10, 10),
(388, 7, '2017-08-28', 60, 1, 9),
(389, 9, '2017-08-28', 58, 2, 4),
(390, 4, '2017-08-28', 58, 10, 3),
(391, 3, '2017-08-29', 52, 10, 3),
(392, 2, '2017-08-29', 51, 7, 7),
(393, 1, '2017-08-29', 50, 9, 7),
(394, 1, '2017-08-29', 58, 8, 1),
(395, 3, '2017-08-29', 52, 9, 6),
(396, 7, '2017-08-28', 60, 10, 9),
(397, 9, '2017-08-28', 58, 10, 8),
(398, 4, '2017-08-28', 58, 2, 4),
(399, 3, '2017-08-29', 52, 10, 2),
(400, 2, '2017-08-29', 51, 10, 5),
(401, 1, '2017-08-29', 50, 5, 7),
(402, 1, '2017-08-29', 58, 10, 5),
(403, 3, '2017-08-29', 52, 1, 3),
(404, 2, '2017-08-29', 58, 4, 10),
(405, 1, '2017-08-29', 50, 10, 3),
(406, 1, '2017-08-29', 58, 10, 10),
(407, 7, '2017-08-29', 63, 6, 10),
(408, 5, '2017-08-29', 61, 10, 9),
(409, 4, '2017-08-29', 62, 10, 1),
(410, 2, '2017-08-29', 63, 2, 4),
(411, 1, '2017-08-29', 50, 10, 7),
(412, 1, '2017-08-29', 63, 3, 6),
(413, 7, '2017-08-29', 50, 7, 7),
(414, 5, '2017-08-29', 61, 9, 3),
(415, 4, '2017-08-29', 62, 2, 2),
(416, 7, '2017-08-29', 62, 5, 8),
(417, 5, '2017-08-29', 69, 2, 5),
(418, 4, '2017-08-29', 50, 8, 5),
(419, 2, '2017-08-29', 51, 7, 3),
(420, 1, '2017-08-29', 52, 2, 4),
(421, 1, '2017-08-29', 58, 1, 10),
(422, 7, '2017-08-29', 61, 4, 7),
(423, 5, '2017-08-29', 58, 2, 1),
(424, 4, '2017-08-29', 63, 2, 8),
(425, 3, '2017-08-29', 69, 2, 7),
(426, 10, '2017-08-29', 50, 6, 10),
(427, 5, '2017-08-29', 69, 9, 2),
(428, 6, '2017-08-29', 70, 7, 3),
(429, 9, '2017-08-29', 69, 2, 6),
(430, 2, '2017-08-29', 52, 3, 10),
(431, 1, '2017-08-29', 50, 5, 6),
(432, 1, '2017-08-29', 59, 2, 4),
(433, 7, '2017-08-29', 60, 8, 2),
(434, 5, '2017-08-29', 63, 2, 3),
(435, 4, '2017-08-29', 52, 9, 5),
(436, 9, '2017-08-29', 52, 9, 2),
(437, 4, '2017-08-29', 51, 4, 8),
(438, 2, '2017-08-29', 62, 2, 5),
(439, 1, '2017-08-29', 51, 1, 7),
(440, 1, '2017-08-29', 61, 5, 1),
(441, 7, '2017-08-29', 50, 6, 6),
(442, 5, '2017-08-29', 52, 10, 2),
(443, 4, '2017-08-29', 59, 7, 3),
(444, 5, '2017-08-29', 61, 10, 8),
(445, 2, '2017-08-29', 65, 3, 4),
(446, 1, '2017-08-29', 62, 4, 5),
(447, 3, '2017-08-29', 62, 2, 9),
(448, 7, '2017-08-29', 50, 8, 10),
(449, 5, '2017-08-30', 71, 9, 6),
(450, 2, '2017-08-30', 64, 10, 4),
(451, 1, '2017-08-30', 72, 10, 7),
(452, 4, '2017-08-30', 71, 9, 2),
(453, 3, '2017-08-30', 63, 10, 8),
(454, 10, '2017-08-30', 64, 1, 3),
(455, 5, '2017-08-30', 63, 4, 9),
(456, 1, '2017-08-30', 67, 2, 10),
(457, 4, '2017-08-30', 66, 10, 5),
(458, 6, '2017-08-30', 65, 5, 1),
(459, 9, '2017-08-30', 64, 6, 10),
(460, 3, '2017-08-30', 73, 10, 9),
(461, 3, '2017-08-30', 64, 9, 4),
(462, 10, '2017-08-30', 75, 9, 8),
(463, 5, '2017-08-30', 73, 3, 6),
(464, 6, '2017-08-30', 72, 4, 6),
(465, 3, '2017-08-30', 63, 10, 7),
(466, 6, '2017-08-30', 66, 10, 10),
(467, 5, '2017-08-30', 72, 7, 10),
(468, 1, '2017-08-30', 64, 2, 3),
(469, 4, '2017-08-30', 67, 1, 7),
(470, 6, '2017-08-30', 65, 9, 8),
(471, 9, '2017-08-30', 68, 9, 3),
(472, 6, '2017-08-30', 64, 8, 5),
(473, 9, '2017-08-30', 64, 2, 4),
(474, 9, '2017-08-30', 74, 2, 2),
(475, 3, '2017-08-30', 71, 9, 10),
(476, 3, '2017-08-30', 72, 4, 1),
(477, 10, '2017-08-30', 63, 2, 9),
(478, 5, '2017-08-30', 65, 2, 6),
(479, 3, '2017-08-30', 63, 7, 10),
(480, 3, '2017-08-30', 68, 6, 3),
(481, 10, '2017-08-30', 63, 3, 8),
(482, 5, '2017-08-30', 64, 2, 5),
(483, 1, '2017-08-30', 71, 2, 4),
(484, 4, '2017-08-30', 74, 2, 5),
(485, 3, '2017-08-30', 65, 5, 7),
(486, 10, '2017-08-30', 66, 2, 8),
(487, 5, '2017-08-30', 65, 1, 6),
(488, 1, '2017-08-30', 63, 4, 10),
(489, 4, '2017-08-30', 64, 2, 2),
(490, 6, '2017-08-30', 64, 8, 3),
(491, 9, '2017-08-30', 65, 7, 1),
(492, 9, '2017-08-30', 76, 3, 4),
(493, 5, '2017-08-30', 71, 2, 10),
(494, 2, '2017-08-31', 75, 4, 8),
(495, 1, '2017-08-31', 76, 3, 5),
(496, 4, '2017-08-31', 66, 10, 10),
(497, 3, '2017-08-31', 67, 10, 9),
(498, 10, '2017-08-31', 74, 10, 10),
(499, 5, '2017-08-31', 68, 10, 9),
(500, 1, '2017-08-31', 66, 7, 4),
(501, 4, '2017-08-31', 74, 2, 7),
(502, 6, '2017-08-31', 66, 6, 1),
(503, 9, '2017-08-31', 76, 5, 9),
(504, 3, '2017-08-31', 76, 6, 6),
(505, 3, '2017-08-31', 76, 1, 3),
(506, 10, '2017-08-31', 68, 8, 2),
(507, 5, '2017-08-31', 75, 10, 3),
(508, 6, '2017-08-31', 76, 10, 9),
(509, 3, '2017-08-31', 76, 7, 5),
(510, 6, '2017-08-31', 73, 4, 8),
(511, 9, '2017-08-31', 66, 10, 5),
(512, 3, '2017-08-31', 75, 3, 6),
(513, 3, '2017-08-31', 76, 1, 3),
(514, 3, '2017-08-31', 75, 3, 1),
(515, 10, '2017-08-31', 67, 10, 4),
(516, 5, '2017-08-31', 68, 10, 9),
(517, 1, '2017-08-31', 76, 10, 4),
(518, 4, '2017-08-31', 76, 5, 5),
(519, 3, '2017-08-31', 75, 3, 8),
(520, 10, '2017-08-31', 67, 6, 4),
(521, 5, '2017-08-31', 76, 9, 6),
(522, 1, '2017-08-31', 68, 8, 3),
(523, 4, '2017-08-31', 75, 1, 5),
(524, 6, '2017-08-31', 68, 6, 8),
(525, 9, '2017-08-31', 74, 4, 3),
(526, 9, '2017-08-31', 68, 3, 4);
select*from Booking