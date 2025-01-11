
--	1. Insert 20 family records into the Families table
INSERT INTO Families (family_id, family_name, num_members) VALUES (1, 'Patel', 4);          
INSERT INTO Families (family_id, family_name, num_members) VALUES (2, 'Kim', 3);             
INSERT INTO Families (family_id, family_name, num_members) VALUES (3, 'Suzuki', 5);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (4, 'Garcia', 4);          
INSERT INTO Families (family_id, family_name, num_members) VALUES (5, 'Johnson', 3);        
INSERT INTO Families (family_id, family_name, num_members) VALUES (6, 'Al-Farouqi', 2);     
INSERT INTO Families (family_id, family_name, num_members) VALUES (7, 'Gupta', 4);           
INSERT INTO Families (family_id, family_name, num_members) VALUES (8, 'Lee', 3);             
INSERT INTO Families (family_id, family_name, num_members) VALUES (9, 'Tanaka', 6);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (10, 'Lopez', 4);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (11, 'Smith', 3);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (12, 'Haddad', 5);        
INSERT INTO Families (family_id, family_name, num_members) VALUES (13, 'Reddy', 2);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (14, 'Choi', 4);          
INSERT INTO Families (family_id, family_name, num_members) VALUES (15, 'Yamamoto', 3);      
INSERT INTO Families (family_id, family_name, num_members) VALUES (16, 'Martinez', 4);      
INSERT INTO Families (family_id, family_name, num_members) VALUES (17, 'Brown', 3);         
INSERT INTO Families (family_id, family_name, num_members) VALUES (18, 'Saud', 5);          
INSERT INTO Families (family_id, family_name, num_members) VALUES (19, 'Desai', 2);        
INSERT INTO Families (family_id, family_name, num_members) VALUES (20, 'Park', 4);         


