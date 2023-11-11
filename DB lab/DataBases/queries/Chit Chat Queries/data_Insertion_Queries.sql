--use chit_chat

--INSERT INTO Users (user_id, username, email, password) VALUES
--(1, 'Zain', 'Zain@example.com', 'password123'),
--(2, 'Hammad', 'Hammad@example.com', 'password321'),
--(3, 'Umer', 'Umer@example.com', 'password456'),
--(4, 'Haseeb', 'Haseeb@example.com', 'password654'),
--(5, 'Numan', 'Numan@example.com', 'password789'),
--(6, 'Salman', 'Salman@example.com', 'password987'),
--(7, 'Farjad', 'Farjad@example.com', 'password012')
--;


--INSERT INTO Posts (post_id, user_id, content, timestamp) VALUES
--(1, 1, 'Hello, world!', '2023-02-14 10:30:00'),
--(2, 2, 'Hello, Pakistan!', '2023-02-15 10:30:00'),
--(3, 3, 'Hello, Punjab!', '2023-02-16 10:30:00'),
--(4, 4, 'Hello, Lahore!', '2023-02-17 10:30:00'),
--(5, 5, 'Hello, Baghbanpura!', '2023-02-18 10:30:00'),
--(6, 6, 'Hello, Uet!', '2023-02-19 10:30:00'),
--(7, 7, 'Hello, Farjad!', '2023-02-20 10:30:00')
--;


--INSERT INTO Photos (photo_id, user_id, caption, image_url, timestamp) VALUES
--(1, 1, 'My cat', 'https://example.com/cat.jpg', '2023-02-14 11:00:00'),
--(2, 2, 'My Dog', 'https://example.com/Dog.jpg', '2023-02-15 11:00:00'),
--(3, 3, 'My Uni', 'https://example.com/uni.jpg', '2023-02-16 11:00:00'),
--(4, 4, 'My Class', 'https://example.com/class.jpg', '2023-02-17 11:00:00'),
--(5, 5, 'My Student', 'https://example.com/student.jpg', '2023-02-18 11:00:00'),
--(6, 6, 'My friend', 'https://example.com/friend.jpg', '2023-02-19 11:00:00'),
--(7, 7, 'My room', 'https://example.com/room.jpg', '2023-02-20 11:00:00')
--;


--INSERT INTO Videos (video_id, user_id, title, video_url, timestamp) VALUES
--(1, 1, 'My travel video', 'https://example.com/travel.mp4', '2023-02-14 12:00:00'),
--(2, 2, 'My birthday video', 'https://example.com/birthday.mp4', '2023-02-15 12:00:00'),
--(3, 3, 'My wedding video', 'https://example.com/wedding.mp4', '2023-02-16 12:00:00'),
--(4, 4, 'My university video', 'https://example.com/university.mp4', '2023-02-17 12:00:00'),
--(5, 5, 'friends gathering video', 'https://example.com/friends_gathering.mp4', '2023-02-18 12:00:00'),
--(6, 6, 'My editing video', 'https://example.com/editing.mp4', '2023-02-19 12:00:00'),
--(7, 7, 'My course video', 'https://example.com/course.mp4', '2023-02-20 12:00:00')
--;


--INSERT INTO Interactions (interaction_id, user_id, post_id, action, timestamp) VALUES
--(1, 1, 1, 'like', '2023-02-14 10:35:00'),
--(2, 2, 2, 'follow', '2023-02-15 10:35:00'),
--(3, 3, 3, 'unlike', '2023-02-16 10:35:00'),
--(4, 4, 4, 'like', '2023-02-17 10:35:00'),
--(5, 5, 5, 'like', '2023-02-18 10:35:00'),
--(6, 6, 6, 'unlike', '2023-02-19 10:35:00'),
--(7, 7, 7, 'like', '2023-02-20 10:35:00')
--;