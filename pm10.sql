CREATE  DATABASE info;
USE info;
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    grade INT,
    status VARCHAR(10)
);
-- 
DELIMITER +
CREATE TRIGGER check_grade BEFORE INSERT ON Students FOR EACH ROW BEGIN
    DECLARE new_grade INT;
        SET new_grade = NEW.grade;
    
        IF new_grade < 0 OR new_grade > 100 THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid grade value';
    END IF;
        IF new_grade < 60 THEN 
        SET NEW.status = 'Fail';
    END IF;
END+
DELIMITER  ;
INSERT INTO Students (id, name, grade) VALUES 
(1, 'Alice', 85), 
(2, 'Bob', 75), 
(3, 'Charlie', 55), 
(4, 'David', 10); 


SELECT * FROM Students;T=