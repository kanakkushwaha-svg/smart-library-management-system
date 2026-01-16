Use smart_library;

DROP TABLE IF EXISTS issued_books;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS books;
SET SQL_SAFE_UPDATES = 0;


CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    category VARCHAR(100),
    quantity INT
);


INSERT INTO books (book_id, title, author, category, quantity) VALUES
(101,'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 4),
(102,'Database System Concepts', 'Silberschatz', 'Computer Science', 5),
(103,'Operating System Concepts', 'Abraham Silberschatz', 'Computer Science', 3),
(104,'Digital Logic Design', 'M. Morris Mano', 'Electronics', 6),
(105,'Signals and Systems', 'Alan V. Oppenheim', 'Electronics', 4),
(106,'Engineering Mathematics', 'Erwin Kreyszig', 'Mathematics', 8),
(107,'Thermodynamics: An Engineering Approach', 'Yunus A. Cengel', 'Mechanical', 5),
(108,'Strength of Materials', 'R.K. Bansal', 'Mechanical', 7),
(109,'Basic Civil Engineering', 'S.S. Bhavikatti', 'Civil', 6),
(110,'Environmental Studies', 'Erach Bharucha', 'Environmental Science', 10),
(111,'Data Communication and Networking', 'Behrouz A. Forouzan', 'Computer Science', 4),
(112,'Discrete Mathematics and Applications', 'Rosen', 'Mathematics', 6),
(113,'Python Programming', 'John Zelle', 'Computer Science', 5),
(114,'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Computer Science', 3),
(115,'Engineering Physics', 'H.K. Malik', 'Physics', 9),
(116, 'Computer Networks', 'Andrew S. Tanenbaum', 'Computer Science', 6),
(117, 'Java: The Complete Reference', 'Herbert Schildt', 'Computer Science', 7),
(118, 'C Programming Language', 'Brian W. Kernighan', 'Computer Science', 5),
(119, 'Web Technologies: HTML, CSS, JavaScript', 'Ramesh Bangia', 'IT', 8),
(120, 'Software Engineering', 'Ian Sommerville', 'Computer Science', 4),
(121, 'Cloud Computing Concepts', 'Rajkumar Buyya', 'IT', 5),
(122, 'Mobile Computing', 'Asoke K. Talukder', 'IT', 6),
(123, 'Machine Learning Basics', 'Tom M. Mitchell', 'Computer Science', 3),
(124, 'Deep Learning Essentials', 'Ian Goodfellow', 'Computer Science', 4),
(125, 'Cyber Security Fundamentals', 'Nina Godbole', 'IT', 9),

(126, 'Electrical Technology', 'B.L. Theraja', 'Electrical', 7),
(127, 'Basic Electrical Engineering', 'Mittle & Mittal', 'Electrical', 10),
(128, 'Power System Analysis', 'Hadi Saadat', 'Electrical', 5),
(129, 'Control Systems Engineering', 'Nise', 'Electrical', 6),
(130, 'Electrical Machines', 'P.S. Bimbhra', 'Electrical', 4),

(131, 'Electronic Devices and Circuits', 'David A. Bell', 'Electronics', 8),
(132, 'Microprocessors & Interfacing', 'Douglas Hall', 'Electronics', 6),
(133, 'Analog Communication', 'Simon Haykin', 'Electronics', 7),
(134, 'Digital Communication', 'Proakis', 'Electronics', 5),
(135, 'VLSI Design', 'Wayne Wolf', 'Electronics', 3),

(136, 'Engineering Chemistry', 'Jain & Jain', 'Chemistry', 12),
(137, 'Environmental Engineering', 'P.V. Rao', 'Civil', 6),
(138, 'Fluid Mechanics', 'R.K. Bansal', 'Civil', 9),
(139, 'Structural Analysis', 'C.S. Reddy', 'Civil', 7),
(140, 'Surveying Vol-1', 'B.C. Punmia', 'Civil', 8),

(141, 'Engineering Drawing', 'N.D. Bhatt', 'Mechanical', 11),
(142, 'Heat and Mass Transfer', 'J.P. Holman', 'Mechanical', 5),
(143, 'Refrigeration and Air Conditioning', 'C.P. Arora', 'Mechanical', 6),
(144, 'Theory of Machines', 'S.S. Rattan', 'Mechanical', 7),
(145, 'Fluid Machinery', 'R.K. Rajput', 'Mechanical', 9),

(146, 'Advanced Mathematics for Engineers', 'B.S. Grewal', 'Mathematics', 10),
(147, 'Linear Algebra and Its Applications', 'Gilbert Strang', 'Mathematics', 4),
(148, 'Probability and Statistics', 'Walpole', 'Mathematics', 6),
(149, 'Numerical Methods', 'S.S. Sastry', 'Mathematics', 5),
(150, 'Discrete Mathematical Structures', 'Kolman', 'Mathematics', 7),

(151, 'Engineering Physics-II', 'Gaur & Gupta', 'Physics', 8),
(152, 'Optics and Laser Physics', 'Ajoy Ghatak', 'Physics', 6),
(153, 'Modern Physics', 'Arthur Beiser', 'Physics', 7),
(154, 'Quantum Mechanics', 'Griffiths', 'Physics', 4),
(155, 'Waves and Oscillations', 'N.K. Bajaj', 'Physics', 9),

(156, 'Soft Computing Techniques', 'S.N. Sivanandam', 'Computer Science', 6),
(157, 'Data Warehousing and Mining', 'Ponniah', 'Computer Science', 4),
(158, 'Information Security', 'Mark Stamp', 'IT', 7),
(159, 'Agile Project Management', 'Jim Highsmith', 'Management', 5),
(160, 'Human Computer Interaction', 'Alan Dix', 'Computer Science', 6),

(161, 'Operating Systems Internals', 'William Stallings', 'Computer Science', 4),
(162, 'Data Structures Using C', 'Reema Thareja', 'Computer Science', 8),
(163, 'Computer Graphics', 'Donald Hearn', 'Computer Science', 5),
(164, 'Distributed Systems', 'Tanenbaum', 'Computer Science', 6),
(165, 'Compiler Design', 'Alfred Aho', 'Computer Science', 3),

(166, 'Nanotechnology Fundamentals', 'Rakesh Kumar', 'Science', 4),
(167, 'Biotechnology Basics', 'S.C. Rastogi', 'Biotech', 7),
(168, 'Robotics Engineering', 'Bruno Siciliano', 'Mechanical', 5),
(169, 'Artificial Neural Networks', 'B. Yegnanarayana', 'Computer Science', 4),
(170, 'Blockchain Technology', 'Imran Bashir', 'IT', 6),

(171, 'Internet of Things (IoT) Concepts', 'Arshdeep Bahga', 'Electronics', 7),
(172, 'Embedded Systems', 'Raj Kamal', 'Electronics', 8),
(173, 'Wireless Communication', 'T.S. Rappaport', 'Electronics', 6),
(174, 'Digital Image Processing', 'Gonzalez & Woods', 'Computer Science', 5),
(175, 'Bioinformatics Algorithms', 'Phillip Compeau', 'Biotech', 3),

(176, 'Engineering Ethics', 'Charles Harris', 'General', 10),
(177, 'Business Communication', 'Meenakshi Raman', 'Management', 9),
(178, 'Organizational Behaviour', 'Stephen Robbins', 'Management', 6),
(179, 'Economics for Engineers', 'Richa Saxena', 'General', 7),
(180, 'Entrepreneurship Development', 'S.S. Khanka', 'Management', 8),

(181, 'Green Energy Technologies', 'G.D. Rai', 'Electrical', 5),
(182, 'Renewable Energy Resources', 'Godfrey Boyle', 'Environmental Science', 6),
(183, 'Instrumentation Measurement', 'A.K. Sawhney', 'Electronics', 9),
(184, 'Digital Signal Processing', 'John G. Proakis', 'Electronics', 7),
(185, 'Pattern Recognition', 'Sergios Theodoridis', 'Computer Science', 4),

(186, 'Big Data Analytics', 'Seema Acharya', 'Computer Science', 5),
(187, 'Databases NoSQL', 'Pramod J. Sadalage', 'Computer Science', 3),
(188, 'Advanced Web Development', 'Robin Nixon', 'IT', 7),
(189, 'Ethical Hacking Handbook', 'William Easttom', 'IT', 8),
(190, 'Quantum Computing Concepts', 'Eleanor Rieffel', 'Computer Science', 3),
(191, 'Microservices Architecture', 'Sam Newman', 'Computer Science', 5),
(192, 'Quantum Mechanics for Engineers', 'P. K. Aravind', 'Physics', 4),
(193, 'Engineering Metallurgy', 'Kodgire', 'Mechanical', 7),
(194, 'Advanced Digital Logic Design', 'Sarbajit Ghosh', 'Electronics', 6),
(195, 'Cloud Native Computing', 'Justin Garrison', 'IT', 5),
(196, 'Artificial Intelligence for Robotics', 'Francis X. Govers', 'Computer Science', 3),
(197, 'Transportation Engineering', 'L.R. Kadiyali', 'Civil', 8),
(198, 'Finite Element Methods', 'J.N. Reddy', 'Mechanical', 4),
(199, 'Renewable Energy Engineering', 'Ahmad Hemami', 'Environmental Science', 6),
(200, 'Digital Marketing Fundamentals', 'Philip Kotler', 'Management', 9),
(201, 'Advanced Python Programming', 'Mark Lutz', 'Computer Science', 6),
(202, 'ReactJS Essentials', 'Alex Banks', 'IT', 7),
(203, 'Data Science Handbook', 'Field Cady', 'Computer Science', 5),
(204, 'Computer Vision Basics', 'Richard Szeliski', 'Computer Science', 4),
(205, 'Linux Administration Guide', 'Tom Adelstein', 'IT', 6),
(206, 'Renewable Power Systems', 'D. Yogi Goswami', 'Electrical', 5),
(207, 'High Voltage Engineering', 'C. L. Wadhwa', 'Electrical', 7),
(208, 'Electrical Power Utilization', 'A. E. Fitzgerald', 'Electrical', 6),
(209, 'Switched-Mode Power Supplies', 'Christophe Basso', 'Electronics', 4),
(210, 'Analog CMOS Design', 'Behzad Razavi', 'Electronics', 3),
(211, 'Automation and PLC Programming', 'Frank D. Petruzella', 'Mechanical', 8),
(212, 'Mechatronics System Design', 'Devdas Shetty', 'Mechanical', 6),
(213, 'Industrial Engineering and Management', 'O.P. Khanna', 'Mechanical', 9),
(214, 'Materials Science for Engineers', 'William F. Smith', 'Mechanical', 5),
(215, 'Thermal Engineering', 'R.K. Rajput', 'Mechanical', 7),
(216, 'Engineering Geology', 'K.M. Bangar', 'Civil', 8),
(217, 'Advanced Concrete Technology', 'Neville', 'Civil', 4),
(218, 'Geotechnical Engineering', 'B.M. Das', 'Civil', 6),
(219, 'Hydraulic Structures', 'R.S. Varshney', 'Civil', 5),
(220, 'Transportation Planning', 'Meyer & Miller', 'Civil', 7),
(221, 'Biomaterials Science', 'William R. Wagner', 'Biotech', 3),
(222, 'Genetic Engineering Basics', 'James Watson', 'Biotech', 4),
(223, 'Microbiology Essentials', 'Prescott', 'Biotech', 6),
(224, 'Environmental Biotechnology', 'S.N. Jogdand', 'Biotech', 7),
(225, 'Food Biotechnology', 'A. Pandey', 'Biotech', 5),
(226, 'Fundamentals of Machine Design', 'Juvinall', 'Mechanical', 6),
(227, 'Engineering Optimization', 'S.S. Rao', 'Mathematics', 4),
(228, 'Graph Theory Applications', 'Narsingh Deo', 'Mathematics', 5),
(229, 'Calculus of Variations', 'Weinstock', 'Mathematics', 3),
(230, 'A Course in Abstract Algebra', 'Khanna & Bhambri', 'Mathematics', 6),
(231, 'Astronomy for Engineers', 'Dan Maoz', 'Physics', 5),
(232, 'Basics of Astrophysics', 'A. Saha', 'Physics', 4),
(233, 'Nuclear Physics Concepts', 'S.N. Ghoshal', 'Physics', 7),
(234, 'Solid State Physics', 'J.P. McKelvey', 'Physics', 6),
(235, 'Electromagnetic Theory', 'Sadiku', 'Physics', 5),
(236, 'Artificial Intelligence in Healthcare', 'Arjun Panesar', 'Computer Science', 3),
(237, 'Neural Network Applications', 'Satish Kumar', 'Computer Science', 4),
(238, 'Algorithms in Bioinformatics', 'Wing-Kin Sung', 'Computer Science', 5),
(239, 'Big Data Security', 'Mohamed Ali', 'IT', 6),
(240, 'Cyber Forensics Basics', 'Eoghan Casey', 'IT', 7),
(241, 'Digital Electronics Simplified', 'S.K. Mandal', 'Electronics', 8),
(242, 'Sensor Technology Handbook', 'Jon Wilson', 'Electronics', 5),
(243, 'Embedded C Programming', 'Michael J. Pont', 'Electronics', 6),
(244, 'RF Circuit Design', 'Christopher Bowick', 'Electronics', 3),
(245, 'Antennas and Wave Propagation', 'K.D. Prasad', 'Electronics', 4),
(246, 'Professional Ethics & Human Values', 'R. S. Naagarazan', 'General', 9),
(247, 'Industrial Safety Engineering', 'D. K. Mishra', 'General', 7),
(248, 'Technical Communication Skills', 'Meenakshi Raman', 'General', 8),
(249, 'Project Management Essentials', 'Clifford F. Gray', 'Management', 6),
(250, 'E-Commerce Technologies', 'Gary Schneider', 'IT', 9);

Select * from BOOKS ;
Set SQL_SAFE_UPDATES = 1;

CREATE TABLE students (
    student_roll_no INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO students (student_roll_no, name, email) VALUES
(2501, 'Amit Sharma', 'amit.sharma@college.edu'),
(2502, 'Anshika Gupta', 'anshika.gupta@college.edu'),
(2503, 'Rohit Verma', 'rohit.verma@college.edu'),
(2504, 'Priya Singh', 'priya.singh@college.edu'),
(2505, 'Karan Yadav', 'karan.yadav@college.edu'),
(2506, 'Sneha Mehra', 'sneha.mehra@college.edu'),
(2507, 'Vivek Soni', 'vivek.soni@college.edu'),
(2508, 'Nisha Chauhan', 'nisha.chauhan@college.edu'),
(2509, 'Arjun Patel', 'arjun.patel@college.edu'),
(2510, 'Sakshi Mishra', 'sakshi.mishra@college.edu'),
(2511, 'Rahul Thakur', 'rahul.thakur@college.edu'),
(2512, 'Divya Malhotra', 'divya.malhotra@college.edu'),
(2513, 'Lokesh Jain', 'lokesh.jain@college.edu'),
(2514, 'Megha Kapoor', 'megha.kapoor@college.edu'),
(2515, 'Yash Rajput', 'yash.rajput@college.edu'),
(2516, 'Shruti Joshi', 'shruti.joshi@college.edu'),
(2517, 'Harsh Gupta', 'harsh.gupta@college.edu'),
(2518, 'Pooja Rawat', 'pooja.rawat@college.edu'),
(2519, 'Saurabh Chauhan', 'saurabh.chauhan@college.edu'),
(2520, 'Aakriti Sharma', 'aakriti.sharma@college.edu'),
(2521, 'Manish Tiwari', 'manish.tiwari@college.edu'),
(2522, 'Ritika Sahu', 'ritika.sahu@college.edu'),
(2523, 'Deepak Kumar', 'deepak.kumar@college.edu'),
(2524, 'Komal Verma', 'komal.verma@college.edu'),
(2525, 'Shivam Pandey', 'shivam.pandey@college.edu'),
(2526,'Aditi Sharma','aditi.sharma@college.edu'),
(2527,'Rohan Malhotra','rohan.malhotra@college.edu'),
(2528,'Simran Kaur','simran.kaur@college.edu'),
(2529,'Prateek Singh','prateek.singh@college.edu'),
(2530,'Tanvi Gupta','tanvi.gupta@college.edu'),
(2531,'Aman Saxena','aman.saxena@college.edu'),
(2532,'Kritika Rao','kritika.rao@college.edu'),
(2533,'Varun Kaushik','varun.kaushik@college.edu'),
(2534,'Nandini Bajaj','nandini.bajaj@college.edu'),
(2535,'Ishaan Kapoor','ishaan.kapoor@college.edu'),

(2536,'Ritika Sharma','ritika.sharma@college.edu'),
(2537,'Arnav Tyagi','arnav.tyagi@college.edu'),
(2538,'Sanya Mehta','sanya.mehta@college.edu'),
(2539,'Kabir Khanna','kabir.khanna@college.edu'),
(2540,'Mahima Bansal','mahima.bansal@college.edu'),
(2541,'Ujjwal Singh','ujjwal.singh@college.edu'),
(2542,'Anjali Rawat','anjali.rawat@college.edu'),
(2543,'Yuvraj Rana','yuvraj.rana@college.edu'),
(2544,'Shreya Sood','shreya.sood@college.edu'),
(2545,'Lakshya Kumar','lakshya.kumar@college.edu'),

(2546,'Neha Arora','neha.arora@college.edu'),
(2547,'Gaurav Mishra','gaurav.mishra@college.edu'),
(2548,'Ayesha Siddiqui','ayesha.siddiqui@college.edu'),
(2549,'Puneet Aggarwal','puneet.aggarwal@college.edu'),
(2550,'Tanya Chhabra','tanya.chhabra@college.edu'),
(2551,'Ritik Chauhan','ritik.chauhan@college.edu'),
(2552,'Divyanshi Singh','divyanshi.singh@college.edu'),
(2553,'Manav Kohli','manav.kohli@college.edu'),
(2554,'Esha Tandon','esha.tandon@college.edu'),
(2555,'Aniket Sharma','aniket.sharma@college.edu'),
(2556,'Srishti Jain','srishti.jain@college.edu'),
(2557,'Aarav Mathur','aarav.mathur@college.edu'),
(2558,'Mitali Joshi','mitali.joshi@college.edu'),
(2559,'Zain Khan','zain.khan@college.edu'),
(2560,'Ananya Rathi','ananya.rathi@college.edu'),
(2561,'Raghav Bhatia','raghav.bhatia@college.edu'),
(2562,'Pallavi Kulkarni','pallavi.kulkarni@college.edu'),
(2563,'Aditya Nair','aditya.nair@college.edu'),
(2564,'Harleen Kaur','harleen.kaur@college.edu'),
(2565,'Rudra Srivastava','rudra.srivastava@college.edu'),

(2566,'Aarohi Malik','aarohi.malik@college.edu'),
(2567,'Sahil Chopra','sahil.chopra@college.edu'),
(2568,'Vaishnavi Rao','vaishnavi.rao@college.edu'),
(2569,'Nikhil Thakur','nikhil.thakur@college.edu'),
(2570,'Jasleen Kaur','jasleen.kaur@college.edu'),
(2571,'Amitabh Soni','amitabh.soni@college.edu'),
(2572,'Riya Sengupta','riya.sengupta@college.edu'),
(2573,'Karan Bhandari','karan.bhandari@college.edu'),
(2574,'Meera Dutta','meera.dutta@college.edu'),
(2575,'Sanket Rao','sanket.rao@college.edu'),
(2576,'Alina Chawla','alina.chawla@college.edu'),
(2577,'Dhruv Sippy','dhruv.sippy@college.edu'),
(2578,'Tushar Bedi','tushar.bedi@college.edu'),
(2579,'Shagun Pathak','shagun.pathak@college.edu'),
(2580,'Vanshika Arora','vanshika.arora@college.edu'),
(2581,'Yashvi Patel','yashvi.patel@college.edu'),
(2582,'Reyansh Gupta','reyansh.gupta@college.edu'),
(2583,'Chhavi Sharma','chhavi.sharma@college.edu'),
(2584,'Samar Verma','samar.verma@college.edu'),
(2585,'Navya Kapoor','navya.kapoor@college.edu');

select * from students;

 CREATE TABLE issued_books (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll_no INT NOT NULL,
    book_id INT NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    fine_amount DECIMAL(10,2) DEFAULT 0.00,

    FOREIGN KEY (student_roll_no) REFERENCES students(student_roll_no),
    FOREIGN KEY (book_id) REFERENCES books(book_id),

    CONSTRAINT unique_issue UNIQUE(student_roll_no, book_id, issue_date)
);


INSERT INTO issued_books (student_roll_no, book_id, issue_date, due_date)
VALUES
(2501, 101, '2025-11-26', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2555, 105, '2025-11-23', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2504, 160, '2025-11-27', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2525, 125, '2025-11-24', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2501, 200, '2025-11-25', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2535, 166, '2025-11-19', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2523, 145, '2025-11-25', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2510, 205, '2025-12-08', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2575, 116, '2025-11-22', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2520, 108, '2025-11-25', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2530, 211, '2025-11-30', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2519, 194, '2025-11-29', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2511, 161, '2025-12-04', DATE_ADD(CURDATE(), INTERVAL 7 DAY)),
(2560, 181, '2025-12-05', DATE_ADD(CURDATE(), INTERVAL 7 DAY));

UPDATE issued_books
SET issue_date = CURDATE(),
    due_date = DATE_ADD(CURDATE(), INTERVAL 7 DAY);
    
    



SELECT * FROM issued_books;

SELECT i.issue_id, s.name, b.title, i.issue_date, i.due_date
FROM issued_books i
JOIN students s ON i.student_roll_no = s.student_roll_no
JOIN books b ON i.book_id = b.book_id;


/* Return Book Procedure */

DELIMITER $$
DROP PROCEDURE IF EXISTS returnBook;

CREATE PROCEDURE returnBook(
    IN p_issue_id INT
)
BEGIN
    UPDATE issued_books
    SET return_date = CURDATE(),
        fine_amount = CASE
            WHEN DATEDIFF(CURDATE(), due_date) > 0 THEN DATEDIFF(CURDATE(), due_date) * 10
            ELSE 0
        END
    WHERE issue_id = p_issue_id;
END $$

DELIMITER ;

DROP TRIGGER IF EXISTS increase_quantity_after_return;

DELIMITER $$

CREATE TRIGGER increase_quantity_after_return
AFTER UPDATE ON issued_books
FOR EACH ROW
BEGIN
    IF OLD.return_date IS NULL AND NEW.return_date IS NOT NULL THEN
        UPDATE books
        SET quantity = quantity + 1
        WHERE book_id = NEW.book_id;
    END IF;
END$$

DELIMITER ;


/* Decrease Book Quantity After Issue */

DROP TRIGGER IF EXISTS reduce_quantity_after_issue;


DELIMITER $$

CREATE TRIGGER reduce_quantity_after_issue
AFTER INSERT ON issued_books
FOR EACH ROW 
BEGIN
    UPDATE books 
    SET quantity = quantity - 1
    WHERE book_id = NEW.book_id;
END$$

DELIMITER ;

select * from books ;

SELECT MAX(book_id) FROM books;
ALTER TABLE books
MODIFY book_id INT NOT NULL AUTO_INCREMENT;




select * from students;

SELECT COUNT(*) AS total_books
FROM books;

SELECT COUNT(*) AS total_students
FROM students;


SELECT i.issue_id, s.name AS student, b.title AS book, i.issue_date, i.due_date
FROM issued_books i
JOIN students s ON i.student_roll_no = s.student_roll_no
JOIN books b ON i.book_id = b.book_id
WHERE i.return_date IS NULL;

-- Step 2: Call return procedure
CALL returnBook(15);  -- replace 15 with the actual issue_id;

-- Check updated issued_books

SELECT * FROM issued_books WHERE issue_id = 15;
-- Check updated book quantity
SELECT title, quantity FROM books
WHERE book_id = (SELECT book_id FROM issued_books WHERE issue_id = 15);

SELECT title, quantity
FROM books
WHERE book_id = 101;   

show triggers ;
SELECT issue_id, return_date FROM issued_books WHERE issue_id = 15;

UPDATE issued_books
SET return_date = NULL
WHERE issue_id = 15;

SELECT SUM(quantity) AS total_books_available FROM books;

/*All pending returns:*/

SELECT i.issue_id, s.name AS student, b.title AS book, i.due_date
FROM issued_books i
JOIN students s ON i.student_roll_no = s.student_roll_no
JOIN books b ON i.book_id = b.book_id
WHERE i.return_date IS NULL;

/*All returned books with fines:*/
SELECT i.issue_id, s.name AS student, b.title AS book, i.return_date, i.fine_amount
FROM issued_books i
JOIN students s ON i.student_roll_no = s.student_roll_no
JOIN books b ON i.book_id = b.book_id
WHERE i.return_date IS NOT NULL;











