set schema 'music_shop2';

--TO DO: NEED TO GET RID OF HARD CODED IDS AND SERIALIZE
--THINK OF FRONT END
--PYTHON OR C#?

INSERT INTO  Courier (CourierName, DriverFirstName, DriverLastName, DriverPhoneNumber)
('Fed-Ex','Doug', 'Jones', '455-678-9867'),
('UPS','Bernie','Yards', '429-675-9864'),
('Fed-Ex','Mia', 'Ham', '321-332-8765'),
('UPS','Ross', 'Bridges', '459-321-7654'),
('Fed-Ex','Dominique','Gillo', '988-543-6655'),
('UPS','Rose','Fields', '344-988-5444'),
('UPS','Asma', 'Khan', '455-544-3421'),
('Fed-Ex','Jason','Bridges','657-655-9821'),
('UPS','Sally','Jones', '455-678-9867'),
('Fed-Ex','Tobias','Jam', '433-998-2334');



INSERT INTO Customers values
 ('1056', 'Barbara', 'Fields', 'barbarafields59@yahoo.com'),
    ('1057', 'Mike', 'Hunt', 'michaelguitar54@gmail.com'),
    ('1058', 'Bethany', 'Richards', 'beth4theocarina@aol.com'),
    ('1059', 'Richard', 'Telco', 'telcoplaysbass@uab.edu'),
    ('1060', 'Summer', 'Krywanski', 'summerkry66@yahoo.com'),
    ('1061', 'Kevin', 'Dean', 'kevindean@uabmc.edu'),
    ('1062', 'John', 'Osborne', 'josborne@uabmc.edu'),
    ('1063', 'Oliver', 'Queen','queenshere4u@aol.com'),
    ('1064', 'Barbara', 'Fields', 'barbarafields59@yahoo.com'),
    ('1065', 'DJ', 'Sparks', 'sparksfly69@gmail.com'),
    ('5433', 'Greg', 'Biddle', 'gregbiddle@yahoo.com'),
    ('1977', 'Michael', 'Kroger', 'michaelkroger@gmail.com'),
    ('4322', 'Roger', 'Little', 'rogerlittle@aol.com'),
    ('5533', 'Missy', 'White', 'whitemissy55@uab.edu'),
    ('1054', 'Jessica', 'Jones', 'jessicajones65@yahoo.com'),
    ('7766', 'Kevin', 'Mike', 'kevinm88@uabmc.edu');
   
  INSERT INTO CredentialsSignIn values
    ('4562', 'musiclover59','09:10:00','sep48128','1056'),
    ('4514', 'guitarguy54', '10:10:00','abs123','1057'),
    ('8516', 'ocarinagal23','12:10:07','chillystreet675','1058'),
    ('1831', 'uprightbassist11','05:04:20','doggo56' ,'1059'),
    ('7825', 'summerdreams88', '02:01:39','!yu32','1060'),
    ('7839', 'hellotheremusic55','08:27:54','nices90','1061'),
    ('6741', 'keyboardguy4', '10:23:18','password123','1062'),
    ('7816', 'wonderwall65','11:57:07','intermacs50','1063'),
    ('8901', 'nineinchnailsfan','05:09:00','f15067','1064'),
    ('7834', 'heymrDJ33','07:30:27','timing78','1065'),
    ('1225', 'guitarist45', '05:03:05','wsxedcrfv','5433'),
    ('8990', 'slapthebass88', '02:01:53','ujqwer','1977'),
    ('1250', 'dontfret99','01:01:00','123qazwsx','4322'),
    ('1672', 'notreble11','02:16:32','mombirthday59','5533'),
    ('9054', 'thumbthebase55','09:37:38','pikachu89','1054'),
    ('8912', 'helloitskevin33','09:10:00','greengrass345','7766');
   
INSERT INTO Store VALUES
('1', '344-566-2345', 'wangbangsweetmusicthang1@yahoo.com','Portland, Oregon'),
('2', '344-788-4567', 'wangbangsweetmusicthang2@yahoo.com','Salem, Oregon'),
('3', '344-733-4511', 'wangbangsweetmusicthang3@yahoo.com','Medford, Oregon'),
('4', '344-678-9876', 'wangbangsweetmusicthang4@yahoo.com','Bend, Oregon'),
('5','344-233-4567', 'wangbangsweetmusicthang5@yahoo.com','Oregon'),
('6', '344-677-9854', 'wangbangsweetmusicthang6@yahoo.com','Portland, Oregon'),
('7', '344-567-5643', 'wangbangsweetmusicthang7@yahoo.com','Portland, Oregon'),
('8', '344-898-3456','wangbangsweetmusicthang8@yahoo.com','Salem, Oregon'),
('9','344-988-6754', 'wangbangsweetmusicthang9@yahoo.com','Medford, Oregon'),
('10', '344-445-9987', 'wangbangsweetmusicthang10@yahoo.com','Portland, Oregon');