---	2. Insert 50 customer records into the Customers table. Assume that all the customers added are part of the LoyaltyFirst program. 
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (1, 'Raj Patel', TO_DATE('2002-03-21', 'YYYY-MM-DD'), 'Male', 'Single', 'Student', '123-45-6789', 'Y', 'raj.patel058@gmail.com', 1);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (2, 'Hyun Kim', TO_DATE('1998-07-07', 'YYYY-MM-DD'), 'Male', 'Single', 'Designer', '111-22-3333', 'Y', 'hyun.kim456@gmail.com', 2);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (3, 'Carlos Garcia', TO_DATE('1997-04-22', 'YYYY-MM-DD'), 'Male', 'Single', 'Doctor', '555-66-7777', 'Y', 'carlos.garcia77@gmail.com', 4);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (4, 'Emily Johnson', TO_DATE('2004-12-25', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '888-99-1111', 'Y', 'emily.johnson82@gmail.com', 5);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (5, 'Jisoo Kim', TO_DATE('2001-05-30', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '222-33-4444', 'Y', 'jisoo.kim123@gmail.com', 2);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (6, 'Anita Patel', TO_DATE('1999-11-15', 'YYYY-MM-DD'), 'Female', 'Single', 'Teacher', '987-65-4321', 'Y', 'anita.patel091@gmail.com', 1);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (7, 'Aiko Suzuki', TO_DATE('2000-09-08', 'YYYY-MM-DD'), 'Female', 'Single', 'Nurse', '444-55-6666', 'Y', 'aiko.suzuki15@gmail.com', 3);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (8, 'Maria Garcia', TO_DATE('2002-10-19', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '666-77-8888', 'Y', 'maria.garcia56@gmail.com', 4);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (9, 'David Johnson', TO_DATE('1987-06-15', 'YYYY-MM-DD'), 'Male', 'Married', 'Developer', '777-88-9999', 'Y', 'david.johnson12@gmail.com', 5);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (10, 'Kenji Suzuki', TO_DATE('1989-01-12', 'YYYY-MM-DD'), 'Male', 'Married', 'Manager', '333-44-5555', 'Y', 'kenji.suzuki789@gmail.com', 3);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (11, 'Omar Al-Farouqi', TO_DATE('1985-02-28', 'YYYY-MM-DD'), 'Male', 'Married', 'Consultant', '999-11-2222', 'Y', 'omar.alfarouqi32@gmail.com', 6);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (12, 'Lina Al-Farouqi', TO_DATE('2001-08-14', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '111-22-3334', 'Y', 'lina.alfarouqi21@gmail.com', 6);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (13, 'Jung Lee', TO_DATE('1986-07-13', 'YYYY-MM-DD'), 'Male', 'Married', 'Software Engineer', '444-55-6667', 'Y', 'jung.lee01@gmail.com', 8);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (14, 'Priya Gupta', TO_DATE('2003-09-29', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '333-44-5556', 'Y', 'priya.gupta66@gmail.com', 7);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (15, 'Hiro Tanaka', TO_DATE('1982-05-05', 'YYYY-MM-DD'), 'Male', 'Married', 'Project Manager', '666-77-8889', 'Y', 'hiro.tanaka55@gmail.com', 9);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (16, 'Yuna Lee', TO_DATE('2002-01-18', 'YYYY-MM-DD'), 'Female', 'Single', 'Pharmacist', '555-66-7778', 'Y', 'yuna.lee88@gmail.com', 8);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (17, 'Sakura Tanaka', TO_DATE('2003-11-22', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '777-88-9990', 'Y', 'sakura.tanaka123@gmail.com', 9);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (18, 'Jessica Smith', TO_DATE('2002-10-10', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '222-33-4446', 'Y', 'jessica.smith75@gmail.com', 11);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (19, 'Jose Lopez', TO_DATE('1984-03-15', 'YYYY-MM-DD'), 'Male', 'Married', 'Dentist', '888-99-1112', 'Y', 'jose.lopez15@gmail.com', 10);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (20, 'Takashi Yamamoto', TO_DATE('1981-03-19', 'YYYY-MM-DD'), 'Male', 'Married', 'Banker', '999-11-2224', 'Y', 'takashi.yamamoto78@gmail.com', 15);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (21, 'Ana Lopez', TO_DATE('2001-12-09', 'YYYY-MM-DD'), 'Female', 'Single', 'Architect', '999-11-2223', 'Y', 'ana.lopez42@gmail.com', 10);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (22, 'Michael Smith', TO_DATE('1986-06-06', 'YYYY-MM-DD'), 'Male', 'Married', 'Teacher', '111-22-3335', 'Y', 'michael.smith11@gmail.com', 11);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (23, 'Ahmad Haddad', TO_DATE('1990-08-18', 'YYYY-MM-DD'), 'Male', 'Single', 'Chef', '333-44-5557', 'Y', 'ahmad.haddad20@gmail.com', 12);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (24, 'Emma Brown', TO_DATE('2001-08-08', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '555-66-7780', 'Y', 'emma.brown39@gmail.com', 17);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (25, 'Minho Choi', TO_DATE('1984-07-07', 'YYYY-MM-DD'), 'Male', 'Married', 'Graphic Designer', '777-88-9991', 'Y', 'minho.choi08@gmail.com', 14);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (26, 'Divya Reddy', TO_DATE('2003-12-23', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '666-77-8880', 'Y', 'divya.reddy74@gmail.com', 13);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (27, 'Sofia Martinez', TO_DATE('2002-11-17', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '333-44-5558', 'Y', 'sofia.martinez99@gmail.com', 16);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (28, 'Chris Brown', TO_DATE('1989-06-23', 'YYYY-MM-DD'), 'Male', 'Single', 'Geologist', '444-55-6669', 'Y', 'chris.brown54@gmail.com', 17);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (29, 'Aiko Yamamoto', TO_DATE('2003-12-30', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '111-22-3336', 'Y', 'aiko.yamamoto22@gmail.com', 15);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (30, 'Javier Martinez', TO_DATE('1990-04-25', 'YYYY-MM-DD'), 'Male', 'Single', 'Physicist', '222-33-4447', 'Y', 'javier.martinez12@gmail.com', 16);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (31, 'Ravi Gupta', TO_DATE('1993-03-03', 'YYYY-MM-DD'), 'Male', 'Single', 'Accountant', '222-33-4445', 'Y', 'ravi.gupta01@gmail.com', 7);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (32, 'Khalid Saud', TO_DATE('1983-09-05', 'YYYY-MM-DD'), 'Male', 'Married', 'Veterinarian', '666-77-8881', 'Y', 'khalid.saud43@gmail.com', 18);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (33, 'Eunji Choi', TO_DATE('2002-11-30', 'YYYY-MM-DD'), 'Female', 'Single', 'Photographer', '888-99-1113', 'Y', 'eunji.choi06@gmail.com', 14);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (34, 'Nadia Saud', TO_DATE('1989-01-27', 'YYYY-MM-DD'), 'Female', 'Single', 'Chemist', '777-88-9992', 'Y', 'nadia.saud77@gmail.com', 18);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) 
VALUES (35, 'Suresh Desai', TO_DATE('1985-02-28', 'YYYY-MM-DD'), 'Male', 'Single', 'Historian', '888-99-1114', 'Y', 'suresh.desai16@gmail.com', 19);

INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(36, 'Nina Patel', TO_DATE('2004-04-10', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '555-22-1234', 'Y', 'nina.patel24@gmail.com', 1);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(37, 'Min-seo Kim', TO_DATE('2003-11-01', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '666-33-2345', 'Y', 'minseo.kim92@gmail.com', 2);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(38, 'Hiroshi Suzuki', TO_DATE('2001-02-15', 'YYYY-MM-DD'), 'Male', 'Single', 'Intern', '777-44-3456', 'Y', 'hiroshi.suzuki18@gmail.com', 3);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(39, 'Isabella Garcia', TO_DATE('1999-07-23', 'YYYY-MM-DD'), 'Female', 'Single', 'Sales Associate', '888-55-4567', 'Y', 'isabella.garcia09@gmail.com', 4);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(40, 'Ethan Johnson', TO_DATE('2002-09-05', 'YYYY-MM-DD'), 'Male', 'Single', 'Student', '999-66-5678', 'Y', 'ethan.johnson82@gmail.com', 5);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(41, 'Ali Al-Farouqi', TO_DATE('2000-01-29', 'YYYY-MM-DD'), 'Male', 'Single', 'Technician', '111-77-6789', 'Y', 'ali.alfarouqi50@gmail.com', 6);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(42, 'Ritika Gupta', TO_DATE('2001-06-12', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '222-88-7890', 'Y', 'ritika.gupta47@gmail.com', 7);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(43, 'Soo-jin Lee', TO_DATE('1998-03-18', 'YYYY-MM-DD'), 'Female', 'Single', 'Designer', '333-99-8901', 'Y', 'soojin.lee99@gmail.com', 8);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(44, 'Yuki Tanaka', TO_DATE('2002-12-08', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '444-00-9012', 'Y', 'yuki.tanaka13@gmail.com', 9);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(45, 'Liam Lopez', TO_DATE('1997-05-30', 'YYYY-MM-DD'), 'Male', 'Single', 'Analyst', '555-11-0123', 'Y', 'liam.lopez88@gmail.com', 10);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(46, 'Oliver Smith', TO_DATE('2001-10-25', 'YYYY-MM-DD'), 'Male', 'Single', 'Student', '666-22-1234', 'Y', 'oliver.smith45@gmail.com', 11);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(47, 'Fatima Haddad', TO_DATE('2000-07-09', 'YYYY-MM-DD'), 'Female', 'Single', 'Research Assistant', '777-33-2345', 'Y', 'fatima.haddad67@gmail.com', 12);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(48, 'Ramesh Reddy', TO_DATE('1999-08-20', 'YYYY-MM-DD'), 'Male', 'Single', 'Technician', '888-44-3456', 'Y', 'ramesh.reddy23@gmail.com', 13);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(49, 'Jin Choi', TO_DATE('2003-04-11', 'YYYY-MM-DD'), 'Male', 'Single', 'Student', '999-55-4567', 'Y', 'jin.choi71@gmail.com', 14);
INSERT INTO Customers (cid, cname, dob, gender, mstatus, occupation, ssn, is_member, email, family_id) VALUES 
(50, 'Mei Yamamoto', TO_DATE('2004-02-18', 'YYYY-MM-DD'), 'Female', 'Single', 'Student', '111-66-5678', 'Y', 'mei.yamamoto30@gmail.com', 15);


---	3. Insert the customers addresses and phone numbers into the Addresses and Phones tables respectively. At least 5 customers must have 2 addresses and 2 phone numbers. 
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (1, '123 Maple St', 'A1', 'Washington', 'DC', '20001');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (1, '456 Oak St', 'B2', 'Washington', 'DC', '20002');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (2, '789 Pine St', '3', 'Alexandria', 'VA', '22301');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (2, '101 Cedar Rd', '10', 'Alexandria', 'VA', '22302');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (3, '202 Birch St', '5', 'Arlington', 'VA', '22201');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (3, '303 Redwood St', '5A', 'Arlington', 'VA', '22202');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (4, '404 Elm St', '10B', 'Silver Spring', 'MD', '20901');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (4, '505 Ash St', '10', 'Silver Spring', 'MD', '20902');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (5, '606 Willow Dr', '7', 'Bethesda', 'MD', '20814');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (5, '707 Magnolia Ave', '3B', 'Bethesda', 'MD', '20815');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (6, '123 Maple St', 'A1', 'Washington', 'DC', '20001');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (7, '789 Pine St', '3', 'Alexandria', 'VA', '22301');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (8, '202 Birch St', '5', 'Arlington', 'VA', '22201');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (9, '404 Elm St', '10B', 'Silver Spring', 'MD', '20901');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (10, '606 Willow Dr', '7', 'Bethesda', 'MD', '20814');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (11, '909 Cherry Ln', '5', 'Alexandria', 'VA', '22301');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (12, '1010 Palm Blvd', '1A', 'Washington', 'DC', '20010');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (13, '1111 Vine St', 'A2', 'Falls Church', 'VA', '22046');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (17, '1111 Vine St', 'A2', 'Falls Church', 'VA', '22046');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (14, '505 Ash St', '2B', 'Silver Spring', 'MD', '20902');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (18, '505 Ash St', '2B', 'Silver Spring', 'MD', '20902');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (15, '303 Redwood St', '5A', 'Arlington', 'VA', '22202');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (19, '303 Redwood St', '5A', 'Arlington', 'VA', '22202');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (16, '808 Cypress St', '2C', 'Rockville', 'MD', '20850');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (25, '808 Cypress St', '2C', 'Rockville', 'MD', '20850');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (20, '1010 Palm Blvd', '3', 'Fairfax', 'VA', '22030');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (29, '1010 Palm Blvd', '3', 'Fairfax', 'VA', '22030');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (21, '707 Magnolia Ave', '2', 'Bethesda', 'MD', '20815');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (31, '707 Magnolia Ave', '2', 'Bethesda', 'MD', '20815');

INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (22, '515 Walnut St', '1', 'Takoma Park', 'MD', '20912');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (23, '617 Peach Ave', '9', 'Gaithersburg', 'MD', '20877');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (24, '718 Orange Dr', '5', 'Rockville', 'MD', '20852');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (26, '820 Apple Rd', '4', 'Fairfax', 'VA', '22031');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (27, '921 Pear St', '2B', 'Bethesda', 'MD', '20816');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (28, '102 Cherry Blossom Ln', '6', 'Falls Church', 'VA', '22043');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (30, '203 Willow Way', '3', 'Vienna', 'VA', '22180');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (32, '305 Cedar Circle', '8A', 'Alexandria', 'VA', '22304');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (33, '406 Maple Leaf Ave', '10', 'Arlington', 'VA', '22204');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (34, '508 Ivy St', 'B1', 'McLean', 'VA', '22101');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (35, '609 Elm Grove Ln', '2C', 'Annandale', 'VA', '22003');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (36, '710 Oakwood Dr', '1D', 'Vienna', 'VA', '22182');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (37, '811 Birch Ln', '5E', 'Springfield', 'VA', '22150');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (38, '912 Redwood Dr', 'A5', 'Woodbridge', 'VA', '22192');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (39, '101 Maplewood St', '6C', 'Reston', 'VA', '20190');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (40, '202 Pine Needle Ave', '7F', 'Herndon', 'VA', '20170');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (41, '303 Cedar Bark St', 'B2', 'Ashburn', 'VA', '20147');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (42, '404 Sycamore Rd', '9G', 'Leesburg', 'VA', '20176');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (43, '505 Maple Ave', '1A', 'Fredericksburg', 'VA', '22401');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (44, '606 Magnolia Blvd', '2B', 'Manassas', 'VA', '20110');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (45, '707 Dogwood St', '3C', 'Fairfax', 'VA', '22033');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (46, '808 Juniper Ave', '4D', 'Falls Church', 'VA', '22046');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (47, '909 Chestnut St', '5E', 'Arlington', 'VA', '22207');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (48, '1000 Dogwood Dr', '6F', 'Alexandria', 'VA', '22306');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (49, '1101 Aspen Way', '7G', 'Washington', 'DC', '20003');
INSERT INTO Addresses (cid, street, apt, city, state, zip) VALUES (50, '1202 Birchwood St', '8H', 'Washington', 'DC', '20009');

-- 4. -	Insert the login information for your customers. You should insert 50 rows corresponding to the number of customers you have in the Customers table (1-to-1 relationship

INSERT INTO Login ( cid, username, passwd) VALUES (1, 'raj.patel01', 'RajP@200203');
INSERT INTO Login ( cid, username, passwd) VALUES (2, 'hyun.kim02', 'HyunK@199807');
INSERT INTO Login ( cid, username, passwd) VALUES (3, 'carlos.garcia03', 'CarlosG@199704');
INSERT INTO Login ( cid, username, passwd) VALUES (4, 'emily.johnson04', 'EmilyJ@200412');
INSERT INTO Login ( cid, username, passwd) VALUES (5, 'jisoo.kim05', 'JisooK@200105');
INSERT INTO Login ( cid, username, passwd) VALUES (6, 'anita.patel06', 'AnitaP@199911');
INSERT INTO Login ( cid, username, passwd) VALUES (7, 'aiko.suzuki07', 'AikoS@200009');
INSERT INTO Login ( cid, username, passwd) VALUES (8, 'maria.garcia08', 'MariaG@200210');
INSERT INTO Login ( cid, username, passwd) VALUES (9, 'david.johnson09', 'DavidJ@198706');
INSERT INTO Login ( cid, username, passwd) VALUES (10, 'kenji.suzuki10', 'KenjiS@198901');
INSERT INTO Login ( cid, username, passwd) VALUES (11, 'omar.alfarouqi11', 'OmarA@198502');
INSERT INTO Login ( cid, username, passwd) VALUES (12, 'lina.alfarouqi12', 'LinaA@200108');
INSERT INTO Login ( cid, username, passwd) VALUES (13, 'jung.lee13', 'JungL@198607');
INSERT INTO Login ( cid, username, passwd) VALUES (14, 'priya.gupta14', 'PriyaG@200309');
INSERT INTO Login ( cid, username, passwd) VALUES (15, 'hiro.tanaka15', 'HiroT@198205');
INSERT INTO Login ( cid, username, passwd) VALUES (16, 'yuna.lee16', 'YunaL@200201');
INSERT INTO Login ( cid, username, passwd) VALUES (17, 'sakura.tanaka17', 'SakuraT@200311');
INSERT INTO Login ( cid, username, passwd) VALUES (18, 'jessica.smith18', 'JessicaS@200210');
INSERT INTO Login ( cid, username, passwd) VALUES (19, 'jose.lopez19', 'JoseL@198403');
INSERT INTO Login ( cid, username, passwd) VALUES (20, 'takashi.yamamoto20', 'TakashiY@198103');
INSERT INTO Login ( cid, username, passwd) VALUES (21, 'ana.lopez21', 'AnaL@200112');
INSERT INTO Login ( cid, username, passwd) VALUES (22, 'michael.smith22', 'MichaelS@198606');
INSERT INTO Login ( cid, username, passwd) VALUES (23, 'ahmad.haddad23', 'AhmadH@199008');
INSERT INTO Login ( cid, username, passwd) VALUES (24, 'emma.brown24', 'EmmaB@200108');
INSERT INTO Login ( cid, username, passwd) VALUES (25, 'minho.choi25', 'MinhoC@198407');
INSERT INTO Login ( cid, username, passwd) VALUES (26, 'divya.reddy26', 'DivyaR@200312');
INSERT INTO Login ( cid, username, passwd) VALUES (27, 'sofia.martinez27', 'SofiaM@200211');
INSERT INTO Login ( cid, username, passwd) VALUES (28, 'chris.brown28', 'ChrisB@198906');
INSERT INTO Login ( cid, username, passwd) VALUES (29, 'aiko.yamamoto29', 'AikoY@200312');
INSERT INTO Login ( cid, username, passwd) VALUES (30, 'javier.martinez30', 'JavierM@199004');
INSERT INTO Login ( cid, username, passwd) VALUES (31, 'ravi.gupta31', 'RaviG@199303');
INSERT INTO Login ( cid, username, passwd) VALUES (32, 'khalid.saud32', 'KhalidS@198309');
INSERT INTO Login ( cid, username, passwd) VALUES (33, 'eunji.choi33', 'EunjiC@200211');
INSERT INTO Login ( cid, username, passwd) VALUES (34, 'nadia.saud34', 'NadiaS@198901');
INSERT INTO Login ( cid, username, passwd) VALUES (35, 'suresh.desai35', 'SureshD@198502');
INSERT INTO Login ( cid, username, passwd) VALUES (36, 'nina.patel36', 'NinaP@200404');
INSERT INTO Login ( cid, username, passwd) VALUES (37, 'minseo.kim37', 'MinseoK@200311');
INSERT INTO Login ( cid, username, passwd) VALUES (38, 'hiroshi.suzuki38', 'HiroshiS@200102');
INSERT INTO Login ( cid, username, passwd) VALUES (39, 'isabella.garcia39', 'IsabellaG@199907');
INSERT INTO Login ( cid, username, passwd) VALUES (40, 'ethan.johnson40', 'EthanJ@200209');
INSERT INTO Login ( cid, username, passwd) VALUES (41, 'ali.alfarouqi41', 'AliA@200001');
INSERT INTO Login ( cid, username, passwd) VALUES (42, 'ritika.gupta42', 'RitikaG@200106');
INSERT INTO Login ( cid, username, passwd) VALUES (43, 'soojin.lee43', 'SoojinL@199803');
INSERT INTO Login ( cid, username, passwd) VALUES (44, 'yuki.tanaka44', 'YukiT@200212');
INSERT INTO Login ( cid, username, passwd) VALUES (45, 'liam.lopez45', 'LiamL@199705');
INSERT INTO Login ( cid, username, passwd) VALUES (46, 'oliver.smith46', 'OliverS@200110');
INSERT INTO Login ( cid, username, passwd) VALUES (47, 'fatima.haddad47', 'FatimaH@200007');
INSERT INTO Login ( cid, username, passwd) VALUES (48, 'ramesh.reddy48', 'RameshR@199908');
INSERT INTO Login ( cid, username, passwd) VALUES (49, 'jin.choi49', 'JinC@200304');
INSERT INTO Login ( cid, username, passwd) VALUES (50, 'mei.yamamoto50', 'MeiY@200402');


-- 5. -	Populate the Point_Accounts table. It should contain 50 records corresponding to the number of customers you have in the Customers table (Each customer should have an entry in the Point_Accounts table since all the customers are assumed to be part of the LoyaltyFirst program).

INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0001', 500, 1, 10, 1);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0002', 1200, 2, 15, 2);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0003', 750, 4, 8, 3);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0004', 300, 5, 5, 4);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0005', 900, 2, 12, 5);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0006', 600, 1, 7, 6);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0007', 1300, 3, 20, 7);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0008', 400, 4, 6, 8);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0009', 800, 5, 10, 9);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0010', 950, 3, 15, 10);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0011', 1100, 6, 12, 11);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0012', 550, 6, 8, 12);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0013', 200, 8, 5, 13);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0014', 1000, 7, 18, 14);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0015', 750, 9, 9, 15);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0016', 300, 8, 6, 16);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0017', 1200, 9, 20, 17);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0018', 450, 11, 7, 18);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0019', 700, 10, 11, 19);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0020', 850, 15, 13, 20);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0021', 650, 10, 10, 21);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0022', 1050, 11, 14, 22);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0023', 400, 12, 6, 23);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0024', 980, 17, 15, 24);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0025', 300, 14, 5, 25);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0026', 770, 13, 9, 26);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0027', 1300, 16, 20, 27);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0028', 250, 17, 4, 28);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0029', 600, 15, 8, 29);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0030', 900, 16, 13, 30);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0031', 480, 7, 9, 31);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0032', 820, 18, 11, 32);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0033', 1050, 14, 14, 33);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0034', 690, 18, 10, 34);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0035', 550, 19, 6, 35);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0036', 780, 1, 12, 36);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0037', 260, 2, 5, 37);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0038', 950, 3, 17, 38);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0039', 360, 4, 6, 39);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0040', 1190, 5, 20, 40);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0041', 340, 6, 5, 41);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0042', 1080, 7, 16, 42);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0043', 620, 8, 10, 43);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0044', 730, 9, 10, 44);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0045', 940, 10, 13, 45);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0046', 810, 11, 10, 46);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0047', 520, 12, 7, 47);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0048', 410, 13, 11, 48);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0049', 670, 14, 8, 49);
INSERT INTO Point_Accounts (POINT_ACCT_NO, NUM_OF_POINTS, FAMILY_ID, PERCENT_ADDED, CID) VALUES ('PA0050', 870, 15, 12, 50);

