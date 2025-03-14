PRAGMA Foreign_Keys = True;

-- Participants Table
CREATE TABLE Participants (
    Participant_ID INTEGER PRIMARY KEY,
    Last_Name TEXT NOT NULL,
    First_Name TEXT NOT NULL,
    Address TEXT NOT NULL,
    City TEXT NOT NULL,
    State TEXT NOT NULL,
    Postal_Code TEXT NOT NULL,
    Telephone_Number TEXT NOT NULL,
    Date_Of_Birth DATE NOT NULL
);

-- Adventure Classes Table
CREATE TABLE Adventure_Classes (
    Class_Number INTEGER PRIMARY KEY,
    Class_Description TEXT NOT NULL,
    Max_Participants INTEGER NOT NULL,
    Class_Fee DECIMAL(10,2) NOT NULL
);

-- Enrollments Table (Many-to-Many Relationship)
CREATE TABLE Enrollments (
    Participant_ID INTEGER,
    Class_Number INTEGER,
    Class_Date DATE NOT NULL,
    PRIMARY KEY (Participant_ID, Class_Number),
    FOREIGN KEY (Participant_ID) REFERENCES Participants(Participant_ID) ON DELETE CASCADE,
    FOREIGN KEY (Class_Number) REFERENCES Adventure_Classes(Class_Number) ON DELETE CASCADE
);