INSERT INTO Transactions VALUES
('345', 10.56, 'Credit', '1SW78','1056','1500'),
('346', 200.45, 'Credit', '1SW754','1057','6755'),
('347', 600.78, 'Debit', '1SW4333','1058','0998'),
('348', 54.67, 'Paypal', '1SW999','1059','FGH67'),
('349', 34.77, 'Debit', '1SSW778','1060','45RT'),
('350', 89.78, 'Paypal', '1AASW78','1061','99YY'),
('351', 36.78, 'Credit', '1BBSW78','1062','22RR'),
('352', 99.23, 'Debit', '1AA4455','1063','7756R'),
('353', 100.45, 'Debit', '1557788','1056','7756R'),
('354', 453.22, 'Paypal', '234WWEEY','1065','9944R');

INSERT INTO Product VALUES
('433', 45.00, 'TG Guitar','1'),
('233', 240.56, 'Wooden Ocarina','1'),
('7533', 3400.55, 'Wooden Upright Bass','1'),
('10054', 545.89, 'LOP Keyboard','2'),
('9008', 7800.96, 'Grand Piano','9'),
('2446', 400.55, 'Electric Guitar','7'),
('88776', 456.99, 'KY Synthesizer','4'),
('5443', 125.99,'Electric Bass','4'),
('9887', 500.34, 'Guitar','6'),
('2334', 46.45, 'Ceramic Ocarina', '4'),
('2332', 1500.52, 'Steel Upright Bass', '1'),
('2123', 560.19, 'Wooden LOTR Ocarina', '6'),
('67543', 9050.23, 'Marble Upright Bass', '3'),
('90345', 10000.50, 'Lee Rocker Upright', '4'),
('13426', 5645.33, '78 Upright Rocker', '1'),
('32765', 6500.43, 'BlackWindow Upright', '2'),
('86432', 4500.33, 'WhiteFang Upright', '3'),
('34567', 6786.21, 'Ditto Rocker', '10'),
('98436', 9800.09, 'Reverend Horton Heater 78', '1'),
('78433', 9020.10, 'Whitey Morgan 34 Slapper', '1'),
('5643', 246.26, 'Ocarina of Time', '2'),
('8754', 456.78, 'FairyTale Ocarina', '4'),
('2345', 967.45, 'Melting Heart Ocarina', '8'),
('87645', 344.48, 'Double Octave Ocarina', '3'),
('87432', 233.99, 'Miss Sunshine Ocarina', '7'),
('89765', 986.75, 'Heart Of Gold Ocarina', '7'),
('1239', 78.96, 'Deep Forest Ocarina', '9');

INSERT INTO UprightBass VALUES
('7533', '4 String Upright Bass Rockabilly', 'Epiphone'),
('2332', '4 Steel String Bass with Case', 'StringMaster'),
('67543', 'Marble Upright Bass with Stand', 'Yahama'),
('90345', '3/4 Upright Bass with Case', 'Epiphone'),
('13426', '4/4 Upright Slap Bass', 'Yahama'),
('32765', '3/4 Upright Bass with Pickup Included', 'RockabillyHeat'),
('86432', 'White fret board with steel strings bass', 'Epiphone'),
('34567', 'Lee Rockers favorite Rockabilly bass.', 'Yahama'),
('98436', 'Famous bass played by Jimbo from Reverend Horton Heat', 'StringMaster'),
('78433', 'Whitey Morgan 34 Slapper', 'StringMaster');

INSERT INTO Ocarina VALUES
('233', 'Double Octave Wooden Ocarina 12 hole', 'WindMasters'),
('2334', 'Blue ceramic 16 hole', 'OctaIndustries'),
('2123', 'Wooden handmade 12 hole', 'DannyAndDanny INC.'),
('5643', 'Zelda Ocarina of Time Ocarina', 'OctaIndustries'),
('8754', 'Woodelf mysterous ocarina 12 hole', 'DannyAndDanny INC.'),
('2345', 'Red heart shaped ocarina 12 hole', 'WindMasters'),
('87645', 'Double C octave ocarina 24 hole', 'OctaIndustries'),
('87432', 'Bright yellow ocarina 12 hole', 'DannyAndDanny INC.'),
('89765','Red painted ocarina from Iceland 12 hole', 'WindMasters'),
('1239', 'Deep green colored ocarina 12 hole', 'OctaIndustries');