-- 6. -	Insert data into the Transactions, Products, and Transactions_Products tables. You should have a minimum of 10 products and 10 transactions (at least 5 different products per transaction). Let some transactions contain some common products with other transactions). 
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P001', 'Smartphone', 699.99, 700);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P002', 'Laptop', 1199.99, 1200);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P003', 'Headphones', 199.99, 200);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P004', 'Smartwatch', 299.99, 300);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P005', 'Tablet', 499.99, 500);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P006', 'Camera', 799.99, 800);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P007', 'Bluetooth Speaker', 149.99, 150);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P008', 'Keyboard', 49.99, 50);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P009', 'Mouse', 29.99, 30);
INSERT INTO Products (PROD_ID, PROD_NAME, PRICE, PROD_POINTS) VALUES ('P010', 'Charger', 19.99, 20);


INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T001', TO_DATE('2024-11-01', 'YYYY-MM-DD'), '10:30 AM', 1599.95, 1600, 'Alice', 'Electronics purchase', 1, 'PA0001');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T002', TO_DATE('2024-11-02', 'YYYY-MM-DD'), '11:00 AM', 1199.97, 1200, 'Bob', 'Office equipment', 2, 'PA0002');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T003', TO_DATE('2024-11-03', 'YYYY-MM-DD'), '12:15 PM', 2299.96, 2300, 'Charlie', 'Gadgets and devices', 3, 'PA0003');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T004', TO_DATE('2024-11-04', 'YYYY-MM-DD'), '01:45 PM', 899.96, 900, 'Dave', 'Home electronics', 4, 'PA0004');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T005', TO_DATE('2024-11-05', 'YYYY-MM-DD'), '02:20 PM', 1549.95, 1550, 'Eve', 'Mobile accessories', 5, 'PA0005');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T006', TO_DATE('2024-11-06', 'YYYY-MM-DD'), '03:30 PM', 749.95, 750, 'Frank', 'Miscellaneous gadgets', 6, 'PA0006');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T007', TO_DATE('2024-11-07', 'YYYY-MM-DD'), '04:45 PM', 1999.94, 2000, 'Grace', 'Tech bundle', 7, 'PA0007');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T008', TO_DATE('2024-11-08', 'YYYY-MM-DD'), '05:10 PM', 1849.92, 1850, 'Hank', 'Personal devices', 8, 'PA0008');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T009', TO_DATE('2024-11-09', 'YYYY-MM-DD'), '06:00 PM', 1399.93, 1400, 'Ivy', 'Office and personal gadgets', 9, 'PA0009');
INSERT INTO Transactions (TREF, T_DATE, T_TIME, AMOUNT, T_POINTS, CASHIER_NAME, T_DESCRIPTION, CID, POINT_ACCT_NO)
VALUES ('T010', TO_DATE('2024-11-10', 'YYYY-MM-DD'), '07:30 PM', 1049.94, 1050, 'Jack', 'Tech and accessories', 10, 'PA0010');

