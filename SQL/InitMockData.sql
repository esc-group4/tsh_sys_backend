-- Will only work right after Create Table as Training Required staff_id and request_id which are auto incremented --
-- Mock Data

-- Skills (15)
INSERT INTO Skill (skill_name) VALUES 
('AED'),
('ERP'),
('Microsoft Office'),
('Cybersecurity'),
('Project Management'),
('Data Analysis'),
('Customer Service'),
('Machine Learning'),
('Digital Marketing'),
('Agile Methodology'),
('Cloud Computing'),
('Business Intelligence'),
('Leadership'),
('Time Management'),
('Negotiation');

-- Courses (15)
INSERT INTO Course (course_name, providerName, skill_name, course_description, course_location) VALUES 
('AED 2024','SUTD', 'AED', 'Life saving course', '3 Fusionopolis Link, Singapore 138542'),
('Cybersecurity 2024','SUTD', 'Cybersecurity', 'Network security basics', '8 Somapah Rd, Singapore 487372'),
('ERP Fundamentals', 'NUS', 'ERP', 'Introduction to Enterprise Resource Planning', '21 Lower Kent Ridge Rd, Singapore 119077'),
('Advanced Excel', 'Microsoft', 'Microsoft Office', 'Advanced spreadsheet techniques', '182 Cecil Street, Singapore 069547'),
('Project Management Professional', 'PMI', 'Project Management', 'PMP certification preparation', '80 Middle Road, Singapore 188966'),
('Data Science Bootcamp', 'Datacamp', 'Data Analysis', 'Comprehensive data analysis course', '79 Anson Road, Singapore 079906'),
('Customer Experience Mastery', 'SHATEC', 'Customer Service', 'Enhancing customer satisfaction', '21 Bukit Batok Street 22, Singapore 659589'),
('Machine Learning Fundamentals', 'NTU', 'Machine Learning', 'Introduction to ML algorithms', '50 Nanyang Ave, Singapore 639798'),
('Digital Marketing Strategy', 'Google', 'Digital Marketing', 'Online marketing techniques', '70 Pasir Panjang Road, Singapore 117371'),
('Agile Scrum Master', 'Scrum Alliance', 'Agile Methodology', 'Agile project management', '1 Raffles Place, Singapore 048616'),
('AWS Certified Solutions Architect', 'Amazon', 'Cloud Computing', 'Cloud architecture design', '23 Church Street, Singapore 049481'),
('Power BI Masterclass', 'Microsoft', 'Business Intelligence', 'Data visualization techniques', '182 Cecil Street, Singapore 069547'),
('Leadership Development Program', 'CCL', 'Leadership', 'Developing leadership skills', '89 Neil Road, Singapore 088849'),
('Time Management Workshop', 'FranklinCovey', 'Time Management', 'Productivity improvement techniques', '1 Raffles Place, Singapore 048616'),
('Negotiation Skills', 'Harvard Business School', 'Negotiation', 'Advanced negotiation techniques', '51 Bras Basah Road, Singapore 189554');

-- Departments (10)
INSERT INTO Department (department_name, department_location) VALUES 
('Manufacturing', 'AMK'),
('Admin', 'Bedok'),
('Engineering', 'Jurong'),
('Sales', 'CBD'),
('IT', 'Changi'),
('Human Resources', 'Tanjong Pagar'),
('Finance', 'Raffles Place'),
('Marketing', 'Orchard'),
('Customer Support', 'Novena'),
('Research & Development', 'One-North');

-- Training Requests (7)
INSERT INTO TrainingRequest (type, department_name, course_name, startDate, endDate) VALUES 
('External', 'Manufacturing', 'AED 2024', CURDATE(), CURDATE() + INTERVAL 1 DAY),
('External', 'Manufacturing', 'AED 2024', CURDATE() + INTERVAL 7 DAY, CURDATE() + INTERVAL 8 DAY),
('Internal', 'IT', 'Cybersecurity 2024', CURDATE() + INTERVAL 14 DAY, CURDATE() + INTERVAL 16 DAY),
('External', 'Sales', 'Digital Marketing Strategy', CURDATE() + INTERVAL 21 DAY, CURDATE() + INTERVAL 23 DAY),
('Internal', 'Engineering', 'ERP Fundamentals', CURDATE() + INTERVAL 28 DAY, CURDATE() + INTERVAL 30 DAY),
('External', 'Finance', 'Advanced Excel', CURDATE() + INTERVAL 35 DAY, CURDATE() + INTERVAL 36 DAY),
('Internal', 'Human Resources', 'Leadership Development Program', CURDATE() + INTERVAL 42 DAY, CURDATE() + INTERVAL 44 DAY);

