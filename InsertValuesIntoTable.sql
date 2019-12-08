set schema 'music_shop2';

INSERT INTO  Courier VALUES
('1500', 'Fed-Ex','Doug', 'Jones', '455-678-9867'),
('6755', 'UPS','Bernie','Yards', '429-675-9864'),
('0998', 'Fed-Ex','Mia', 'Ham', '321-332-8765'),
('FGH67', 'UPS','Ross', 'Bridges', '459-321-7654'),
('45RT','Fed-Ex','Dominique','Gillo', '988-543-6655'),
('99YY', 'UPS','Rose','Fields', '344-988-5444'),
('22RR', 'UPS','Asma', 'Khan', '455-544-3421'),
('7756R', 'Fed-Ex','Jason','Bridges','657-655-9821'),
('123PP','UPS','Sally','Jones', '455-678-9867'),
('9944R', 'Fed-Ex','Tobias','Jam', '433-998-2334');



INSERT INTO Users VALUES
    ('1056', 'musiclover59', 'Barbara', 'Fields', 'barbarafields59@yahoo.com'),
    ('1057', 'guitarguy54', 'Mike', 'Hunt', 'michaelguitar54@gmail.com'),
    ('1058', 'ocarinagal23', 'Bethany', 'Richards', 'beth4theocarina@aol.com'),
    ('1059', 'uprightbassist11', 'Richard', 'Telco', 'telcoplaysbass@uab.edu'),
    ('1060', 'summerdreams88', 'Summer', 'Krywanski', 'summerkry66@yahoo.com'),
    ('1061', 'hellotheremusic55', 'Kevin', 'Dean', 'kevindean@uabmc.edu'),
    ('1062', 'keyboardguy4', 'John', 'Osborne', 'josborne@uabmc.edu'),
    ('1063', 'wonderwall65', 'Oliver', 'Queen','queenshere4u@aol.com'),
    ('1064', 'nineinchnailsfan', 'Barbara', 'Fields', 'barbarafields59@yahoo.com'),
    ('1065', 'heymrDJ33', 'DJ', 'Sparks', 'sparksfly69@gmail.com'),
    ('5433', 'guitarist45', 'Greg', 'Biddle', 'gregbiddle@yahoo.com'),
    ('1977', 'slapthebass88', 'Michael', 'Kroger', 'michaelkroger@gmail.com'),
    ('4322', 'dontfret99', 'Roger', 'Little', 'rogerlittle@aol.com'),
    ('5533', 'notreble11', 'Missy', 'White', 'whitemissy55@uab.edu'),
    ('1054', 'thumbthebase55', 'Jessica', 'Jones', 'jessicajones65@yahoo.com'),
    ('7766', 'helloitskevin33', 'Kevin', 'Mike', 'kevinm88@uabmc.edu');
   

   
INSERT INTO Store VALUES
('1', '344-566-2345', 'wangbangsweetmusicthang1@yahoo.com','Portland, Oregon'),
('2', '344-788-4567', 'wangbangsweetmusicthang2@yahoo.com','Salem, Oregon'),
('3', '344-733-4511', 'wangbangsweetmusicthang3@yahoo.com','Medford, Oregon'),
('4', '344-678-9876', 'wangbangsweetmusicthang4@yahoo.com','Bend, Oregon'),
('5','344-233-4567', 'wangbangsweetmusicthang5@yahoo.com','Portland, Oregon'),
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
('433', 45.00, 'Guitar',1),
('233', 240.56, 'Wooden Ocarina',1),
('7533', 3400.00, 'Upright Bass',1),
('10054', 545.00, 'Keyboard',2),
('9008', 7800.00, 'Grand Piano',9),
('2446', 400.55, 'Guitar',7),
('88776', 456.99, 'Synthesizer',4),
('5443', 125.99,'Electric Bass',4),
('9887', 500.34, 'Guitar',6),
('2334', 35.00, 'Guitar', 4);

INSERT INTO UprightBass VALUES
('7533', '4 String Upright Bass Rockabilly', 'Epiphone');

INSERT INTO Ocarina VALUES
('233', 'Double Octave Wooden Ocarina', 'WindMasters');

INSERT INTO  RefundedTransactions VALUES
('156', '347', '600.78','Broken Neck','1056'),
('677', '354', '453.22','Dented Head','1057'),
('988', '352', '99.23','Broken Strings','1064'),
('432', '111', '100.45','Chipped Wood','1054'),
('644','988', '56.78','Damaged during shippment','5433'),
('234', '0099', '90.67','Missing frets','1977'),
('987', '7766', '34.56','Missing tuning peg','4322'),
('098', '4567','23.45','Wrong strings','5533'),
('100','66554', '34.56','Wrong strings','1065'),
('204', '122', '87.98','Chipped during shipment','4533');


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


