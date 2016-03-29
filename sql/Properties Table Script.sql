	DROP TABLE Properties;

CREATE TABLE Properties (
  PropertyID number NOT NULL PRIMARY KEY,
  Price number default NULL,
  Bedrooms number default NULL,
  Bathrooms number default NULL,
  Acres number default NULL,
  Parking number default NULL,
  Finished_Basement number default NULL,
  Central_Air number default NULL,
  Gas_Heat number default NULL,
  Levels number default NULL,
  Swimming_Pool number default NULL,
  Listing_Date date,
  Status number default NULL
);

INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (1,1385805,5,1,10,1,1,0,0,4,0,'30-Aug-2003',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (2,1683946,2,2,3,1,1,1,0,1,1,'18-Aug-1977',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (3,1739939,2,2,7,2,1,1,0,4,1,'08-Dec-2011',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (4,1927172,5,2,7,1,0,0,1,3,0,'14-May-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (5,1527383,3,1,7,3,0,1,0,4,1,'20-May-2010',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (6,1299753,2,1,5,1,0,0,0,1,0,'16-Jul-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (7,1867139,2,1,4,3,1,1,1,4,1,'20-Dec-1972',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (8,1344357,4,2,4,1,1,1,1,3,1,'04-Sep-2014',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (9,1516172,2,1,5,2,1,0,0,2,1,'26-Oct-1992',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (10,1380893,3,1,10,3,0,1,0,3,1,'16-Jul-1985',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (11,1192961,4,2,7,2,0,0,1,4,1,'28-Dec-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (12,1612285,2,1,1,3,0,0,1,2,1,'13-Apr-1997',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (13,952325,3,2,3,3,0,0,1,3,0,'16-Feb-2014',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (14,1026592,4,2,3,3,0,1,1,4,0,'29-Apr-2012',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (15,1570335,2,2,5,3,0,1,0,1,1,'02-Jun-1979',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (16,1481478,4,1,10,1,1,1,1,4,1,'26-Mar-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (17,265882,4,1,3,2,1,1,1,3,1,'06-Oct-2003',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (18,1488503,2,2,6,2,1,1,0,2,0,'13-Dec-2000',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (19,250000,5,1,3,2,1,0,0,1,1,'18-Jul-1988',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (20,1562610,2,1,10,1,1,0,1,4,1,'07-Oct-1978',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (21,229887,4,2,5,3,0,1,1,2,1,'20-Oct-2010',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (22,588722,5,2,0,3,1,1,1,1,1,'27-Feb-2004',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (23,1641835,3,1,5,1,0,1,0,4,1,'26-Nov-1994',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (24,798216,5,1,5,1,1,1,0,3,1,'12-Mar-1995',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (25,1208932,5,1,5,3,0,1,1,1,1,'26-May-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (26,1843175,2,2,0,3,0,1,1,1,1,'06-Jul-1992',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (27,270645,2,1,7,3,1,0,0,2,1,'12-Mar-1995',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (28,175335,3,2,3,2,1,1,0,1,0,'29-May-2011',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (29,141081,2,2,3,3,0,1,0,1,0,'11-Jun-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (30,1845332,2,1,9,1,1,0,1,2,0,'11-Mar-1984',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (31,1636534,5,2,6,1,0,0,1,3,0,'09-Nov-1975',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (32,382863,4,1,5,3,1,0,1,4,0,'03-May-2013',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (33,253019,3,2,3,1,0,0,1,3,0,'14-Jun-2002',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (34,1664486,2,1,5,1,0,1,1,2,0,'03-Jun-2000',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (35,1464512,4,1,6,3,0,0,1,4,0,'20-Nov-2003',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (36,1489847,3,2,1,3,1,0,1,3,1,'26-Nov-2015',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (37,1373947,3,2,6,3,1,1,1,3,0,'25-Nov-2008',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (38,325165,4,2,10,2,0,0,0,1,0,'25-Jun-2009',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (39,189000,3,1,5,3,0,0,1,1,0,'04-Dec-1981',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (40,750405,2,2,4,3,1,0,0,2,1,'16-Mar-2004',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (41,573811,2,2,3,2,1,1,0,2,0,'16-Oct-2004',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (42,212480,4,2,8,3,0,0,1,3,0,'23-Jan-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (43,639379,5,1,6,3,0,1,0,2,0,'06-Mar-1982',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (44,1799241,5,1,7,3,0,1,0,2,1,'05-Sep-2012',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (45,1211031,2,2,0,3,0,1,0,2,1,'14-Aug-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (46,764139,4,1,0,3,0,0,1,2,0,'13-Feb-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (47,1382885,4,2,4,3,0,0,1,4,1,'04-Oct-2015',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (48,222136,5,1,7,3,0,1,1,1,0,'14-Apr-2011',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (49,1753331,2,1,9,2,0,0,0,2,1,'18-Mar-2011',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (50,1618386,5,2,3,2,0,0,0,2,1,'29-Dec-1986',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (51,300000,3,1,5,1,0,0,0,4,0,'13-Dec-1993',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (52,1379398,3,2,8,2,1,0,0,3,0,'28-Jan-1977',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (53,1846112,5,1,0,3,1,0,0,4,1,'29-Nov-1997',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (54,160042,5,2,10,3,0,0,1,2,1,'19-Jul-1993',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (55,1172202,2,1,4,2,1,0,1,4,0,'21-Apr-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (56,1639754,3,2,7,2,1,0,1,1,0,'02-Oct-1977',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (57,662871,3,1,1,2,0,1,1,1,1,'12-Mar-1994',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (58,199808,2,2,0,1,1,0,0,3,1,'18-Jun-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (59,1813632,4,2,3,3,1,1,0,1,0,'02-May-1971',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (60,615475,4,2,6,3,1,0,0,1,0,'28-Sep-1990',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (61,458296,5,2,4,3,1,1,1,2,0,'31-Aug-1973',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (62,1904842,4,2,0,1,0,1,0,1,0,'27-Apr-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (63,1739149,3,1,9,3,1,0,0,2,1,'27-Oct-1991',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (64,1582156,5,1,0,2,0,0,0,3,1,'10-May-1987',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (65,817260,2,1,1,3,0,1,0,4,1,'20-Apr-1973',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (66,379000,4,1,4,2,1,1,0,1,1,'12-Mar-2002',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (67,764723,3,2,5,1,1,1,1,2,1,'05-Mar-2009',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (68,1724316,5,2,3,1,1,1,0,4,0,'08-Oct-2014',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (69,1706942,2,2,10,3,1,0,1,1,0,'12-Jul-1985',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (70,1986707,2,1,7,3,0,0,1,2,0,'21-Apr-1986',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (71,1139267,4,2,1,3,1,1,1,4,0,'03-Jan-2001',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (72,1042644,3,2,6,1,0,1,1,1,0,'25-Jul-1998',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (73,1953396,2,1,6,1,1,1,0,2,1,'07-Mar-1971',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (74,745132,5,2,6,2,1,1,1,1,1,'03-Nov-1978',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (75,1080800,2,2,9,3,1,1,0,1,1,'06-Mar-1989',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (76,1788742,2,2,9,2,1,0,1,4,0,'16-Apr-2005',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (77,238650,2,2,10,3,1,0,1,1,0,'19-Sep-1978',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (78,1437228,4,2,0,1,1,1,1,1,0,'01-Apr-1988',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (79,458602,4,2,10,1,0,1,1,3,0,'21-Apr-1972',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (80,986963,4,1,4,1,0,0,0,4,0,'09-Jul-2004',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (81,1119193,5,1,4,1,1,1,0,4,0,'04-Jul-2007',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (82,764302,3,1,10,3,1,0,0,4,1,'18-May-1981',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (83,656454,3,1,6,3,0,0,1,1,0,'05-Jun-1990',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (84,840899,2,2,5,3,1,0,0,1,0,'13-Jul-1981',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (85,545629,3,1,1,1,1,1,0,2,0,'07-Jan-1973',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (86,402398,5,2,7,3,1,1,1,2,0,'04-Dec-1970',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (87,1103740,4,1,7,1,1,1,0,1,1,'17-Apr-1972',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (88,1663789,3,1,7,3,1,0,1,2,1,'02-Jan-1978',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (89,1016100,4,2,2,2,1,0,0,3,1,'18-Jan-2006',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (90,436018,3,2,3,1,0,1,1,4,1,'20-Mar-2009',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (91,621072,4,1,10,1,0,0,0,2,0,'22-Oct-1970',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (92,1921134,5,1,0,2,1,0,0,2,1,'07-Apr-1994',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (93,1839260,4,1,4,2,0,1,0,3,0,'23-May-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (94,1370533,5,2,8,3,1,1,1,1,1,'25-Dec-2012',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (95,1624367,2,1,8,1,1,0,1,1,1,'11-Jun-2014',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (96,1817087,5,1,3,2,1,1,0,1,0,'01-Nov-1991',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (97,1406947,4,1,10,3,0,1,1,3,1,'05-Jun-1976',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (98,388017,2,1,1,2,0,1,0,1,1,'28-Sep-1980',0);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (99,724928,4,1,5,2,0,1,0,2,1,'28-Sep-1984',1);
INSERT INTO Properties (PropertyID,Price,Bedrooms,Bathrooms,Acres,Parking,Finished_Basement,Central_Air,Gas_Heat,Levels,Swimming_Pool,Listing_Date,Status) VALUES (100,917923,4,2,6,2,0,1,0,2,0,'20-Oct-2009',1);