-- Designations (10, one for each department)
INSERT INTO Designation (department_name, position, description) VALUES 
('Manufacturing', 'Operator', 'Operate Machine'),
('Manufacturing', 'HOD', 'Head of Department for Manufacturing'),
('Admin', 'HR', 'Training and Development HR'),
('Engineering', 'Engineer', 'Design and maintain systems'),
('Sales', 'Sales Representative', 'Manage client accounts'),
('IT', 'System Administrator', 'Manage IT infrastructure'),
('Human Resources', 'HR Manager', 'Oversee HR functions'),
('Finance', 'Financial Analyst', 'Analyze financial data'),
('Marketing', 'Marketing Specialist', 'Develop marketing strategies'),
('Customer Support', 'Support Representative', 'Assist customers'),
('Research & Development', 'Research Scientist', 'Conduct research');

-- Staff (40)
INSERT INTO Staff (staff_name, staff_email, designation_id, firebase_uid, staff_hpNum) VALUES 
('Benny', 'benny@example.com', 1, 'abc123', NULL),
('Daniel', 'daniel@example.com', 1, 'abc127', NULL),
('Albert', 'albert@example.com', 1, 'abc128', NULL),
('Javier Tan', 'javiertan@example.com', 2, 'abc124', NULL),
('Xiaoyang', 'hoxiaoyang321@gmail.com', 3, 'abc125', 89116194),
('Emma Lee', 'emma@example.com', 4, 'abc126', 91234567),
('Michael Tan', 'michael@example.com', 5, 'abc129', 92345678),
('Sarah Wong', 'sarah@example.com', 6, 'abc130', 93456789),
('David Lim', 'david@example.com', 7, 'abc131', 94567890),
('Lisa Ng', 'lisa@example.com', 8, 'abc132', 95678901),
('Ryan Goh', 'ryan@example.com', 9, 'abc133', 96789012),
('Olivia Chua', 'olivia@example.com', 10, 'abc134', 97890123),
('Ethan Teo', 'ethan@example.com', 11, 'abc135', 98901234),
('Sophia Koh', 'sophia@example.com', 1, 'abc136', 99012345),
('William Yeo', 'william@example.com', 2, 'abc137', 90123456),
('Isabella Tan', 'isabella@example.com', 3, 'abc138', 91234568),
('James Lee', 'james@example.com', 4, 'abc139', 92345679),
('Mia Lim', 'mia@example.com', 5, 'abc140', 93456780),
('Benjamin Ng', 'benjamin@example.com', 6, 'abc141', 94567891),
('Charlotte Goh', 'charlotte@example.com', 7, 'abc142', 95678902),
('Lucas Chua', 'lucas@example.com', 8, 'abc143', 96789013),
('Amelia Teo', 'amelia@example.com', 9, 'abc144', 97890124),
('Henry Koh', 'henry@example.com', 10, 'abc145', 98901235),
('Ava Yeo', 'ava@example.com', 11, 'abc146', 99012346),
('Alexander Tan', 'alexander@example.com', 1, 'abc147', 90123457),
('Evelyn Lee', 'evelyn@example.com', 2, 'abc148', 91234569),
('Daniel Lim', 'daniel2@example.com', 3, 'abc149', 92345680),
('Sofia Ng', 'sofia@example.com', 4, 'abc150', 93456781),
('Matthew Goh', 'matthew@example.com', 5, 'abc151', 94567892),
('Chloe Chua', 'chloe@example.com', 6, 'abc152', 95678903),
('Andrew Teo', 'andrew@example.com', 7, 'abc153', 96789014),
('Zoe Koh', 'zoe@example.com', 8, 'abc154', 97890125),
('Christopher Yeo', 'christopher@example.com', 9, 'abc155', 98901236),
('Lily Tan', 'lily@example.com', 10, 'abc156', 99012347),
('Joseph Lee', 'joseph@example.com', 11, 'abc157', 90123458),
('Grace Lim', 'grace@example.com', 1, 'abc158', 91234570),
('Samuel Ng', 'samuel@example.com', 2, 'abc159', 92345681),
('Audrey Goh', 'audrey@example.com', 3, 'abc160', 93456782),
('Dylan Chua', 'dylan@example.com', 4, 'abc161', 94567893),
('Natalie Teo', 'natalie@example.com', 5, 'abc162', 95678904);

-- Training (15)
INSERT INTO Training (staff_id, request_id) VALUES 
(1,1),
(2,1),
(3,1),
(5,2),
(6,3),
(7,3),
(8,4),
(9,4),
(10,5),
(11,5),
(12,6),
(13,6),
(14,7),
(15,7);