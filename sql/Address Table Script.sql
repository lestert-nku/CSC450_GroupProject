DROP TABLE Address; 

CREATE TABLE Address
(
AddressID int NOT NULL PRIMARY KEY,
PropertyID int,
Street varchar(100),
City varchar(50),
State varchar(2),
Zip int,
County varchar(30),
FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);

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
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (19,19,'5854 Mollis Road','Tulsa','OK','33508','Jackson');
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
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (39,39,'6549 Pede, Av.','Portland','OR','49914','Jefferson');
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
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (51,51,'9708 Hendrerit. Rd.','Rochester','MN','36031','Lincoln');
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
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (66,66,'2033 Neque Street','Toledo','OH','66979','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (67,67,'3848 Id Ave','Saint Paul','MN','38742','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (68,68,'2357 Risus. Av.','Springfield','IL','33376','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (69,59,'1725 Erat. Rd.','Orlando','FL','66467','Lincoln');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (70,70,'5996 Et Av.','West Valley City','UT','73237','Adams');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (71,71,'9880 Ultrices Av.','South Burlington','VT','60144','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (72,72,'7694 Porttitor Rd.','Orlando','FL','40225','Hamilton');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (73,73,'7877 Congue, Avenue','Cleveland','OH','73930','Jefferson');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (74,74,'7887 Sed Rd.','Chandler','AZ','86741','Campbell');
INSERT INTO Address (AddressID,PropertyID,Street,City,State,Zip,County) VALUES (75,75,'2516 Eu, St.','Kearney','NE','81270','Jefferson');

