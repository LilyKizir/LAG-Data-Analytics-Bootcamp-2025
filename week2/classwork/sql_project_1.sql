-- CREATE TABLE video(
-- video_id serial PRIMARY KEY,
-- title VARCHAR(255),
-- video_length TIME,
-- url VARCHAR(255) UNIQUE
-- );

-- INSERT INTO video(title, video_length, url)
-- VALUES
-- ('Power BI for Data Analytics - Full Course for Beginners','8:24:30','https://www.youtube.com/watch?v=FwjaHCVNBWA'),
-- ('SQL for Data Analytics - Learn SQL in 4 Hours','4:08:40','https://www.youtube.com/watch?v=7mz73uXD9DA'),
-- ('Excel for Data Analytics - Full Course for Beginners','10:59:42','https://www.youtube.com/watch?v=pCJ15nGFgVg&t=15321s');

-- CREATE TABLE reviewer(
-- reviewer_id serial PRIMARY KEY,
-- username VARCHAR(55),
-- rating INT CHECK (rating >= 0 AND rating <= 5),
-- review_description VARCHAR(255),
-- video_id INT,
-- CONSTRAINT fk_video FOREIGN KEY (video_id)
-- REFERENCES video(video_id)
-- );

-- SELECT *
-- FROM video;

-- INSERT INTO reviewer(username, rating, review_description, video_id)
-- VALUES
-- ('elmehdinahid3467', 5,'Completed !! If you are reading this, hit the like button to remind me to finish the Power BI course. Thanks Luke for this GEM.',3),
-- ('roxymax8917', 5,'Good people still exist on this greedy planet. My man just uploaded an 11-hour-long Excel tutorial video for FREE',3),
-- ('alexandramadu5412', 5,'I started my data analytics journey this month. Ill be tracking my progress with Excel starting here today 20th August. Please like my comment so I can come back to this',3),
-- ('AMINE-yy3zb', 5,'Something is strange here: this course is working for me. Something is magically not right. Thank you Luke!',2),
-- ('wetsand7379', 5,'Im in school for data analytics and this course has been FAR more helpful than any of my classes so far. Thanks a lot!',2),
-- ('TableauTim', 5,'Stop it Luke Stop it! I watched the first 5 minutes without meaning to! and its a video about SQL.... bravo!',2),
-- ('blackleapord6498', 5,'This man has completed every possible course under the sun in the field of data analytics. Believe me, he could put overpriced course-selling companies out of business. Thank you so much, man!',1),
-- ('TzukSen', 5,'Thank you so much for this course Luke, you got me started as a Data analytics intern at a pharmaceutical. Truly thank you!',1),
-- ('markymark9740', 5,'I was just thinking I need to brush up on Power BI.  You sir are the GOAT.',1);

-- SELECT *
-- FROM reviewer r
-- INNER JOIN video v
-- ON r.video_id = v.video_id;

