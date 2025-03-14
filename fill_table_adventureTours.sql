INSERT INTO Participants (Participant_ID, Last_Name, First_Name, Address, City, State, Postal_Code, Telephone_Number, Date_Of_Birth) 
VALUES
(1, 'Dela Cruz', 'Jerry', '117 Vergel de Dios', 'Bulacan', 'PH', '3004', '639954000674', '2004-10-19'),
(2, 'Venida', 'Brenzo', '000 Lopez Natividad', 'Ermita', 'PH', '1000', '63900000000', '2005-05-04');

INSERT INTO Adventure_Classes (Class_Number, Class_Description, Max_Participants, Class_Fee) VALUES
(101, 'Hiking in the Rockies', 20, 50.00),
(102, 'Mountain Biking Basics', 15, 75.00),
(103, 'Kayaking on the River', 10, 90.00);

INSERT INTO Enrollments (Participant_ID, Class_Number, Class_Date) VALUES
(1, 101, '2025-03-15'),
(2, 102, '2025-03-16'),
(1, 102, '2025-03-18'),  -- John Smith enrolled in another class
(2, 103, '2025-03-19');  -- Emma Johnson enrolled in another class