-- Transactions_Products table

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T001', 'P001', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T001', 'P003', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T001', 'P005', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T001', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T001', 'P010', 3);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T002', 'P002', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T002', 'P003', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T002', 'P006', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T002', 'P008', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T002', 'P009', 2);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T003', 'P001', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T003', 'P004', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T003', 'P005', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T003', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T003', 'P009', 1);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T004', 'P002', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T004', 'P003', 3);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T004', 'P006', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T004', 'P008', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T004', 'P010', 2);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T005', 'P004', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T005', 'P005', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T005', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T005', 'P009', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T005', 'P010', 1);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T006', 'P001', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T006', 'P003', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T006', 'P006', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T006', 'P008', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T006', 'P010', 1);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T007', 'P002', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T007', 'P004', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T007', 'P005', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T007', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T007', 'P009', 1);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T008', 'P001', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T008', 'P003', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T008', 'P006', 2);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T008', 'P008', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T008', 'P010', 2);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T009', 'P004', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T009', 'P005', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T009', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T009', 'P009', 3);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T009', 'P010', 1);

INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T010', 'P001', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T010', 'P002', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T010', 'P006', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T010', 'P007', 1);
INSERT INTO Transactions_Products (TREF, PROD_ID, QUANTITY) VALUES ('T010', 'P010', 3);


