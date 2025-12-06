---INSERT DATA INTO TABLE : UniverisityStagingDB.dbo.Year1Modules

INSERT INTO [UniversityStagingDB].[dbo].[Year1Modules]  (
	ModuleCode ,
	ModuleName,
	Credits ,
	Category)

VALUES

('AIM 111', 'Academic information management 111', 4.00, 'Fundamental modules'),
('AIM 121', 'Academic information management 121', 4.00, 'Fundamental modules'),
('ALL 121', 'Academic literacy for Information Technology 121', 6.00, 'Fundamental modules'),
('UPO 112', 'Academic orientation 112', 0.00, 'Fundamental modules'),

('COS 110', 'Program design: Introduction 110', 16.00, 'Core modules'),
('COS 122', 'Operating systems 122', 16.00, 'Core modules'),
('COS 132', 'Imperative programming 132', 16.00, 'Core modules'),
('COS 151', 'Introduction to computer science 151', 8.00, 'Core modules'),

('WTW 114', 'Calculus 114', 16.00, 'Core modules'),
('WTW 115', 'Discrete structures 115', 8.00, 'Core modules'),
('WTW 124', 'Mathematics 124', 16.00, 'Core modules'),
('WTW 134', 'Mathematics 134', 16.00, 'Core modules'),
('WTW 146', 'Linear algebra 146', 8.00, 'Core modules'),
('WTW 148', 'Calculus 148', 8.00, 'Core modules'),
('WTW 152', 'Mathematical modelling 152', 8.00, 'Core modules'),
('WTW 162', 'Dynamical processes 162', 8.00, 'Core modules'),

('BOT 161', 'Plants and society 161', 8.00, 'Elective modules'),
('CMY 117', 'General chemistry 117', 16.00, 'Elective modules'),
('CMY 127', 'General chemistry 127', 16.00, 'Elective modules'),
('ENV 101', 'Introduction to environmental sciences 101', 8.00, 'Elective modules'),
('GGY 156', 'Aspects of human geography 156', 8.00, 'Elective modules'),
('GGY 168', 'Introduction to physical geography 168', 12.00, 'Elective modules'),
('GLY 155', 'Introduction to geology 155', 16.00, 'Elective modules'),
('GLY 163', 'Earth history 163', 16.00, 'Elective modules'),
('GMC 110', 'Cartography 110', 10.00, 'Elective modules'),
('MBY 161', 'Introduction to microbiology 161', 8.00, 'Elective modules'),
('MLB 111', 'Molecular and cell biology 111', 16.00, 'Elective modules'),
('PHY 114', 'First course in physics 114', 16.00, 'Elective modules'),
('PHY 124', 'First course in physics 124', 16.00, 'Elective modules'),
('PHY 131', 'Physics for biology students 131', 16.00, 'Elective modules'),
('SCI 154', 'Exploring the universe 154', 16.00, 'Elective modules'),
('STC 122', 'Statistics 122', 13.00, 'Elective modules'),
('STK 110', 'Statistics 110', 13.00, 'Elective modules'),
('STK 120', 'Statistics 120', 13.00, 'Elective modules'),
('WST 111', 'Mathematical statistics 111', 16.00, 'Elective modules'),
('WST 121', 'Mathematical statistics 121', 16.00, 'Elective modules');

---INSERT DATA INTO TABLE : UniverisityStagingDB.dbo.Year2Modules
INSERT INTO [UniversityStagingDB].[dbo].[Year2Modules]  (
	ModuleCode ,
	ModuleName,
	Credits ,
	Category)

VALUES
	('JCP 202','Community-based project 202',8,'Fundamental module'),
	('COS 212','Data structures and algorithm 212',16,'Core module'),
	('COS 214','Software modelling 214',16,'Core module'),
	('COS 216','Netcentric computer sysytems 216',16,'Core module'),
	('COS 221','Introduction to database systems 216',16,'Core module'),
	('COS 226','Concurrent systems 226',16,'Core module'),
	('COS 284','Computer organisation and architecture 284',16,'Core module'),
	('WTW 285','Discrete strucure 285',12,'Core module'),
	('STK 210','Statistic 210',20,'Elective module'),
	('STK 220','Statistics 220',20,'Elective module'),
	('WST 211','Mathematical Statistics 211',24,'Elective module'),
	('WST 212','Applications in data science 212',12,'Elective module'),
	('WST 221','Mathematical statistics 221',24,'Elective module');

---INSERT DATA INTO TABLE : UniverisityStagingDB.dbo.Year3Modules

INSERT INTO [UniversityStagingDB].[dbo].[Year3Modules]  (
	ModuleCode ,
	ModuleName,
	Credits ,
	Category)

VALUES

('COS 301', 'Software engineering 301', 27.00, 'Core modules'),
('COS 330', 'Computer security and ethics 330', 18.00, 'Core modules'),
('COS 332', 'Computer networks 332', 18.00, 'Core modules'),
('COS 333', ' Programming languages 333', 18.00, 'Core modules'),
('COS 341', 'Compiler construction 341', 18.00, 'Core modules'),
('COS 314', 'Artificial intelligence 314', 18.00, 'Elective modules'),
('COS 326', ' Database systems 326', 18.00, 'Elective modules'),
('COS 344', 'Computer graphics 344', 18.00, 'Elective modules'),
('IMY 310', 'Human-computer interaction 310',  25.00, 'Elective modules'),
('IMY 320', ' Multimedia 320', 25.00, 'Elective modules'),
('STK 353', ' The science of data analytics 353', 18.00, 'Elective modules');