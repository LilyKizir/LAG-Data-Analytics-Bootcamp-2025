CREATE TABLE video(
video_id serial PRIMARY KEY,
title VARCHAR(255),
video_length TIME,
url VARCHAR(255) UNIQUE
);

INSERT INTO video(title, video_length, url)
VALUES
('Power BI for Data Analytics - Full Course for Beginners','8:24:30','https://www.youtube.com/watch?v=FwjaHCVNBWA'),
('SQL for Data Analytics - Learn SQL in 4 Hours','4:08:40','https://www.youtube.com/watch?v=7mz73uXD9DA'),
('Excel for Data Analytics - Full Course for Beginners','10:59:42','https://www.youtube.com/watch?v=pCJ15nGFgVg&t=15321s');

CREATE TABLE reviewer(
reviewer_id serial PRIMARY KEY,
first_name VARCHAR(55),
last_initial VARCHAR(55),
rating INT CHECK (rating >= 0 AND rating <= 5),
review_description VARCHAR(255),
video_id INT,
CONSTRAINT fk_video FOREIGN KEY (video_id)
REFERENCES video(video_id)
);

SELECT *
FROM video;

INSERT INTO reviewer(first_name, last_initial, rating, review_description, video_id)
VALUES
('Lily','K', 5,'LOVEDDD it',1),
('Lily','K', 5,'LOVEDDD it',2),
('Lily','K', 5,'LOVEDDD it',3),
('Mily','J', 3,'Meh',1),
('Mily','J', 3,'Meh',3),
('Mily','J', 3,'Meh',3),
('Bily','L', 0,'Hated it',1),
('Bily','L', 0,'Hated it',2),
('Bily','L', 0,'Hated it',2);

SELECT *
FROM reviewer r
INNER JOIN video v
ON r.video_id = v.video_id;