--  7. Insert the card information into the Cards table. Each customer must have a valid card.  Let at least 5 customers have a second expired (non-valid) card. 
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C001', TO_DATE('2027-12-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C002', TO_DATE('2026-11-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 2);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C003', TO_DATE('2028-10-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 3);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C004', TO_DATE('2025-09-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 4);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C005', TO_DATE('2029-08-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 5);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C006', TO_DATE('2027-07-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-06-01', 'YYYY-MM-DD'), 6);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C007', TO_DATE('2028-06-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-07-01', 'YYYY-MM-DD'), 7);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C008', TO_DATE('2026-05-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 8);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C009', TO_DATE('2029-04-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-09-01', 'YYYY-MM-DD'), 9);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C010', TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-10-01', 'YYYY-MM-DD'), 10);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C011', TO_DATE('2028-02-28', 'YYYY-MM-DD'), 'V', TO_DATE('2024-11-01', 'YYYY-MM-DD'), 11);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C012', TO_DATE('2026-01-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 12);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C013', TO_DATE('2027-12-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 13);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C014', TO_DATE('2025-11-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 14);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C015', TO_DATE('2029-10-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 15);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C016', TO_DATE('2027-09-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 16);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C017', TO_DATE('2028-08-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 17);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C018', TO_DATE('2029-07-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-06-01', 'YYYY-MM-DD'), 18);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C019', TO_DATE('2026-06-30', 'YYYY-MM-DD'), 'V', TO_DATE('2024-07-01', 'YYYY-MM-DD'), 19);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C020', TO_DATE('2029-05-31', 'YYYY-MM-DD'), 'V', TO_DATE('2024-08-01', 'YYYY-MM-DD'), 20);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C026', TO_DATE('2027-04-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 21);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C027', TO_DATE('2026-03-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-02-01', 'YYYY-MM-DD'), 22);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C028', TO_DATE('2025-02-28', 'YYYY-MM-DD'), 'V', TO_DATE('2023-03-01', 'YYYY-MM-DD'), 23);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C029', TO_DATE('2028-01-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-04-01', 'YYYY-MM-DD'), 24);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C030', TO_DATE('2029-12-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-05-01', 'YYYY-MM-DD'), 25);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C031', TO_DATE('2026-11-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-06-01', 'YYYY-MM-DD'), 26);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C032', TO_DATE('2027-10-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 27);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C033', TO_DATE('2028-09-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-08-01', 'YYYY-MM-DD'), 28);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C034', TO_DATE('2029-08-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-09-01', 'YYYY-MM-DD'), 29);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C035', TO_DATE('2025-07-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-10-01', 'YYYY-MM-DD'), 30);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C036', TO_DATE('2027-06-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 31);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C037', TO_DATE('2026-05-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 32);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C038', TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-03-25', 'YYYY-MM-DD'), 33);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C039', TO_DATE('2028-03-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-04-15', 'YYYY-MM-DD'), 34);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C040', TO_DATE('2029-02-28', 'YYYY-MM-DD'), 'V', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 35);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C041', TO_DATE('2026-01-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 36);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C042', TO_DATE('2027-12-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 37);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C043', TO_DATE('2028-11-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-08-25', 'YYYY-MM-DD'), 38);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C044', TO_DATE('2029-10-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-09-15', 'YYYY-MM-DD'), 39);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C045', TO_DATE('2025-09-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-10-25', 'YYYY-MM-DD'), 40);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C046', TO_DATE('2027-08-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 41);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C047', TO_DATE('2026-07-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 42);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C048', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-03-22', 'YYYY-MM-DD'), 43);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C049', TO_DATE('2028-05-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-04-26', 'YYYY-MM-DD'), 44);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C050', TO_DATE('2029-04-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 45);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C051', TO_DATE('2027-03-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 46);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C052', TO_DATE('2026-02-28', 'YYYY-MM-DD'), 'V', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 47);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C053', TO_DATE('2025-01-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 48);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C054', TO_DATE('2028-12-31', 'YYYY-MM-DD'), 'V', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 49);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C055', TO_DATE('2029-11-30', 'YYYY-MM-DD'), 'V', TO_DATE('2023-05-12', 'YYYY-MM-DD'), 50);

