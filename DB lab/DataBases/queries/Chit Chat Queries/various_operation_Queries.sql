--use chit_chat

--SELECT * FROM Users;
--returns all the enteries


--this querie will return the rows in ordered form in terms of most recent entry
--SELECT * FROM Interactions ORDER BY timestamp DESC;


--this querie returns the top 5 rows in desc order
--SELECT TOP 5 post_id, content, user_id
--FROM Posts
--ORDER BY user_id DESC; 


--this querie will return all the rows whose username starts with S and contains total of 6 characters
--SELECT * FROM Users WHERE username LIKE 'S_____';


--select *from Posts where content like '%,%'


--Select the most recent 3 interactions and their associated user and post information:

--select top 3 Interactions.*, Users.username, Posts.content
--from Interactions
--INNER JOIN Users ON Interactions.user_id = Users.user_id
--INNER JOIN Posts ON Interactions.post_id = Posts.post_id
--order by Interactions.timestamp ;


--The data types text and varchar are incompatible in the equal to operator.
--This indicates that there is an error to compare two columns
--of different data types, specifically the "text" and "varchar" data types,
--using the equal to operator. To resolve the error, you can convert one of
--the data types to match the other using the CAST or CONVERT functions.
--For example:

--SELECT *
--FROM Users
--WHERE CAST(username AS varchar) = 'Hammad'


--Count the number of interactions for each post

--SELECT post_id,user_id, COUNT(*) AS num_interactions
--FROM Interactions
--WHERE post_id IS NOT NULL
--GROUP BY post_id, user_id;

--This query retrieves the number of interactions for each user on each post in the Interactions table. Here's a breakdown of the individual parts of the query:

--SELECT post_id,user_id, COUNT(*) AS num_interactions
--This line selects the post_id and user_id columns from the Interactions table, as well as the count of the number of rows that have the same combination of post_id and user_id. The COUNT(*) function counts the number of rows that match the specified condition, and the AS num_interactions clause renames the count column to num_interactions.

--FROM Interactions
--This line specifies the table from which to retrieve the data, in this case the Interactions table.

--WHERE post_id IS NOT NULL
--This line filters the results to only include interactions that are associated with a specific post, as indicated by the post_id column being not null.

--GROUP BY post_id, user_id;
--This line groups the results by both the post_id and user_id columns. The COUNT(*) function then counts the number of rows that have the same combination of post_id and user_id values, returning the number of interactions for each user on each post in the Interactions table.

--Overall, this query is useful for understanding which users have interact

--ed with which posts in the Interactions table, and how many interactions they have had. By grouping the results by both the post_id and user_id columns, you can get a more detailed view of the interactions on each post and how they were distributed among the users who interacted with them.