INSERT INTO  RefundedTransactions VALUES
('156', '600.78','Broken Neck','1056','1'),
('677', '453.22','Dented Head','1057','2'),
('988', '99.23','Broken Strings','1064','1'),
('432', '100.45','Chipped Wood Around Frets','1054','1'),
('234', '90.67','Product not of good quality','1977','3'),
('987', '34.56','Missing tuning pegs','4322','4'),
('098', '23.45','Broken fret boards','5533','1'),
('100','34.56','Wrong Rosin','1065','1');



INSERT INTO  CustomerAddressInfo VALUES
('7887', 'Portland','35465','OR','1056'),
('6775', 'Salem', '89765','OR','1057'),
('8997', 'Midtown', '45356','OR','1058'),
('3442', 'Faulker', '76554','OR','1059'),
('0990','Salem', '98765','OR','1060'),
('4455', 'Salem', '34565','OR','1061'),
('6446', 'Portland', '76544','OR','1062'),
('6578', 'Portland','98667','OR','1063'),
('9867','Salem', '45335','OR','1064'),
('4532', 'Portland', '78655','OR','1065'),
('4322', 'Midtown', '43675','OR','5433'),
('4433', 'Walker', '98154','OR','1977'),
('8977', 'Portland', '23756','OR','4322'),
('2344', 'Portland', '34785','OR','5533'),
('9988', 'Salem', '98453','OR','1054'),
('4453', 'Salem', '98462','OR','7766');

INSERT INTO  CreditCardInfo VALUES
('788-675-5667', '10/2/2021','1056'),
('778-654-5634', '11/20/2021','1057'),
('332-234-5621', '05/18/2021','1058'),
('554-876-4536', '09/21/2021','1059'),
('778-654-7846', '10/14/2021','1060'),
('221-234-7823', '01/15/2021','1061'),
('990-986-7836', '03/18/2021','1062'),
('994-675-2679', '05/19/2021','1063'),
('377-213-1745', '06/20/2021','1064'),
('856-097-7849', '09/21/2021','1065'),
('786-032-1567', '07/21/2021','5433'),
('567-784-9098', '05/09/2021','1977'),
('945-187-1001', '09/07/2021','4322'),
('089-039-7824', '10/06/2021','5533'),
('156-456-3675', '12/05/2021','1054'),
('787-178-4627', '10/03/2021','7766');


INSERT INTO  Employees VALUES
('8564', 'Devin','Koehl',1),
('8756', 'Bernie','Mack',1),
('5678', 'Luke','Skywalker',3),
('7855', 'Crash','Bandicoot',3),
('7546', 'Trent','Reznor',2),
('9865', 'Lucy','Lui',2),
('0935', 'Charlie','McCallister',4),
('7634', 'Tina','Smith',5),
('0978', 'Beverly','Mitchells',6),
('1567', 'Gary','Sanders',6),
('8745', 'Molla','Pond',7),
('9856', 'Sun','Lee',7),
('4567', 'Douglas','Reynolds',8),
('6753', 'Mary','Reynolds',9),
('9800', 'Craig','Collum',10),
('9853', 'John','Pennington',2);

INSERT INTO  Salary VALUES
('7843A','8564', 45000,4,'9/19/1989'),
('B6754','8756', 32000,3,'03/18/1956'),
('Q7822','5678', 95000,10,'10/19/1945'),
('A9811','7855', 45322,5,'12/22/1968'),
('U0932','7546', 65000,6,'03/05/1993'),
('Z6711','9865', 43000,8,'02/09/1996'),
('Z0911','0935', 56444,9,'01/17/2000'),
('0923','7634', 55000,10,'06/21/1958'),
('5632','0978', 90000,15,'08/30/1956'),
('7821','1567', 12455,4,'05/07/1999'),
('9011','8745', 13876,8,'04/04/1993'),
('ART78','9856', 85000,10,'04/03/1976'),
('Y7843','4567', 87000,11,'06/01/1979'),
('5614','6753', 67555,12,'10/23/1980'),
('R7814','9800', 70055,2,'11/07/1984'),
('O918Y','9853', 58000,7,'04/19/1989');