-- Expired cards for selected customers, with C_DATE before today's date (2024-11-07)
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C021', TO_DATE('2022-12-31', 'YYYY-MM-DD'), 'E', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C022', TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'E', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 5);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C023', TO_DATE('2022-10-31', 'YYYY-MM-DD'), 'E', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 10);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C024', TO_DATE('2022-09-30', 'YYYY-MM-DD'), 'E', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 15);
INSERT INTO Cards (CARD_ID, EXP_DATE, STATUS, C_DATE, CID) VALUES ('C025', TO_DATE('2022-08-31', 'YYYY-MM-DD'), 'E', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 20);

-- 8. -	Insert the information of at least 10 offers into the Offers table
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF001', 'Discount', TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Get 20% off on electronics for orders above $1000.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF002', 'Cashback', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Receive $50 cashback on every purchase of $500 or more.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF003', 'Reward Points', TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'Earn double reward points on all purchases this weekend.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF004', 'Free Shipping', TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'Enjoy free shipping on orders over $200.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF005', 'Exclusive Access', TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'Get exclusive early access to our Black Friday deals.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF006', 'Bonus Points', TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Receive 1000 bonus points on your next purchase over $100.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF007', 'Limited Edition', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Purchase any product to enter a draw for a limited-edition smartphone.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF008', 'Free Gift', TO_DATE('2024-04-20', 'YYYY-MM-DD'), 'Get a free wireless charger on purchases over $250.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF009', 'Flash Sale', TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Flash sale: 30% off on select items from 6-9 PM.');
INSERT INTO Offers (OFFER_ID, ACTION, O_DATE, O_DESCRIPTION) VALUES 
('OF010', 'Referral Bonus', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 'Refer a friend and earn $25 credit on your next purchase.');

