﻿create table Usr(
  userID NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  firstName VARCHAR(30),
  lastName	VARCHAR (30),
  email VARCHAR(30),
  password VARCHAR(30) NOT NULL,
  birthday	DATE,
  gender	VARCHAR(30),
  age NUMBER(5),
  isAdmin	NUMBER(1)
);

create table Results(
  resultsID NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  score NUMBER(10),
  hard NUMBER(1),
  time	DATE,
  topic VARCHAR(30),
  userID	NUMBER(10),
  FOREIGN KEY(userID) REFERENCES Usr(userID)
);

create table Challanges(
 challangeID NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
 hard NUMBER(1),
 time	DATE,
 topic VARCHAR(30),
 challanger	NUMBER(10),
 challanged	NUMBER(10),
 FOREIGN KEY(challanger) REFERENCES Usr(userID),
 FOREIGN KEY(challanged) REFERENCES Usr(userID)
);

create table Questions(
  questionID NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  hard NUMBER(1),
  topic	VARCHAR(30),
  correct	VARCHAR(50),
  wrong1	VARCHAR(50),
  wrong2	VARCHAR(50),
  wrong3	VARCHAR(50),
  question VARCHAR(150)
);

create table Friends(
  user1 NUMBER(10) PRIMARY KEY NOT NULL,
  user2 NUMBER(10),
  since	DATE,
  status	VARCHAR(30),
  FOREIGN KEY(user1) REFERENCES Usr(userID),
  FOREIGN KEY(user2) REFERENCES Usr(userID)
);

create table Has(
  challangeID NUMBER(10), questionID NUMBER(10) PRIMARY KEY NOT NULL,
  FOREIGN KEY(challangeID) REFERENCES Challanges(challangeID),
  FOREIGN KEY(questionID) REFERENCES Questions(questionID)
);

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

INSERT into Usr values(NULL, 'Admin', 'Admin', 'admin123@gmail.com', 'password123', '1998-03-15', 'male', 24, 1);
INSERT into Usr values(NULL, 'Teszt', 'Elek', 'tesztelek@gmail.com', 'password123', '1998-03-15', 'male', 20, 0);
INSERT into Usr values(NULL, 'Teszt', 'Balázs', 'teszbalazs@gmail.com', 'password123', '1994-06-10', 'male', 19, 0);

INSERT into Results values(NULL, 5, 0, '2019-02-20', 'History', 2);
INSERT into Results values(NULL, 8, 0, '2019-02-24', 'History', 3);

INSERT into Challanges values(NULL, 0, '2019-02-20', 'History', 2, 3);

