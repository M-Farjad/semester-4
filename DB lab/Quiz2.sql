--Question # 1
select distinct MName,TypeID from Movie, Movie_type where 
Realease_Date between '2015' and '2016' 


--Question # 2
select c.CName , m.MName , b.screen_movie_ID,
b.no_of_seats from Customer as c,Movie as m,
Booking as b where b.no_of_seats > '5' and 
b.screen_movie_ID = m.MovieID and c.CID = b.CID

select distinct *  from
Customer ,Movie ,Booking
--Question # 3
select  s.SName,s.SDesignation,m.MName,b.BID
from Staff as s,Movie as m,Booking as b
where m.MName = 'The Dark Tower' and b.SID = s.SID


--Question # 4
select mc.CatID,COUNT(b.no_of_seats) as Seats from  
Movie_Category as mc,booking as b,Movie as m  
where m.MovieID = mc.MovieID
group by mc.CatID

--Question # 5 <<<<<<<
select m.MName,mt.TName from Movie as m,MType as mt,
Movie_Type as mot
where m.MovieID = mot.MovieID and 
mot.TypeID = mt.TypeID 


--Question # 6
select  s.SName,m.MName
from Staff as s,Movie as m,Booking as b
where b.SID = s.SID or b.SID is null

--Question # 7
SELECT Category.CatName, Movie.MName
FROM Category
LEFT JOIN Movie_Category ON Category.CatID = Movie_Category.CatID
LEFT JOIN Movie ON Movie_Category.MovieID = Movie.MovieID;

--Question # 8
SELECT Customer.CName, Movie.MName
FROM Customer
LEFT JOIN Booking ON Customer.CID = Booking.CID
LEFT JOIN Movie ON Booking.Screen_Movie_ID = Movie.MovieID;

--Question # 9
SELECT Movie.MName, SUM(Booking.No_of_Seats) AS total_booked_seats
FROM Movie
LEFT JOIN Booking ON Movie.MovieID = Booking.Screen_Movie_ID
GROUP BY Movie.MovieID, Movie.MName;

--Question # 10
SELECT Category.CatName, COUNT(Movie.MovieID) AS movie_count
FROM Movie
JOIN Movie_Category  ON Movie.MovieID = Movie_Category.MovieID
JOIN Category ON Category.CatID = Movie_Category.CatID
GROUP BY Category.CatName
ORDER BY movie_count DESC;

--Question # 12
select S.SName from Staff as s,Booking as b
where s.SAddress = 'Johar Town' and b.SID = s.SID
and b.BID is null

------Question # 13
----select c.CatID from Movie_Category as c,Movie as m
----where 