-- 9. -	Insert the information of 6 branches into the Branches table. 
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B001', 'Washington Central', '9:00 AM - 9:00 PM', 'Washington, DC');
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B002', 'Georgetown', '10:00 AM - 8:00 PM', 'Washington, DC');
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B003', 'Bethesda North', '8:00 AM - 10:00 PM', 'Bethesda, MD');
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B004', 'Silver Spring South', '9:00 AM - 9:00 PM', 'Silver Spring, MD');
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B005', 'Tysons Corner', '10:00 AM - 7:00 PM', 'Tysons, VA');
INSERT INTO Branches (BRANCH_ID, BRANCH_NAME, OPENING_HOURS, B_LOCATION) VALUES 
('B006', 'Arlington East', '9:00 AM - 9:00 PM', 'Arlington, VA');

-- 10.-	Create an association of your choice between the offers and branches by populating the Offers_Branches table.

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF001', 'B001');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF001', 'B003');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF001', 'B005');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF002', 'B002');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF002', 'B006');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B001');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B002');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B003');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B004');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B005');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF003', 'B006');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF004', 'B004');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF004', 'B002');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF005', 'B001');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF005', 'B006');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF005', 'B005');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF006', 'B003');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF006', 'B004');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B001');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B002');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B003');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B004');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B005');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF007', 'B006');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF008', 'B005');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF008', 'B006');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF009', 'B001');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF009', 'B002');

INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF010', 'B004');
INSERT INTO Offers_Branches (OFFER_ID, BRANCH_ID) VALUES ('OF010', 'B003');

-- 11.	For simplicity, leave the Offers_Transactions table empty.

-- 12. Create a set of 5 exchange centers
INSERT INTO EXCHGCENTERS (CENTER_ID, CENTER_NAME, C_LOCATION) VALUES (1, 'Capital Exchange Center', '123 Constitution Ave NW, Washington, DC');
INSERT INTO EXCHGCENTERS (CENTER_ID, CENTER_NAME, C_LOCATION) VALUES (2, 'Baltimore Exchange Hub', '500 Light St, Baltimore, MD');
INSERT INTO EXCHGCENTERS (CENTER_ID, CENTER_NAME, C_LOCATION) VALUES (3, 'Tysons Exchange Point', '8000 Tysons Corner Center, Tysons, VA');
INSERT INTO EXCHGCENTERS (CENTER_ID, CENTER_NAME, C_LOCATION) VALUES (4, 'Alexandria Trade Center', '1500 King St, Alexandria, VA');
INSERT INTO EXCHGCENTERS (CENTER_ID, CENTER_NAME, C_LOCATION) VALUES (5, 'Bethesda Exchange', '7300 Wisconsin Ave, Bethesda, MD');

--  13. Create a list of 15 prizes. 
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (1, 100, 'Keychain - Customizable keychain');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (2, 250, 'Reusable Water Bottle - Eco-friendly water bottle');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (3, 400, 'Coffee Mug - Insulated travel mug');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (4, 600, 'Phone Stand - Adjustable mobile phone stand');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (5, 800, 'USB Flash Drive - 16GB USB storage device');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (6, 1000, 'Hand Sanitizer Pack - 5-pack of travel-size sanitizers');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (7, 1200, 'Notebook - Premium hardcover notebook');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (8, 1500, 'Portable Charger - Small 5000mAh power bank');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (9, 2000, 'Bluetooth Key Finder - Device tracker for keys and items');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (10, 2500, 'Wireless Mouse - Ergonomic wireless mouse');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (11, 3000, 'Gift Card - $10 gift card');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (12, 3500, 'Mini Speaker - Portable mini Bluetooth speaker');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (13, 4000, 'Lunch Box - Insulated lunch container');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (14, 4500, 'Umbrella - Compact travel umbrella');
INSERT INTO PRIZES (PRIZE_ID, POINTS_NEEDED, P_DESCRIPTION) VALUES (15, 5000, 'Wireless Earbuds - Basic Bluetooth earbuds');


-- 14. Populate the Redemption_History table with sample data linking the Customers, Prizes, Point_Accounts, and Exchg_Centers tables. You should have a minimum of 20 records in the Redemption_History table. 
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(1, 1, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 1, 'PA0001', 1);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(2, 2, TO_DATE('2024-09-15', 'YYYY-MM-DD'), 2, 'PA0002', 2);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(3, 3, TO_DATE('2024-08-25', 'YYYY-MM-DD'), 1, 'PA0003', 3);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(4, 4, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 1, 'PA0004', 4);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(5, 5, TO_DATE('2024-07-05', 'YYYY-MM-DD'), 1, 'PA0005', 5);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(6, 6, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 1, 'PA0006', 1);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(7, 7, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 2, 'PA0007', 2);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(8, 8, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 1, 'PA0008', 3);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(9, 9, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 1, 'PA0009', 4);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(10, 10, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 1, 'PA0010', 5);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(11, 11, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 1, 'PA0011', 1);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(12, 12, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 2, 'PA0012', 2);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(13, 13, TO_DATE('2023-12-20', 'YYYY-MM-DD'), 1, 'PA0013', 3);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(14, 14, TO_DATE('2023-11-25', 'YYYY-MM-DD'), 1, 'PA0014', 4);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(15, 15, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 1, 'PA0015', 5);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(16, 1, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 1, 'PA0016', 1);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(17, 2, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 2, 'PA0017', 2);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(18, 3, TO_DATE('2023-09-05', 'YYYY-MM-DD'), 1, 'PA0018', 3);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(19, 4, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 1, 'PA0019', 4);
INSERT INTO Redemption_History (CID, PRIZE_ID, R_DATE, QUANTITY, POINT_ACCT_NO, CENTER_ID) VALUES 
(20, 5, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 1, 'PA0020', 5);