INSERT INTO Questions VALUES (NULL, '0', 'history', 'Yuri Gagarin', 'Neil Armstrong', 'Jim Lovell', 'Alan Shepard', 'Who was the first man to go to space?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'George Washington', 'Abraham Lincoln', 'John Adams', 'Thomas Jefferson', 'Who was the first president of the USA?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Names', 'Steroids', 'Partners', 'Protein', 'A study published in the journal Anthrozoo reported that cows produce 5% more milk when they are given _____.');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Napoleonic Wars', 'WW2', 'WW1', 'Seven Years', 'The Battle of Austerlitz took place during which war?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'France', 'The UK', 'Spain', 'Switzerland', 'The Statue of Liberty was a gift from which country?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Henry VIII', 'Henry VI', 'Edward V', 'Edward I', 'Which King of England had six wives?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Pioneer 10', 'Voyager 1', 'Mariner 4', 'Explorer 1', 'Which space craft set off for Jupiter in 1972?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Virginia', 'Texas', 'Nevada', 'Washington', 'In which US state is John F Kennedy buried?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Bolivia', 'Cuba', 'Colombia', 'Mexico', 'Where was Che Guevara killed?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Peru', 'Mexico', 'Pakistan', 'Egypt', 'In which country were potatoes first grown?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Saudi Arabia', 'Pakistan', 'Afghanistan', 'Syria', 'In which country was Osama bin Laden born?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Austria', 'Germany', 'Switzerland', 'France', 'In which country was Adolf Hitler born?');
INSERT INTO Questions VALUES (NULL, '0', 'history', '1939', '1940', '1938', '1941', 'When did WWII start?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '1941', '1942', '1943', '1940', 'When did the United States enter WWII?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Slovenia', 'Croatia', 'Poland', 'Canada', 'Where is Melania Trump originally from?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Katharine Hepburn', 'Meryl Streep', 'Jack Nicholson', 'Daniel Day-Lewis', 'Which actor/actress won the most Oscars for acting?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '1997', '2005', '1999', '2000', 'When did South Park first air?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Roundhay Garden Scene', 'As Seen Through A Telescope', 'A Trip To The Moon', 'Dickson Greeting', 'What was the first movie''s name?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Antikythera Mechanism', 'Z1', 'Atanasoff-Berry Computer (ABC)', 'Colossus Mark 1', 'What was the first computer''s name?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Washington Wizards', 'Chicago Bulls', 'Indiana Pacers', 'San Antonio Spurs', 'Where did Michael Jordan play before retiring? ');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Israel', 'Germany', 'The USA', 'Nepal', 'In 1952, Albert Einstein was offered the presidency of which country?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Country, Blue Grass and Blues', 'Certified Big Good Boys', 'Cinamon Bacon Games and Boobs', 'Central and Big, Great and Boring', 'CBGB, the former infamous New York music club, stands for what?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Mickey Mouse', 'Goofy', 'Pluto', 'Donald Duck', 'Who was the first cartoon character to get his own star on Hollywood Boulevard’s Walk of Fame?');
INSERT INTO Questions VALUES (NULL, '0', 'history', '1914', '1910', '1939', '1915', 'During which year did World War I begin?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Henry Ford', 'Enzo Ferrari', 'Karl Benz', 'Gottlieb Daimler', 'Who introduced the first conveyor belt in the automotive industry?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Paintings', 'Literature', 'Architecture', 'Horticulture', 'What is Claude Monet known for?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Ferrari 360', 'Ferrari GTO', 'Ferrari f40', 'Ferrari 250 GT California', 'Which is the best-selling Ferrari model?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Karl Benz', 'Henry Ford', 'Enzo Ferrari', 'Ettore Bugatti', 'Who made the first car with an internal combustion engine?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Johannes Gutenberg', 'Galileo Galilei', 'Thomas Edison', 'Leonardo da Vinci', 'Who was the inventor of the movable-type printing press?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Bonn', 'Berlin', 'Bern', 'Frankfurt', 'What was the capital of West Germany?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Germany', 'Austria', 'Switzerland', 'USA', 'Where was the company "Haribo" founded?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Comic Actor', 'Inventor', 'Singer', 'Architect', 'What was Charlie Chaplin''s occupation?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Poland', 'Austria', 'Germany', 'Japan', 'Where is the Auschwitz concentration camp located?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'French', 'Roman', 'German', 'Portuguese ', 'What was Napoleon Bonaparte''s nationality?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Porsche', 'Volkswagen', 'BMW', 'Mercedes Benz', 'Who engineered the Volkswagen Beetle?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Romanov', 'Godunov', 'Putin', 'Mikhailovich', 'What was the family name of the Russian rulers from the 17th century until the 1917 revolution?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '4', '3', '5', '1', 'How many U.S. presidents have been assassinated?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Bastille', 'Alcatraz', 'Port Arthur', 'Robben Island', 'Which infamous prison was stormed on July 14, 1789?');
INSERT INTO Questions VALUES (NULL, '1', 'history', 'Thomas Alva Edison', 'George Washington Carver', 'Lewis Howard Latimer', 'Garrett Morgan', 'Which great American inventor died in October 1931? ');
INSERT INTO Questions VALUES (NULL, '1', 'history', '1980', '1992', '1988', '1976', 'Which Olympics did the US boycott? ');
INSERT INTO Questions VALUES (NULL, '1', 'history', '1954', '1967', '1969', '1945', 'In What Year Did The Vietnam War Begin?');
INSERT INTO Questions VALUES (NULL, '0', 'history', '116 years', '100 years', '101 years', '97 years', 'How Long Was The Hundred Years War?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Napoleon I', 'Napoleon II the Eaglet', 'Louis XIV the Great', 'Henry II', 'Which French Ruler Was Finally Defeated In 1815?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '800 BC', '750 BC', '900 BC', '500 BC', 'When was the Greek alphabet first used?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '1975', '1980', '1977', '1960', 'The war in Vietnam ended with the fall of Saigon in what year?*');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Leningrad', 'Moscow', 'Saint Petersburg', 'Saratov', 'What was the initial capital of USSR?');
INSERT INTO Questions VALUES (NULL, '1', 'history', '4th', '5th', '8th', '2nd', 'In What Century was St Nicholas first Mentioned?');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Poison', 'Starvation', 'Torture', 'Army', 'Cleopatra''s slaves often died because she tested this on them.');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Apollo 11', 'Apollo 1', 'Apollo 9', 'Apollo 7', 'Which Apollo mission carried Neil Armstrong and his cohorts to the moon? ');
INSERT INTO Questions VALUES (NULL, '0', 'history', 'Julius Caesar', 'Augustus', 'Caligula', 'Nerva', 'He was stabbed by Gaius Cassius Longinus.');
INSERT INTO Questions VALUES (NULL, '0', 'history', '12', '8', '13', '10', 'Introduced in 46 BC by Julius Caesar, how many months was the Julian calendar divided into? ');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Mercury', 'Venus', 'Mars', 'Earth', 'Which planet is closest to the Sun?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'The Dominican Republic', 'Cuba', 'Ghana', 'Madagascar', 'What is the only country that displays the Bible on its national flag?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Russia', 'The USA', 'Canada', 'China', 'What is the biggest country by territory in the world?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'China', 'Russia', 'India', 'Brazil', 'What is the biggest country by population in the world?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Atlantic', 'Indian', 'Pacific', 'Eastern', 'Which ocean lies on the east coast of the United States');
INSERT INTO Questions VALUES (NULL, '0', 'geography', '5', '3', '2', '1', 'How many Great Lakes are there?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Sahara', 'Arabian', 'Great Australian', 'Kalahari', 'What is the biggest desert in the world?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', '4', '5', '6', '3', 'How many countries are in the UK?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Netherlands', 'Germany', 'Spain', 'Italy', 'Which of the following countries does not border France?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Arizona', 'Nevada', 'New Mexico', 'Texas', 'Which US state is the Grand Canyon located in?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Pacific Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Which is the largest body of water?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', '40,000 km', '50,000 km', '60,000 km', '100,000 km', 'What is the approximate length of the equator?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'East Jordan', 'Swaziland', 'Uganda', 'Kyrgyzstan', 'Which of these is not a country?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Mars', 'Mercury', 'Uranus', 'Jupiter', 'Which planet is known as the Red Planet?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'San Francisco', 'Los Angeles', 'Dallas', 'New York', 'Where is the Golden Gate bridge?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Alaska', 'Hawaii', 'Texas', 'New York', 'Which US state is nearest to the old Soviet Union?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Red, white, green', 'Red, white, black', 'Red, white, blue', 'Red, yellow, black', 'What three colors appear on the Italian flag?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Sheltered harbor', 'Tallest building', 'Diamond head', 'Major hub', '"Honolulu" means _____________ ?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Tiber', 'Po', 'Savio', 'Brenta', 'On which river is Rome located?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Belgium', 'Luxembourg', 'France', 'Switzerland', 'In what country is the waterloo battlefield?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Paris', 'Rome', 'Marseille', 'Genf', 'What is the capital of France?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Washington', 'Missouri', 'Florida', 'Ohio', 'Which state is the Evergreen State?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Canada', 'Mexico', 'Greenland', 'Iceland', 'What country is directly north of the continental United States?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Albania', 'Serbia', 'Macedonia', 'Montenegro', 'Tirana is the capital of ______?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Turkish', 'English', 'France', 'Spain', 'What Is The 2nd Official Language Spoken In Germany?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Hungary', 'Slovenia', 'Slovakia', 'Romania', 'Budapest is the capital of ______?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Bratislava', 'Bukarest', 'Budapest', 'Krakow', 'What is the capital of Slovakia');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Warsaw', 'Krakow', 'Lublin', 'Poznan', 'What is the capital of Poland?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Portuguese', 'Spanish', 'Italian', 'Catalan', 'What Is The Principle Language Of Brazil?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Frank', 'Euro', 'Peso', 'Dollar', 'What is the basic unit of currency for Cameroon?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Asia', 'Europe', 'America', 'Africa', 'In which continent would you find the Amur river?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Calcium', 'Potassium', 'Helium', 'Magnesium', 'Which element makes up 3.63% of the Earth''s crust ?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Europe', 'Australia', 'South America', 'Antarctica', 'Which is the Earth''s second smallest continent?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Algeria', 'Libya', 'Sudan', 'Kongo Democratic Republic', 'Name the second largest country in Africa.');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'USA', 'China', 'India', 'Indonesia', 'What Is The 3rd Most Populous Country On Earth?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Toronto', 'Ottawa', 'Montreal', 'Vancouver', 'Name the largest city in Canada.');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Pisa', 'Rome', 'Milano', 'Naples', 'In what city is the Leaning Tower?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Iceland', 'Switzerland', 'Sweden', 'Denmark', 'This country is home to the world''s oldest continuous local democracy.');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Rupee', 'Penny', 'Kopek', 'Diram', 'What is the basic unit of currency for Sri Lanka?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'West', 'East', 'North', 'South', 'The sun sets in the ____?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse', 'What is the highest mountain in the world?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'London', 'Oxford', 'Liverpool', 'Cambridge', 'In which city is the famous Bond Street?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'London', 'Liverpool', 'Edingurgh', 'Glasgow', 'What Is The Most Popular English City?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Africa', 'Asia', 'Europe', 'North America', 'In which continent would you find the congo river?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Dublin', 'Belfast', 'Limerick', 'Cork', 'What is the capital of Ireland?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Sydney', 'Melbourne', 'Brisbane', 'Adelaide', 'What is the largest city in Australia, in terms of population?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Death Valley', 'Atacama Desert', 'Namib Desert', 'Thar Desert', 'Which Californian desert drops below sea level?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Fiji', 'Hawaii', 'Barbados', 'Easter Island', 'Mount Victoria is the highest peak of this island country.');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Asia', 'Africa', 'North America', 'South America', 'Which is the Earth''s largest continent?');
INSERT INTO Questions VALUES (NULL, '1', 'geography', 'Java', 'Bird Island', 'Lakshadweep', 'Sumatra', 'Jakarta is located on which Indonesian island?');
INSERT INTO Questions VALUES (NULL, '0', 'geography', 'Greenland', 'New Guinea', 'Borneo', 'Madagascar', 'Name the largest island in the world. ');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Wilhelm Conrad Röntgen', 'Albert Einstein', 'Erwin Schrödinger', 'Nikola Tesla', 'Who received the first Physics Nobel Prize? ');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Sheep', 'Cow', 'Dog', 'Goat', 'Which was the first animal to get cloned?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Mercury', 'Iron', 'Copper', 'Lead', 'Which metallic element has a melting point of approximately −38 °F (−39 °C)?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Nikola Tesla', 'Albert Einstein', 'Thomas Edison', 'Stephen Hawking', 'Who invented the first alternating current (AC) induction motor?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'The hand', 'The foot', 'The neck', 'The skull', 'What part of the human body contains five metacarpal bones?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Force', 'Speed', 'Luminous intensity', 'Amount of substance', 'The scientific unit named after Sir Isaac Newton measures what?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Oxygen', 'Hydrogen', 'Iron', 'Helium', 'What element did Joseph Priestley discover in 1774?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Mary', 'Nunu', 'Nane', 'Nino', 'Mary''s father has 5 daughters: Nana, Nene, Nini, Nono. What is the name of the fifth daughter?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Joule', 'Watt', 'Newton', 'Meter', 'Which of these is a unit of work?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '7', '6', '10', '8', 'How many colors are there in a rainbow?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '13', '0', '5', '10', 'Which number comes next? 0, 1, 1, 2, 3, 5, 8, ?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Gottfried Wilhelm Leibniz', 'Isaac Newton', 'Leonhard Euler', 'Albert Einstein', 'Who is referred to as the "Father Of Calculus" ? ');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Alexander Graham Bell', 'Thomas Edison', 'James Watt', 'Alexander Fleming', 'Who is credited with the development of the first practical telephone?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Adenosine triphosphate', 'Attitude Prediction', 'Austrian Thermal Power', 'Abbreviated Training Program', 'What does ATP stand for?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Extrasolar planets', 'Interstellar planets', 'Intersolar planets', 'Extrastellar planets', 'What is the name given to planets outside our solar system?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '3600', '60', '360', '120', 'How many seconds are there in an hour?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '-272', '1', '-265', '300', '1 Kelvin = _____ Celsius');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Fe', 'I', 'Ir', 'M', 'What is the chemical symbol for iron?');
INSERT INTO Questions VALUES (NULL, '1', 'science', '3', '2', '1', '4', 'How many hearts does an octopus have?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'The liver', 'The heart', 'The brain', 'The stomach', 'What is the heaviest organ in the human body?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Alexander Fleming', 'Gregor Mendel', 'Louis Pasteur', 'Agnes Arber', 'Who discovered penicillin?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Albert Einstein', 'Nikola Tesla', 'Isaac Newton', 'Stephen Hawking', 'Who developed the special theory of relativity?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '2', '3', '1', '4', 'How many hydrogen atoms are in one molecule of water?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Marie Curie', 'Maria Goeppert Mayer', 'Gabriela Mistral', 'Nelly Sachs', 'Who was the first woman to win a Nobel Prize (for Physics in 1903)?');
INSERT INTO Questions VALUES (NULL, '1', 'science', '4', '3', '2', '1', 'How many compartments does a cow''s stomach have?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'K', 'P', 'Po', 'S', 'What is the chemical symbol for potassium?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Charles Darwin', 'Alexander Fleming', 'Leonardo da Vinci', 'Sigmund Freud', 'Who first formulated the theory of evolution in his book, "The Origin of Species"?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Carbon', 'Oxygen', 'Magnesium', 'Iron', 'Diamonds are mostly composed of which element?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Heisenberg', 'Albert Einstein', 'Sir Isaac Newton', 'Marie Curie', 'Who Originated The Uncertainty Principle?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Albino', 'Skinless', 'Pale', 'White', 'What Describes A Person With No Skin Pigment?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Polar Bear', 'Black Bear', 'Brown Bear', 'Panda Bear', ' The most carnivorous of all bears is the __________. Its diet consists almost entirely of seals and fish.');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Loudness', 'Size', 'Mass', 'Electric current', 'A Phon is a unit of what? ');
INSERT INTO Questions VALUES (NULL, '0', 'science', '1.41 times', '1312524530013.534 times', '56.42 times', '100.9 times', 'The Sun is how much more dense than water?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Galileo Galilei', 'Nicolaus Copernicus', 'Giovanni Cassini', 'Sir Isaac Newton', 'What italian astronomer wrote the starry messenger?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'The Ear', 'The Eye', 'The Nose', 'The Hearth', 'What is an Otoscope used to look at?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'DNA', 'Chromosome', 'Brain cells', 'Cancer', 'Francis Crick was the most famous of the discoverers of what?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '6', '8', '4', '12', 'How many pockets does a snooker table have?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Plants', 'Biology', 'Fossils', 'Languages', 'What Is Botany? The Study Of ____');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Ants', 'Birds', 'Spiders', 'Humans', 'What lives in a formicary?');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Tongue', 'Jaw', 'Thyroid Gland', 'Trachea', 'What muscle is joined by the lingual nerve to the brain?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '12', '11', '10', '13', 'What Is The Square Root Of 144?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Absolute Zero', 'Freeze point', 'Kill Zone', 'Saturday in Russia', 'What is -459.7 F also know as?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'C', 'D', 'A', 'B12', 'Ascorbic acid is commonly reffered to as Vitamin - ?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Potassium', 'Carbon', 'Calcium', 'Copper', 'For what substance is K the chemical notation?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Ostrich', 'Emu', 'Emperor Penguin', 'Mute Swan', 'Which is the largest bird species?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '4', '2', '1', '5', 'How Many Stomachs Does A Cow Have?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Elephants', 'Lions', 'Camels', 'Rhinos', 'Which large animals did Hannibal bring with him across the Alps?');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'Carbon', 'Nitrogen', 'Bromine', 'Sulfur', 'Coal is predominantly made up of this element.');
INSERT INTO Questions VALUES (NULL, '0', 'science', 'King kobra', 'Black mamba', 'Tiger snake', 'Indian cobra', 'Which snake kills the most humans?');
INSERT INTO Questions VALUES (NULL, '0', 'science', '15 years', '20 years', '10 years', '40 years', ' The average life expectancy of a rhinoceros in captivity is __________');
INSERT INTO Questions VALUES (NULL, '1', 'science', 'Fat', 'Protein', 'Carbs', 'Vitamins', 'What comprises than 54% of humpback whale''s milk?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Laser pointer', 'Mouse', 'Flashlight', 'TV', 'The first item listed on eBay was a broken _____.');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Backrub', 'Googolplex', 'WeKnowIT', 'Slime', 'What was Google''s original name?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Merry Christmas', 'Hello', 'Happy Birthday', 'Test', 'The first text message was by Neil Papworth in 1992. He texted, "___________."');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'DARPA', 'BBN', 'THINK', 'HP', 'What is the oldest domain on the internet?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', '2001', '2000', '2002', '1999', 'When was Wikipedia launched');
INSERT INTO Questions VALUES (NULL, '1', 'technology', '2007', '2006', '2008', '2005', 'When was the first iPhone released?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', '4', '3', '2', '1', 'How many engines does a Boeing 747 have?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Satya Nadella', 'Bill Gates', 'Steve Jobs', 'Elon Musk', 'Who was the CEO of Microsoft in 2018?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Tim Cook', 'Steve Jobs', 'Bill Gates', 'Satya Nadella', 'Who was the CEO of Apple in 2018?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Read-only memory', 'Registers on memory', 'Read open memory', 'Real open memory', 'In terms of computing, what does ROM stand for?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'World Wide Web', 'World Without Windows', 'World Wide Waiting', 'Wiki Wiki Web', 'What does the abbreviation WWW stand for?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'California', 'New York', 'Texas', 'Canada', 'Where is Silicon Valley located?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Motorola', 'VIA', 'IBM', 'Cyrix', 'Which of the following was not a x86 CPU maker?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Deep Blue', 'Blue Gene', 'Cray Jaguar', 'Watson', 'What computer system was the first to win a chess match against a world champion under regular time constraints?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'A medieval Scandinavian king', 'An electric eel with blue teeth', 'A bear that loves blueberries', 'A Native American chieftain', 'Bluetooth technology is named after...');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'IBM', 'Fujitsu', 'Xerox', 'Intel', 'Which company invented the hard disk drive?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Playstation 3', 'Xbox', 'Xbox 360', 'Nintendo Wii', 'In 2010, the United States Air Force used more than a thousand game consoles to build a supercomputer... which one?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Hard Disk Drive', 'Head Down Display', 'Hardware Design Document', 'Hot Dog Disk', 'What does HDD stand for?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Bliss', 'Majesty', 'Splendor', 'Happiness', 'What is the name of the landscape picture that is set as default wallpaper on Windows XP?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', '4', '6', '5', '2', 'How many buttons (excluding the control pad) did the original NES controller have?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Light Emitting Diode', 'Light Embracing Diode', 'Low Electric Diode', 'Low Emitting Diode', 'What does LED stand for?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', '4', '2', '6', '8', 'How many bits are in a nibble ?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Nintendo', 'Atari', 'Sega', 'Capcom', 'Which company made the original ''Donkey Kong''?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Windows 1.0', 'Windows 95', 'Windows ME', 'Windows NT 1.0', 'What was the first version of Microsoft Windows?');
INSERT INTO Questions VALUES (NULL, '1', 'technology', 'Linus Torvalds', 'Linus Pauling', 'Linus Roache', 'Linus Sebastian', 'Who is the Linux operating system named after?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'UNIX', 'Kernel', 'DOS', 'MacOS', 'Linux is a clone of what operating system?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Abacus', 'Yupana', 'Schoty', 'Coin-board', 'What was invented over 3000 years ago that is now considered the first "computer"?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Alexander Graham Bell', 'Samuel Morse', 'Thomas Edison', 'Emile Berliner', 'Who invented the Telephone?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Adventure', 'Zelda', 'Asteriods', 'Breakout', 'What''s the first video game ever to contain an "Easter Egg"?');
INSERT INTO Questions VALUES (NULL, '0', 'technology', 'Dual Shock', 'Double Shock', 'Double Wave', 'Dual Wave', 'What is the name of the Playstation controller that uses two analog joysticks?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', '26', '25', '30', '29', 'How many letters are there in the English alphabet?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', '1564 - 1616', '1619 - 1690', '1544 - 1603', '1575 - 1620', 'When did William Shakespeare live?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', '1884', '1932', '1879', '1799', 'When did Mark Twain write Huckleberry Finn?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'The Fireman', 'Celsius 232', 'Flaming shelves', '3000 Degrees', 'What was the original title of Fahrenheit 451?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Thomas Harris', 'Fyodor Dostoyevsky', 'Charles Dickens', 'Anton Chekhov', 'Which author wrote The Silence of the Lambs?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Rabbits', 'Pigs', 'Dogs', 'Zebras', 'What sort of animals did Richard Adams write about in Watership Down?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'He turned into an insect', 'He forgot his name', 'He killed himself', 'He fantasized about space', 'What happened one night to the central character of Kafka''s Metamorphosis?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Alexander Pushkin', 'Ivan Bunin', 'Leo Tolstoy', 'Vladimir Lenin', 'Who wrote Boris Godunov?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', '1564 - 1616', '1619 - 1690', '1544 - 1603', '1575 - 1620', 'When did William Shakespeare live?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', '1884', '1932', '1879', '1799', 'When did Mark Twain write Huckleberry Finn?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'The Fireman', 'Celsius 232', 'Flaming shelves', '3000 Degrees', 'What was the original title of Fahrenheit 451?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Aramis', 'Tréville', 'Artis', 'Ramis', 'Who is the fourth musketeer besides D Artagnan, Athos and Porthos?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Theseus', 'Heracles', 'Perseus', 'Cadmus', 'Who killed the Minotaur ?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Isis', 'Amun', 'Osiris', 'Seshat', 'Which Egyptian godess was considered as the inventor of agriculture? She married her brother and together they had a son: Horus.');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Argus', 'Orthos', 'Ladon', 'Alcyoneus', 'Who is the giant with 100 eyes according to the Greek mythology?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Pegasus', 'Centaur', 'Cetus', 'Chimera', 'What is the name of the winged horse in Greek mythology?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Cuba', 'Crete', 'Puerto Rico', 'Ciprus', 'On which island did Ernest Hemingway stay to be able to write much?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Denmark', 'Sweden', 'Norway', 'Finland', 'In which country did Shakespeare s Hamlet live?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Desdemona', 'Emilia', 'Cassio', 'Adie', 'Who was the wife of Othello?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Dulcinea', 'Allie', 'Francesca', 'Ingrid', 'Who was the imaginary love of Don Quixote?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'English and French', 'English and German', 'English and Spanish', 'English and Italian', 'In which two languages did the Irish writer Samuel Beckett write?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Frankenstein', 'Crime and Punishment', 'Anna Karenina', 'Treasure Island', 'Which book Mary Shelley wrote when she was 19?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Rene Descartes', 'Aristotle', 'Immanuel Kant', 'Confucius', 'Who said "I think therefore I am"?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'War and peace', 'North and South', 'The Idiot', 'Vanity Fair ', 'What is the English name of the Russian novel titled Voyna i Mir?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Plato', 'Socrates', 'Pythagoras', 'Thales', 'Who was the master of Aristotle?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Mark Twain', 'Franz Kafka', 'Aldous Huxley', 'H. P. Lovecraft', 'Which famous writer was one of seven children in his family?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'J.K. Rowling', 'J. R. R. Tolkien', 'Agatha Christie', 'Antoine de Saint-Exupéry', 'Who was the first author to become a billionaire from writing books?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Alexandre Dumas', 'George Sand', 'Jules-Romain Tardieu', 'Alphonse Daudet', 'Who is the author of “The Three Musketeers"?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'The last four “Harry Potter” books', 'The bible', 'The Lord of the Rings trilogy', 'Eragon trilogy', 'What are the fastest selling books in history?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Iliad', 'Trojan war', 'Epigoni', 'Batrachomyomachia', 'For which work other than the Odyssey is Homer noted?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Albatross', 'Eagle', 'Vulture', 'Hippogriff', 'Which bird did the Ancient Mariner kill?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Bram Stoker', 'Francis Ford Coppola', 'Anthony Hopkins', 'Stephen King', 'Which authors created the following fictional character? Dracula');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Hamlet', 'Macbeth', 'Romeo', 'Othello', 'Which Shakespearean character has the most lines?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Macduff', 'Otello', 'Banquo', 'Lady Macduff', 'Who killed Macbeth?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Sherlock Holmes', 'Harry Potter', 'Mary Poppins', 'Stuart Little', 'Who is associated with the address 221B Baker Street, London ?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'The Goblet Of Fire', 'The Prisoner of Azkaban', 'The Order of the Phoenix', 'The Half-blood Prince', 'What is the fourth book in the Harry Potter series?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Thornton Wilder', 'Edward Albee', 'Arthur Miller', 'John Osborne', '"Our Town" is a play by whom?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Dystopia', 'Anti-utopia', 'Catastrophe', 'Apocalypse', 'What is the opposite of an utopia?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Leonardo da vinci', 'Michelangelo', 'Raphael', 'August Renoir', 'Who painted the Mona Lisa?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'The Shinning', 'Rage', 'Black House', 'Under the Dome', 'Which Stephen King Novel Is Set At The Overlook Hotel?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Paris', 'Rome', 'Madrid', 'Bern', 'Where is the Louvre located?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Crete', 'Rome', 'Athen', 'Sicily', 'Where Was El Grecho Born?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'George Orwell', 'Hldous Huxley', 'Ernest Hemingway', 'Ray Bradbury', 'Who wrote "Animal Farm"?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Romeo an Juliet', 'Antigone', 'Macbeth', 'Medea', 'What Shakespearean play features the line: A plague on both your houses ?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Satan', 'Raphael', 'Eve', 'Adam', 'Who is the protagonist of Milton''s Paradise Lost?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Muggle', 'Quidditch', 'Mudblood', 'Squib', 'Which Word Created By JK Rowling Gained Entry Into The Oxford English Dictionary In 2003?');
INSERT INTO Questions VALUES (NULL, '1', 'literature', 'Anne frank', 'Joan Rivers', 'Golda Meir', 'Evelyn Rose', 'This girl hid from the Nazis in Amsterdam.');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Zone', 'People', 'South', 'Daisies', 'Stephen King''s: "The Dead ________".');
INSERT INTO Questions VALUES (NULL, '1', 'literature', '14', '20', '12', '8', 'How many lines are in a sonnet?');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Raven', 'Cat', 'Monkey', 'Mouse', 'Edgar Allen Poe wrote a famous poem about this animal.');
INSERT INTO Questions VALUES (NULL, '0', 'literature', 'Spanish', 'American', 'French', 'Italian', 'What Is The Nationality Of Picasso?');

INSERT into Friends values(2, 3, '2019-02-19', 'active');

INSERT into Has values(1, 1);
INSERT into Has values(1, 2);
INSERT into Has values(1, 5);
INSERT into Has values(1, 6);
INSERT into Has values(1, 13);
INSERT into Has values(1, 23);
INSERT into Has values(1, 24);
INSERT into Has values(1, 26);
INSERT into Has values(1, 31);
INSERT into Has values(1, 32);