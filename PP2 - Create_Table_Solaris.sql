PRAGMA Foreign_Keys=True;

-- Renter Table
CREATE TABLE Renter (
    RenterID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    MiddleInitial TEXT,
    LastName TEXT NOT NULL,
    Address TEXT NOT NULL,
    City TEXT NOT NULL,
    State TEXT NOT NULL,
    PostalCode TEXT NOT NULL,
    TelephoneNumber TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL
);
