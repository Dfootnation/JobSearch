DROP TABLE IF EXISTS job;

CREATE TABLE job (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    skills VARCHAR(50) NOT NULL
);

insert into job values (NULL, 'Senior developer - golden opportunity', 'Sydney', 'C, C++'),
                        (NULL, 'Web developer', 'Melbourne', 'Python, Java'),
                        (NULL, 'Database administrator', 'Alice Springs', 'SQL'),
                        (NULL, 'Senior developer', 'Sydney', 'C, C++'),
                        (NULL, 'Script kiddy', 'Sydney', 'Python'),
                        (NULL, 'Software engineer', 'Brisbane', 'C#'),
                        (NULL, 'Desktop Support', 'Melbourne', 'Windows'),
                        (NULL, 'Database guru wanted', 'Melbourne', 'SQL, Java'),
                        (NULL, 'Crypto opportunity', 'Sydney', 'HTML, CSS, JS');