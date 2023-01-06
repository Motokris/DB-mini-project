CREATE TABLE Engineers (
               ID SMALLINT PRIMARY KEY AUTO_INCREMENT,
               First_name VARCHAR(25), 
               Last_name VARCHAR(25), 
               Contact VARCHAR(25) UNIQUE
);

CREATE TABLE Systems (
                SysID SMALLINT PRIMARY KEY AUTO_INCREMENT, 
                SystemType VARCHAR(25), 
                Available BOOL, 
                EngineerID SMALLINT, FOREIGN KEY(EngineerID) REFERENCES Engineers(ID)
);

CREATE TABLE Bookings (
                ID SMALLINT PRIMARY KEY, 
                First_name VARCHAR(25), 
                Last_name VARCHAR(25), 
                Email VARCHAR(25) UNIQUE,
                BookDate DATE,
                Duration TIME NOT NULL,
                SystemBook SMALLINT, FOREIGN KEY(SystemBook) REFERENCES Systems(SysID)
);