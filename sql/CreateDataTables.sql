-- Drop Current Tables --

DROP TABLE Sale;
DROP TABLE Address;
DROP TABLE Agents;
DROP TABLE Properties;
DROP TABLE Person;

-- Create New Tables --

CREATE TABLE Agents
(
AgentID INT NOT NULL PRIMARY KEY,
FirstName VARCHAR(30),
LastName VARCHAR(30)
);

CREATE TABLE Properties
(
PropertyID INT NOT NULL PRIMARY KEY,
Price NUMBER DEFAULT NULL,
Bedrooms NUMBER DEFAULT NULL,
Bathrooms NUMBER DEFAULT NULL,
Acres NUMBER DEFAULT NULL,
Parking NUMBER DEFAULT NULL,
Basement NUMBER DEFAULT NULL,
Central_Air NUMBER DEFAULT NULL,
Gas_Heat NUMBER DEFAULT NULL,
Levels NUMBER DEFAULT NULL,
Swimming_Pool NUMBER DEFAULT NULL,
Listing_Date DATE,
Status NUMBER DEFAULT NULL,
Picture BLOB DEFAULT NULL
);

CREATE TABLE Person
(
PersonID INT NOT NULL PRIMARY KEY,
FirstName VARCHAR(30),
LastName VARCHAR(30)
);

CREATE TABLE Address
(
AddressID INT NOT NULL PRIMARY KEY,
PropertyID INT,
Street VARCHAR(100),
City VARCHAR(50),
State VARCHAR(2),
Zip INT,
County VARCHAR(30),
FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);

CREATE TABLE Sale
(
SaleID INT NOT NULL PRIMARY KEY,
Property INT,
Buyer INT,
Seller INT,
Agent INT,
Sale_Amount NUMBER(10,2),
Sale_Date DATE,
FOREIGN KEY (Property) REFERENCES Properties(PropertyID),
FOREIGN KEY (Buyer) REFERENCES Person(PersonID),
FOREIGN KEY (Seller) REFERENCES Person(PersonID),
FOREIGN KEY (Agent) REFERENCES Agents(AgentID)
);

-- Create 'Agents' Data --

INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (1,'Desirae','Espinoza');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (2,'Samuel','Richard');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (3,'Jaime','Oneill');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (4,'Myra','Marquez');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (5,'Keane','Sellers');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (6,'Oprah','Garza');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (7,'Chantale','Weaver');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (8,'Yvonne','Albert');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (9,'Martena','Clark');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (10,'Mufutau','Barnett');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (11,'Harding','Beasley');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (12,'Karleigh','Mills');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (13,'Yolanda','Tucker');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (14,'Gray','Hodge');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (15,'Fleur','Owen');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (16,'Tiger','Lloyd');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (17,'Paki','Carey');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (18,'Demetria','Orr');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (19,'Kyra','Patel');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (20,'Kermit','Mclaughlin');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (21,'Hilda','Mcpherson');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (22,'Madaline','Cox');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (23,'Sybil','Frost');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (24,'Alec','Burch');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (25,'Dante','Robbins');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (26,'Ulysses','Ford');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (27,'Cooper','Webb');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (28,'Hilda','Booker');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (29,'Nolan','Cotton');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (30,'Uta','Walters');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (31,'Rosalyn','Blevins');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (32,'Lionel','Vang');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (33,'TaShya','Potter');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (34,'Carissa','Barlow');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (35,'Sierra','Delgado');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (36,'Mia','Calhoun');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (37,'Priscilla','Cruz');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (38,'Zia','Perkins');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (39,'Elijah','Norris');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (40,'Imogene','Walsh');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (41,'Noel','Daniel');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (42,'Uma','Erickson');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (43,'Eaton','Holden');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (44,'Prescott','Talley');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (45,'Mariam','Dunlap');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (46,'Felicia','Haley');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (47,'Kirsten','Ayala');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (48,'Hollee','Wright');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (49,'Timon','Hardin');
INSERT INTO Agents (AgentID,FirstName,LastName) VALUES (50,'Talon','Bradley');

-- Create 'Properties' Data --

INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (1,1385805,5,1,10,1,1,0,0,4,0,'30-Aug-2003',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (2,1683946,2,2,3,1,1,1,0,1,1,'18-Aug-1977',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (3,1739939,2,2,7,2,1,1,0,4,1,'08-Dec-2011',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (4,1927172,5,2,7,1,0,0,1,3,0,'14-May-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (5,1527383,3,1,7,3,0,1,0,4,1,'20-May-2010',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (6,1299753,2,1,5,1,0,0,0,1,0,'16-Jul-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (7,1867139,2,1,4,3,1,1,1,4,1,'20-Dec-1972',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (8,1344357,4,2,4,1,1,1,1,3,1,'04-Sep-2014',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (9,1516172,2,1,5,2,1,0,0,2,1,'26-Oct-1992',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (10,1380893,3,1,10,3,0,1,0,3,1,'16-Jul-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (11,1192961,4,2,7,2,0,0,1,4,1,'28-Dec-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (12,1612285,2,1,1,3,0,0,1,2,1,'13-Apr-1997',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (13,952325,3,2,3,3,0,0,1,3,0,'16-Feb-2014',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (14,1026592,4,2,3,3,0,1,1,4,0,'29-Apr-2012',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (15,1570335,2,2,5,3,0,1,0,1,1,'02-Jun-1979',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (16,1481478,4,1,10,1,1,1,1,4,1,'26-Mar-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (17,265882,4,1,3,2,1,1,1,3,1,'06-Oct-2003',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (18,1488503,2,2,6,2,1,1,0,2,0,'13-Dec-2000',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (19,250000,5,1,3,2,1,0,0,1,1,'18-Jul-1988',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (20,1562610,2,1,10,1,1,0,1,4,1,'07-Oct-1978',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (21,229887,4,2,5,3,0,1,1,2,1,'20-Oct-2010',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (22,588722,5,2,0,3,1,1,1,1,1,'27-Feb-2004',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (23,1641835,3,1,5,1,0,1,0,4,1,'26-Nov-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (24,798216,5,1,5,1,1,1,0,3,1,'12-Mar-1995',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (25,1208932,5,1,5,3,0,1,1,1,1,'26-May-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (26,1843175,2,2,0,3,0,1,1,1,1,'06-Jul-1992',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (27,270645,2,1,7,3,1,0,0,2,1,'12-Mar-1995',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (28,175335,3,2,3,2,1,1,0,1,0,'29-May-2011',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (29,141081,2,2,3,3,0,1,0,1,0,'11-Jun-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (30,1845332,2,1,9,1,1,0,1,2,0,'11-Mar-1984',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (31,1636534,5,2,6,1,0,0,1,3,0,'09-Nov-1975',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (32,382863,4,1,5,3,1,0,1,4,0,'03-May-2013',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (33,253019,3,2,3,1,0,0,1,3,0,'14-Jun-2002',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (34,1664486,2,1,5,1,0,1,1,2,0,'03-Jun-2000',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (35,1464512,4,1,6,3,0,0,1,4,0,'20-Nov-2003',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (36,1489847,3,2,1,3,1,0,1,3,1,'26-Nov-2015',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (37,1373947,3,2,6,3,1,1,1,3,0,'25-Nov-2008',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (38,325165,4,2,10,2,0,0,0,1,0,'25-Jun-2009',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (39,189000,3,1,5,3,0,0,1,1,0,'04-Dec-1981',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (40,750405,2,2,4,3,1,0,0,2,1,'16-Mar-2004',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (41,573811,2,2,3,2,1,1,0,2,0,'16-Oct-2004',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (42,212480,4,2,8,3,0,0,1,3,0,'23-Jan-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (43,639379,5,1,6,3,0,1,0,2,0,'06-Mar-1982',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (44,1799241,5,1,7,3,0,1,0,2,1,'05-Sep-2012',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (45,1211031,2,2,0,3,0,1,0,2,1,'14-Aug-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (46,764139,4,1,0,3,0,0,1,2,0,'13-Feb-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (47,1382885,4,2,4,3,0,0,1,4,1,'04-Oct-2015',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (48,222136,5,1,7,3,0,1,1,1,0,'14-Apr-2011',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (49,1753331,2,1,9,2,0,0,0,2,1,'18-Mar-2011',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (50,1618386,5,2,3,2,0,0,0,2,1,'29-Dec-1986',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (51,300000,3,1,5,1,0,0,0,4,0,'13-Dec-1993',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (52,1379398,3,2,8,2,1,0,0,3,0,'28-Jan-1977',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (53,1846112,5,1,0,3,1,0,0,4,1,'29-Nov-1997',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (54,160042,5,2,10,3,0,0,1,2,1,'19-Jul-1993',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (55,1172202,2,1,4,2,1,0,1,4,0,'21-Apr-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (56,1639754,3,2,7,2,1,0,1,1,0,'02-Oct-1977',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (57,662871,3,1,1,2,0,1,1,1,1,'12-Mar-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (58,199808,2,2,0,1,1,0,0,3,1,'18-Jun-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (59,1813632,4,2,3,3,1,1,0,1,0,'02-May-1971',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (60,615475,4,2,6,3,1,0,0,1,0,'28-Sep-1990',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (61,458296,5,2,4,3,1,1,1,2,0,'31-Aug-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (62,1904842,4,2,0,1,0,1,0,1,0,'27-Apr-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (63,1739149,3,1,9,3,1,0,0,2,1,'27-Oct-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (64,1582156,5,1,0,2,0,0,0,3,1,'10-May-1987',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (65,817260,2,1,1,3,0,1,0,4,1,'20-Apr-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (66,379000,4,1,4,2,1,1,0,1,1,'12-Mar-2002',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (67,764723,3,2,5,1,1,1,1,2,1,'05-Mar-2009',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (68,1724316,5,2,3,1,1,1,0,4,0,'08-Oct-2014',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (69,1706942,2,2,10,3,1,0,1,1,0,'12-Jul-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (70,1986707,2,1,7,3,0,0,1,2,0,'21-Apr-1986',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (71,1139267,4,2,1,3,1,1,1,4,0,'03-Jan-2001',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (72,1042644,3,2,6,1,0,1,1,1,0,'25-Jul-1998',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (73,1953396,2,1,6,1,1,1,0,2,1,'07-Mar-1971',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (74,745132,5,2,6,2,1,1,1,1,1,'03-Nov-1978',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (75,1080800,2,2,9,3,1,1,0,1,1,'06-Mar-1989',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (76,1788742,2,2,9,2,1,0,1,4,0,'16-Apr-2005',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (77,238650,2,2,10,3,1,0,1,1,0,'19-Sep-1978',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (78,1437228,4,2,0,1,1,1,1,1,0,'01-Apr-1988',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (79,458602,4,2,10,1,0,1,1,3,0,'21-Apr-1972',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (80,986963,4,1,4,1,0,0,0,4,0,'09-Jul-2004',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (81,1119193,5,1,4,1,1,1,0,4,0,'04-Jul-2007',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (82,764302,3,1,10,3,1,0,0,4,1,'18-May-1981',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (83,656454,3,1,6,3,0,0,1,1,0,'05-Jun-1990',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (84,840899,2,2,5,3,1,0,0,1,0,'13-Jul-1981',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (85,545629,3,1,1,1,1,1,0,2,0,'07-Jan-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (86,402398,5,2,7,3,1,1,1,2,0,'04-Dec-1970',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (87,1103740,4,1,7,1,1,1,0,1,1,'17-Apr-1972',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (88,1663789,3,1,7,3,1,0,1,2,1,'02-Jan-1978',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (89,1016100,4,2,2,2,1,0,0,3,1,'18-Jan-2006',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (90,436018,3,2,3,1,0,1,1,4,1,'20-Mar-2009',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (91,621072,4,1,10,1,0,0,0,2,0,'22-Oct-1970',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (92,1921134,5,1,0,2,1,0,0,2,1,'07-Apr-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (93,1839260,4,1,4,2,0,1,0,3,0,'23-May-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (94,1370533,5,2,8,3,1,1,1,1,1,'25-Dec-2012',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (95,1624367,2,1,8,1,1,0,1,1,1,'11-Jun-2014',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (96,1817087,5,1,3,2,1,1,0,1,0,'01-Nov-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (97,1406947,4,1,10,3,0,1,1,3,1,'05-Jun-1976',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (98,388017,2,1,1,2,0,1,0,1,1,'28-Sep-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (99,724928,4,1,5,2,0,1,0,2,1,'28-Sep-1984',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (100,917923,4,2,6,2,0,1,0,2,0,'20-Oct-2009',0);

-- Create 'Person' Data --

INSERT INTO Person (PersonID,FirstName,LastName) VALUES (1,'Carson','Cooper');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (2,'Uma','Mcpherson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (3,'Brennan','Herman');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (4,'Fatima','Berg');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (5,'Preston','Michael');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (6,'Jessica','Olsen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (7,'Noble','Lindsey');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (8,'Amethyst','Spence');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (9,'Mira','Richardson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (10,'Gareth','Sanford');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (11,'Cheryl','Wiggins');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (12,'Rhiannon','Andrews');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (13,'Dieter','Logan');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (14,'Orlando','Grimes');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (15,'Alice','Thompson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (16,'Clio','Bauer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (17,'Wylie','Ware');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (18,'Timothy','Romero');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (19,'Xyla','Mclean');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (20,'Lance','Perry');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (21,'Porter','Carr');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (22,'Tanek','Hicks');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (23,'Derek','Robinson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (24,'Raymond','Villarreal');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (25,'Alisa','Middleton');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (26,'Carissa','Steele');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (27,'Cecilia','Castillo');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (28,'Christine','Berg');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (29,'Flynn','Donovan');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (30,'Evelyn','Randolph');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (31,'Neville','Moreno');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (32,'Amelia','Castro');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (33,'Gray','Reynolds');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (34,'Lydia','Campos');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (35,'Todd','Pope');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (36,'Amela','Tyson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (37,'Ulysses','Campbell');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (38,'Lavinia','Winters');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (39,'Dylan','Boone');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (40,'Charlotte','Nicholson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (41,'Maryam','Wells');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (42,'Barbara','Brewer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (43,'Ivana','Perkins');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (44,'Blair','Gillespie');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (45,'Kelly','Merrill');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (46,'Celeste','Mendez');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (47,'Drake','Guzman');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (48,'Rhoda','Boone');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (49,'Constance','Frederick');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (50,'Julie','Ashley');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (51,'Velma','Mcconnell');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (52,'Allen','Barry');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (53,'Ferdinand','Mayer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (54,'Phillip','Herrera');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (55,'Keelie','Olsen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (56,'Shaeleigh','Burris');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (57,'Carly','Carrillo');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (58,'Sonya','Kramer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (59,'Dominic','Sellers');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (60,'Mason','Phelps');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (61,'Zachary','Burris');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (62,'Fitzgerald','Mcdowell');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (63,'Nelle','Cortez');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (64,'Hamilton','Burnett');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (65,'Leslie','Mckinney');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (66,'Amy','Stevens');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (67,'Evelyn','Mann');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (68,'Ethan','Gibbs');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (69,'Todd','Deleon');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (70,'Edan','Clayton');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (71,'Jeremy','Atkins');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (72,'Kaye','Nunez');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (73,'Idona','Callahan');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (74,'Katelyn','Richard');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (75,'Timon','York');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (76,'Sierra','Holt');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (77,'Kyra','Lopez');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (78,'Alma','Estes');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (79,'Marvin','Mcleod');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (80,'Cleo','Lester');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (81,'Acton','Sweet');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (82,'Bruno','Crane');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (83,'Renee','Kirk');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (84,'Ali','Santana');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (85,'Risa','Acosta');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (86,'Illana','Garner');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (87,'Angela','Berg');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (88,'Cherokee','Gallagher');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (89,'Jerry','Boyd');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (90,'Tasha','Kerr');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (91,'Sierra','Calhoun');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (92,'Perry','Fields');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (93,'Carter','Kent');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (94,'Merrill','Howe');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (95,'Flavia','Petersen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (96,'Darius','Howe');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (97,'Harper','Valenzuela');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (98,'Dakota','Jacobs');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (99,'Blossom','Bowen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (100,'Jaden','Ellison');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (101,'Allen','Franks');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (102,'Tashya','Mercer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (103,'Victor','Hartman');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (104,'Tad','Wall');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (105,'Maxwell','Holder');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (106,'Avram','Ingram');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (107,'Briar','Gregory');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (108,'Aristotle','Mccullough');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (109,'Lamar','Allen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (110,'Athena','Snyder');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (111,'Zeus','Gross');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (112,'Flynn','Kennedy');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (113,'Aileen','Joseph');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (114,'Zoe','Frank');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (115,'Miranda','Holloway');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (116,'Chadwick','Dotson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (117,'Kay','Holmes');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (118,'Haley','Craig');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (119,'Kamal','Townsend');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (120,'Dominic','Combs');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (121,'Yvonne','Palmer');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (122,'Davis','Yates');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (123,'Tasha','York');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (124,'Finn','Bender');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (125,'Garrison','Bradley');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (126,'Xavier','Payne');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (127,'Chava','Richard');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (128,'Cameron','Fitzgerald');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (129,'Clementine','Shepherd');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (130,'Jeremy','Cabrera');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (131,'Natalie','Barber');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (132,'Caesar','Parks');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (133,'Shoshana','Reyes');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (134,'Hammett','Ryan');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (135,'Geoffrey','Garcia');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (136,'Lacy','Cohen');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (137,'Sara','Bush');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (138,'Nissim','Mcintosh');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (139,'Leigh','Evans');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (140,'Winifred','Macias');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (141,'Cedric','Church');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (142,'Gisela','Cortez');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (143,'Aurelia','Sears');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (144,'Gregory','Mcdonald');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (145,'Athena','Thompson');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (146,'Rinah','Coleman');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (147,'Abbot','Pollard');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (148,'Brittany','Kelly');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (149,'Nina','Briggs');
INSERT INTO Person (PersonID,FirstName,LastName) VALUES (150,'Chadwick','Mathis');

-- Create 'Address' Data --

INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (1,1,'7978 At St.','Rockford','IL','94868','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (2,2,'8520 Blandit Road','Bowling Green','KY','66702','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (3,3,'6651 Ut Road','Allentown','PA','71367','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (4,4,'1414 Est St.','Overland Park','KS','63712','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (5,5,'798 Cursus Road','Fairbanks','AK','99627','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (6,6,'1515 Lorem, Av.','Hilo','HI','28245','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (7,7,'7165 A, Rd.','Gresham','OR','51611','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (8,8,'5753 Porttitor Av.','Des Moines','IA','64234','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (9,9,'5005 Id, Avenue','West Jordan','UT','16061','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (10,10,'4099 Lacinia Avenue','Norman','OK','81931','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (11,11,'7303 Congue, Ave','Pittsburgh','PA','33184','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (12,12,'531, 5409 Amet St.','Cedar Rapids','IA','72173','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (13,13,'3697 Pede Street','Racine','WI','88169','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (14,14,'4680 Donec Ave','South Portland','ME','45935','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (15,15,'6625 Libero. Avenue','Davenport','IA','88854','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (16,16,'7958 Nam St.','Seattle','WA','30293','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (17,17,'3173 Mauris. Road','Gillette','WY','22760','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (18,18,'6796 Natoque Ave','Biloxi','MS','36289','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (19,19,'5854 Mollis Road','Wilder','KY','33508','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (20,20,'1188 Rhoncus. St.','Aurora','CO','25175','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (21,21,'1251 Odio. Ave','Hillsboro','OR','55964','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (22,22,'5001 Ac Ave','Columbus','OH','57598','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (23,23,'7788 Ullamcorper Av.','Oklahoma City','OK','29350','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (24,24,'8829 Maecenas Av.','Fresno','CA','96043','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (25,25,'2801 Ipsum. Ave','Allentown','PA','38921','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (26,26,'8337 Mauris, Ave','Waterbury','CT','10699','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (27,27,'5944 Aliquam Rd.','Cincinnati','OH','34742','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (28,28,'8028 In Street','Reno','NV','66521','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (29,29,'3359 Magna Avenue','New Orleans','LA','63887','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (30,30,'4756 Pellentesque. Ave','Southaven','MS','81283','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (31,31,'7685 Nullam Road','Springfield','MA','44916','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (32,32,'8094 Ligula Av.','Montpelier','VT','49443','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (33,33,'1142 A, Av.','Gresham','OR','31405','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (34,35,'5524 Aenean St.','Meridian','ID','30077','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (35,36,'772 Eget Av.','Oklahoma City','OK','79436','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (36,36,'7150 Dolor, Rd.','Evansville','IN','53656','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (37,37,'3802 Nec Rd.','Independence','MO','75673','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (38,38,'2517 Eget, St.','Chesapeake','VA','78564','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (39,39,'6549 Pede, Av.','Wilder','KY','49914','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (40,40,'8829 A, Ave','Mesa','AZ','85493','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (41,41,'8283 Faucibus Rd.','Nashville','TN','83420','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (42,42,'8848 Adipiscing St.','Colorado Springs','CO','60563','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (43,43,'5694 Ante. Rd.','Nashville','TN','43309','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (44,44,'8152 Libero Road','Sioux City','IA','32608','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (45,45,'7068 Et Street','Warren','MI','20996','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (46,46,'4423 Consequat Street','Memphis','TN','33963','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (47,47,'3572 Ut Av.','Aurora','IL','58135','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (48,48,'8281 Ligula. St.','Birmingham','AL','35468','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (49,49,'3616 Quisque Avenue','Anchorage','AK','99539','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (50,50,'2036 Nulla Ave','Great Falls','MT','96042','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (51,51,'9708 Hendrerit. Rd.','Wilder','KY','36031','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (52,52,'7644 Laoreet St.','Portland','OR','19293','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (53,53,'8718 Amet, Road','Houston','TX','84294','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (54,54,'9561 Non Road','Cincinnati','OH','44928','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (55,55,'8148 Sem, St.','Toledo','OH','85880','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (56,56,'1714 Nunc Street','West Jordan','UT','30182','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (57,57,'1193 Cras St.','Columbia','MO','16853','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (58,58,'9490 Enim, Ave','Essex','VT','67494','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (59,59,'6628 Nascetur Rd.','South Bend','IN','28971','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (60,60,'3175 Donec Road','Gary','IN','47009','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (61,61,'7047 Rhoncus Street','Colchester','VT','12784','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (62,62,'666 Id, Ave','Norman','OK','70182','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (63,63,'488 Enim Rd.','Boston','MA','81759','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (64,64,'9346 Euismod Ave','Cheyenne','WY','93756','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (65,65,'7266 Hymenaeos. Avenue','Hillsboro','OR','33612','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (66,66,'2033 Neque Street','Wilder','KY','66979','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (67,67,'3848 Id Ave','Saint Paul','MN','38742','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (68,68,'2357 Risus. Av.','Springfield','IL','33376','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (69,59,'1725 Erat. Rd.','Orlando','FL','66467','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (70,70,'5996 Et Av.','West Valley City','UT','73237','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (71,71,'9880 Ultrices Av.','South Burlington','VT','60144','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (72,72,'7694 Porttitor Rd.','Orlando','FL','40225','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (73,73,'7877 Congue, Avenue','Cleveland','OH','73930','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (74,74,'7887 Sed Rd.','Chandler','AZ','86741','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (75,75,'2516 Eu, St.','Kearney','NE','81270','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (76,76,'2037 Nulla Ave','Great Falls','MT','96042','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (77,77,'9709 Hendrerit. Rd.','Wilder','KY','36031','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (78,78,'7645 Laoreet St.','Portland','OR','19293','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (79,79,'8719 Amet, Road','Houston','TX','84294','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (80,80,'9568 Non Road','Cincinnati','OH','44928','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (81,81,'8149 Sem, St.','Toledo','OH','85880','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (82,82,'1716 Nunc Street','West Jordan','UT','30182','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (83,83,'1195 Cras St.','Columbia','MO','16853','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (84,84,'9491 Enim, Ave','Essex','VT','67494','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (85,85,'6629 Nascetur Rd.','South Bend','IN','28971','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (86,86,'3176 Donec Road','Gary','IN','47009','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (87,87,'7048 Rhoncus Street','Colchester','VT','12784','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (88,88,'667 Id, Ave','Norman','OK','70182','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (89,89,'489 Enim Rd.','Boston','MA','81759','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (90,90,'9347 Euismod Ave','Cheyenne','WY','93756','Jackson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (91,91,'7267 Hymenaeos. Avenue','Hillsboro','OR','33612','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (92,92,'2034 Neque Street','Wilder','KY','66979','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (93,93,'3847 Id Ave','Saint Paul','MN','38742','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (94,94,'2358 Risus. Av.','Springfield','IL','33376','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (95,95,'1726 Erat. Rd.','Orlando','FL','66467','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (96,96,'5997 Et Av.','West Valley City','UT','73237','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (97,97,'9881 Ultrices Av.','South Burlington','VT','60144','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (98,98,'7695 Porttitor Rd.','Orlando','FL','40225','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (99,99,'7878 Congue, Avenue','Cleveland','OH','73930','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (100,100,'7888 Sed Rd.','Chandler','AZ','86741','Campbell');
--Sales--

UPDATE Properties
SET status = 1
WHERE PropertyID= 1;

INSERT INTO SALE (SALEID,PROPERTY,BUYER,SELLER,AGENT,SALE_AMOUNT,SALE_DATE) VALUES (1,1,3,5,1,450000,'11-Apr-2016');


UPDATE Properties
SET status = 1
WHERE PropertyID= 5;

INSERT INTO SALE (SALEID,PROPERTY,BUYER,SELLER,AGENT,SALE_AMOUNT,SALE_DATE) VALUES (2,5,6,8,2,800000,'21-Apr-2016');


UPDATE Properties
SET status = 1
WHERE PropertyID= 9;

INSERT INTO SALE (SALEID,PROPERTY,BUYER,SELLER,AGENT,SALE_AMOUNT,SALE_DATE) VALUES (3,9,9,11,3,1800000,'1-Apr-2016');


UPDATE Properties
SET status = 1
WHERE PropertyID= 12;

INSERT INTO SALE (SALEID,PROPERTY,BUYER,SELLER,AGENT,SALE_AMOUNT,SALE_DATE) VALUES (4,12,12,14,4,504000,'1-Apr-2016');

--UNSOLD--
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (5,2,91,4);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (6,3,9,5);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (7,4,96,46);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (8,6,67,34);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (9,7,36,23);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (10,8,16,22);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (11,10,87,33);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (12,11,44,33);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (13,13,134,23);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (14,14,100,50);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (15,15,77,46);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (16,16,94,19);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (17,17,99,32);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (18,18,44,12);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (19,19,76,25);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (20,20,56,1);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (21,21,24,10);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (22,22,138,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (23,23,131,48);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (24,24,123,45);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (25,25,93,4);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (26,26,142,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (27,27,139,17);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (28,28,24,41);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (29,29,18,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (30,30,117,34);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (31,31,24,24);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (32,32,33,28);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (33,33,1,19);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (34,34,124,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (35,35,137,35);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (36,36,111,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (37,37,37,18);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (38,38,32,24);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (39,39,1,46);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (40,40,47,48);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (41,41,139,34);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (42,42,95,13);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (43,43,17,24);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (44,44,13,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (45,45,72,17);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (46,46,121,31);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (47,47,81,40);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (48,48,121,41);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (49,49,69,44);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (50,50,8,5);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (51,51,91,23);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (52,52,141,12);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (53,53,145,19);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (54,54,135,7);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (55,55,129,4);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (56,56,77,12);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (57,57,118,35);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (58,58,94,43);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (59,59,87,17);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (60,60,58,37);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (61,61,62,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (62,62,82,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (63,63,79,34);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (64,64,109,12);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (65,65,36,34);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (66,66,129,21);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (67,67,23,42);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (68,68,94,9);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (69,69,13,50);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (70,70,46,37);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (71,71,149,19);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (72,72,105,42);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (73,73,125,42);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (74,74,57,11);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (75,75,91,9);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (76,76,40,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (77,77,86,24);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (78,78,57,3);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (79,79,139,25);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (80,80,112,49);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (81,81,76,32);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (82,82,104,9);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (83,83,85,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (84,84,51,4);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (85,85,35,2);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (86,86,96,44);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (87,87,95,5);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (88,88,78,6);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (89,89,124,25);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (90,90,38,26);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (91,91,121,8);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (92,92,65,30);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (93,93,104,39);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (94,94,118,3);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (95,95,100,12);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (96,96,3,9);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (97,97,118,22);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (98,98,29,14);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (99,99,85,37);
INSERT INTO SALE (SALEID,PROPERTY,SELLER,AGENT) VALUES (100,100,142,45);









