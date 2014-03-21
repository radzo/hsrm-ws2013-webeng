
--- Semester ---
INSERT INTO semester VALUES(1);
INSERT INTO semester VALUES(2);
INSERT INTO semester VALUES(3);
INSERT INTO semester VALUES(4);
INSERT INTO semester VALUES(5);
INSERT INTO semester VALUES(6);

SELECT * FROM semester;

--- Dozent ---
INSERT INTO dozent VALUES('Barth');
INSERT INTO dozent VALUES('Berdux');
INSERT INTO dozent VALUES('Dörner');
INSERT INTO dozent VALUES('Geib');
INSERT INTO dozent VALUES('Gergeleit');
INSERT INTO dozent VALUES('Heimrich');
INSERT INTO dozent VALUES('Hünemohr');
INSERT INTO dozent VALUES('Igler');
INSERT INTO dozent VALUES('Jarass');
INSERT INTO dozent VALUES('Kähler');
INSERT INTO dozent VALUES('Krechel');
INSERT INTO dozent VALUES('Kröger');
INSERT INTO dozent VALUES('Panitz');
INSERT INTO dozent VALUES('Reith');
INSERT INTO dozent VALUES('Schulz');
INSERT INTO dozent VALUES('Schwanecke');
INSERT INTO dozent VALUES('Steffen');
INSERT INTO dozent VALUES('Weitz');
INSERT INTO dozent VALUES('Werntges');
INSERT INTO dozent VALUES('Alle');
INSERT INTO dozent VALUES('Professoren des Fachbereichs');
INSERT INTO dozent VALUES('Lehrbeauftragte');

SELECT * FROM dozent;

--- Liste ---
INSERT INTO liste VALUES('GI');
INSERT INTO liste VALUES('MI');
INSERT INTO liste VALUES('-');

SELECT * FROM liste;

--- Literatur --- --- Autor/Titel Primär ---
INSERT INTO literatur VALUES('Laudon', 'Wirtschaftsinformatik - Eine Einführung', 'Pearson', '2009');
INSERT INTO literatur VALUES('Scheer', 'ARIS - Vom Geschäftsprozess zum Anwendungssystem', 'Springer', '2002');
INSERT INTO literatur VALUES('Nickull et al.', 'Web 2.0 Architectures', 'O''Reilly', '2009');
INSERT INTO literatur VALUES('Hanson', 'Mashups: Strategies for the Modern Enterprise', 'Addision-Wesley', '2009');
INSERT INTO literatur VALUES('Kappel, Reich, Teschitzegger', 'Web-Engineering', 'dpunkt', '2004');
INSERT INTO literatur VALUES('Pascal Hitzler', 'Semantic Web', 'Springer', '2008');
INSERT INTO literatur VALUES('Bernd Müller', 'Java Server Faces', 'Hanser', '2006');
INSERT INTO literatur VALUES('Ruby, Thomas, Heinemeier Hanssen', 'Agile Web Development with Rails', 'The Pragmatic Bookshelf', '2009');
INSERT INTO literatur VALUES('Gutmans et al.', 'PHP 5 Power Programming', 'Perens', '2004');
INSERT INTO literatur VALUES('Falkner, Jones', 'Servlets and JavaServer Pages', 'Addison-Wesley', '2006');
INSERT INTO literatur VALUES('Marinscheck et al.', 'JavaServer Faces 2.0', 'dpunkt', '2009');
INSERT INTO literatur VALUES('Wöhr', 'Web-Technologien', 'dpunkt', '2004');
INSERT INTO literatur VALUES('Huseby', 'Sicherheitsrisiko Web-Anwendung', 'dpunkt', '2004');
INSERT INTO literatur VALUES('Love, Oram', 'Linux System Programming', 'O''Reilly Media', '2007');
INSERT INTO literatur VALUES('Rubini, Corbet, Kroah-Hartman', 'Linux Device Drivers', 'O''Reilly Media', '2005');
INSERT INTO literatur VALUES('Siedersleben (Hrsg.)', 'Softwaretechnik', 'Hanser', '2002');
INSERT INTO literatur VALUES('Balzert', 'Lehrbuch der Softwaretechnik: Softwaremanagement', 'Spektrum', '2008');
INSERT INTO literatur VALUES('Bruegge, Dutoit', 'Objektorientierte Softwaretechnik', 'Pearson', '2006');
INSERT INTO literatur VALUES('Litke', 'Projektmanagement', 'Hanser', '2007');
INSERT INTO literatur VALUES('Larman', 'UML2 und Patterns angewendet', 'Mitp', '2005');
INSERT INTO literatur VALUES('Oesterreich', 'Analyse und Design mit UML 2.3', 'Oldenbourg', '2009');
INSERT INTO literatur VALUES('Gamma et al.', 'Entwurfsmuster', 'Addison-Wesley', '2004');
INSERT INTO literatur VALUES('Cockburn', 'Writing effective use cases', 'Pearson', '2000');
INSERT INTO literatur VALUES('Starke', 'Effektive Software Architekturen', 'Hanser', '2011');
INSERT INTO literatur VALUES('Bruce Schneier', 'Applied Cryptography', '', '');
INSERT INTO literatur VALUES('Martin Raepple', 'Sicherheitskonzepte für das Internet', 'dpunkt', '');
INSERT INTO literatur VALUES('Claudia Eckert', 'IT-Sicherheit', 'Oldenbourg', '');
INSERT INTO literatur VALUES('Schneeweis, W.G.', 'Zuverlässigkeitstechnik', 'Datakontext', '');
INSERT INTO literatur VALUES('Th. Erl', 'SOA Principles of Service Design', 'Prentice Hall', '2008');
INSERT INTO literatur VALUES('N. Josuttis', 'SOA in der Praxis: System-Design für verteilte Geschäftsprozesse', 'dpunkt', '2008');
INSERT INTO literatur VALUES('Ertel', 'Angewandte Kryptographie', 'Hanser', '2007');
INSERT INTO literatur VALUES('Schneier', 'Angewandte Kryptographie', 'Wiley', '2005');
INSERT INTO literatur VALUES('Eckert', 'IT-Sicherheit', 'Oldenbourg', '2007');
INSERT INTO literatur VALUES('Anderson', 'Security Engineering', 'Wiley', '2008');
INSERT INTO literatur VALUES('Kurose, Ross', 'Computernetzwerke', 'Pearson', '2008');
INSERT INTO literatur VALUES('Tanenbaum', 'Computernetzwerke', 'Pearson Studium', '2003');
INSERT INTO literatur VALUES('Stroustrup', 'Die C++ Programmiersprache', 'Addison Wesley', '2009');
INSERT INTO literatur VALUES('Eckel', 'Thinking in C++ programmieren', 'Addison Wesley', '2008');
INSERT INTO literatur VALUES('Meyers', 'Effektiv C++ programmieren', 'Addison Wesley', '2008');
INSERT INTO literatur VALUES('Dausmann, et al.', 'C als erste Programmiersprache', 'Teubner', '2010');
INSERT INTO literatur VALUES('Lutz, Ascher', 'Einführung in Python', 'O''Reilly', '2007');
INSERT INTO literatur VALUES('Mössenböck', 'Sprechen Sie Java?', 'dpunkt', '2001');
INSERT INTO literatur VALUES('Schiedermeier', 'Programmieren mit Java: Eine methodische Einführung', 'Pearson', '2004');
INSERT INTO literatur VALUES('Krüger', 'Handbuch der Javaprogrammierung', 'Addison-Wesley', '2002');
INSERT INTO literatur VALUES('Darwin', 'Java-Kochbuch', 'O''Reilly', '2005');
INSERT INTO literatur VALUES('R. Meier', 'Professional Android Application Development', 'Wrox', '2009');
INSERT INTO literatur VALUES('J. Roth', 'Mobile Computing - Grundlagen, Technik, Konzepte', 'dpunkt', '2005');
INSERT INTO literatur VALUES('Shneiderman', 'Designing the User Interface', 'Pearson', '2005');
INSERT INTO literatur VALUES('Krug', 'Don''t make me think', 'New Riders Press', '2005');
INSERT INTO literatur VALUES('Satter', 'Designing for interaction', 'New Riders Press', '2009');
INSERT INTO literatur VALUES('Rubin', 'Handbook of Usability Testing', 'Wiley', '2008');
INSERT INTO literatur VALUES('Boehm, Prautzsch', 'Numerical Methods', 'Teubner', '1993');
INSERT INTO literatur VALUES('Graham, Knuth Patashnik', 'Concrete Mathematics, A Foundation For Computer Science', 'Addison-Wesley', '1994');
INSERT INTO literatur VALUES('Beutelsbacher', 'Das ist o.B.d.A trivial', 'Vieweg', '2006');
INSERT INTO literatur VALUES('Sachs', 'Wahrscheinlichkeitsrechnung und Statisik', 'Hanser', '2007');
INSERT INTO literatur VALUES('Papula', 'Mathematik für Ingenieure und Naturwissenschaftler', 'Vieweg', '2006');
INSERT INTO literatur VALUES('Bronstein, Semendjajev', 'Taschenbuch der Mathematik', 'Deutsch (Harri)', '2008');
INSERT INTO literatur VALUES('Gramlich', 'Lineare Algebra: Eine Einführung', 'Hanser', '2009');
INSERT INTO literatur VALUES('Farin, Hansford', 'Lineare Algebra - ein geometrischer Zugang', 'Springer', '2003');
INSERT INTO literatur VALUES('Luger', 'Artificial Intelligence, Structures and Strategies for Complex Problem Solving', 'Addison-Wesley', '2004');
INSERT INTO literatur VALUES('Cawsey', 'Künstliche Intelligenz', 'Pearson', '2003');
INSERT INTO literatur VALUES('Russell, Norvig', 'Künstliche Intelligenz: Ein moderner Ansatz', 'Pearson', '2004');
INSERT INTO literatur VALUES('Lämmel, Cleve', 'Künstliche Intelligenz', 'Fachbuchverlag', '2008');
INSERT INTO literatur VALUES('Sinnreich et al.', 'Internet Communications Using SIP: Delivering VoIP and Multimedia Services with Session Initiation Protocol', 'Wiley', '2006');
INSERT INTO literatur VALUES('Shiegoka et al.', 'eCollaboration', 'dpunkt', '2009');
INSERT INTO literatur VALUES('Tandler', 'Synchronous Collaboration in the Age of Ubiquitous Computing: Requirements, Application Models, Software Architecture', 'VDM Verlag', '2008');
INSERT INTO literatur VALUES('Wöhe, Günter', 'Einführung in die Allgemeine Betriebswirtschaftselehre', 'Franz Vahlen Verlag', '');
INSERT INTO literatur VALUES('Schmalen, Pechtl', 'Grundlagen und Probleme der Betriebswirtschaft', 'Schäffer-Pöschl-Verlag', '');
INSERT INTO literatur VALUES('S. Krumke und H. Noltemeier', 'Graphentheoretische Konzepte und Algorithmen', 'Teubner', '2005');
INSERT INTO literatur VALUES('R. Diestel', 'Graphentheorie', 'Springer', '2010');
INSERT INTO literatur VALUES('V. Turau', 'Algorithmische Graphentheorie', 'Oldenbourg', '2009');
INSERT INTO literatur VALUES('P. Tittmann', 'Graphentheorie: Eine anwendungsorientierte Einführung', 'Carl Hanser Verlag', '2011');
INSERT INTO literatur VALUES('Hoffmann', 'Modernes Web-Design', 'Galileo Press', '2008');
INSERT INTO literatur VALUES('Stapelkamp', 'Screen- und Interfacedesign', 'Springer', '2007');
INSERT INTO literatur VALUES('Saffer', 'Designing for interaction', 'New Riders', '2009');
INSERT INTO literatur VALUES('Steve Krug', 'Don''t make me think.', 'New Riders', '2000');
INSERT INTO literatur VALUES('Richard Bird', 'Introduction to Functional Programming using Haskell', 'Prentice Hall', '1998');
INSERT INTO literatur VALUES('Martin Erwig', 'Grunglagen funktionaler Programmierung', 'Oldenbourg', '1999');
INSERT INTO literatur VALUES('Martin Odersky, Lex Spoon, Bill Venners', 'Programming in Scala - A comprehensive step-by-step', 'Artima Inc', '2008');
INSERT INTO literatur VALUES('David Pollak', 'Beginning Scala', 'Apress', '');
INSERT INTO literatur VALUES('Szyperski', 'Component Software', 'Pearson', '2002');
INSERT INTO literatur VALUES('Ihns et al.', 'EJB3 professionell', 'dpunkt', '2007');
INSERT INTO literatur VALUES('Walls', 'Spring im Einsatz', 'Hanser', '2008');
INSERT INTO literatur VALUES('Wütherich', 'Die OSGI Service-Plattform', 'dpunkt', '2008');
INSERT INTO literatur VALUES('Gockel', 'Form der wissenschaftlichen Ausarbeitung', 'Springer', '2008');
INSERT INTO literatur VALUES('Henning', 'Taschenbuch Multimedia', 'Fachbuchverlag Leipzig', '2007');
INSERT INTO literatur VALUES('Brown', 'Communicating Design - Development Web Site Documentation for Design and Planing', 'New Riders', '2006');
INSERT INTO literatur VALUES('Schneiderman', 'Designing the User Interface: Strategies for Effective Human-Computer Interaction', 'Addison-Wesley', '2009');
INSERT INTO literatur VALUES('Tiddwell', 'Designing Interfaces', 'O''Reilly', '2005');
INSERT INTO literatur VALUES('Saffer', 'Designing for Interaction: Creating Smart Applications and Clever Devices', 'Peachpit Press', '2006');
INSERT INTO literatur VALUES('Johnson', 'GUI Bloopers 2.0: Common User Interface Design Don''ts and Dos', 'Morgan Kaufmann', '2007');
INSERT INTO literatur VALUES('Gumm, Sommer, Hesse', 'Einführung in die Informatik', 'Oldenbourg', '2007');
INSERT INTO literatur VALUES('Rembold, Levi', 'Einführung in die Informatik für Naturwissenschaftler und Ingenieure', 'Hanser', '2002');
INSERT INTO literatur VALUES('Herold, Lurz, Wohlrab', 'Grundlagen der Informatik', 'Pearson', '2007');
INSERT INTO literatur VALUES('Butz et al.', 'Medieninformatik: Eine Einführung', 'Pearson', '2009');
INSERT INTO literatur VALUES('Koschenbar', 'Grafik für Nicht-Grafiker', 'Westend', '2008');
INSERT INTO literatur VALUES('Turtschi', 'Mediengestaltung', 'Niggli', '2000');
INSERT INTO literatur VALUES('Stankowski', 'Visuelle Kommunikation', 'Reiner', '1994');
INSERT INTO literatur VALUES('Willberg, Forssmann', 'Wegweiser Schrift', 'Schmidt', '2001');
INSERT INTO literatur VALUES('Krisztian, Schlempp-Ülker', 'Ideen visualisieren', 'Schmidt', '2004');
INSERT INTO literatur VALUES('Akenine-Möller et al.', 'Real-Time Rendering', 'Peters Wellesly', '2008');
INSERT INTO literatur VALUES('Eberly', '3D Game Engine Design. A practical Appraoch to Real-Time Computer Graphics', 'Morgan Kaufmann', '2006');
INSERT INTO literatur VALUES('Schmied', 'High Quality Messaging and Electronic Commerce', 'Springer', '1999');
INSERT INTO literatur VALUES('Haberecker', 'Digitale Bildverarbeitung, Grundlagen und Anwendungen', 'Carl Hanser Verlag', '1991');
INSERT INTO literatur VALUES('Jähne', 'Digitale Bildverarbeitung', 'Springer', '2005');
INSERT INTO literatur VALUES('Gonzalez, Wintz', 'Digital Image Processing', 'Longman', '1987');
INSERT INTO literatur VALUES('Burger, Burge', 'Digitale Bildverarbeitung: Eine Einführung mit Java und ImageJ', 'Springer', '2008');
INSERT INTO literatur VALUES('Saake, Heuer', 'Datenbanken: Konzepte und Sprachen', 'mitp', '2005');
INSERT INTO literatur VALUES('Elmasri, Navathe', 'Grundlagen von Datenbanksystemen', 'Pearson', '2005');
INSERT INTO literatur VALUES('Kemper, Eickler', 'Datenbanksysteme. Eine Einführung', 'Oldenbourg', '2009');
INSERT INTO literatur VALUES('Härder, Rahm', 'Datenbanksysteme. Konzepte und Techniken der Implementierung', 'Springer', '2001');
INSERT INTO literatur VALUES('Marco', 'Building and Managing the Meta Data Repository', 'Wiley', '2000');
INSERT INTO literatur VALUES('Saake, Heuer, Sattler', 'Datenbank-Implementierungstechniken', 'mitp', '2005');
INSERT INTO literatur VALUES('Vossen', 'Datenmodelle, Datenbanksprachen und Datenbankmanagementsysteme', 'Oldenbourg', '2008');
INSERT INTO literatur VALUES('Bauer, Günzel', 'Data Warehouse Systeme - Architektur, Entwicklung, Anwendung', 'dpunkt', '');
INSERT INTO literatur VALUES('Lehner', 'Datenbanktechnologie für Data-Warehouse-Systeme', 'dpunkt', '');
INSERT INTO literatur VALUES('Schrödl', 'Business Intelligence mit MS SQL Server 2008', 'Hanser', '');
INSERT INTO literatur VALUES('Abdecker, et al.', 'Geschäftsprozessorientiertes Wissensmanagement: Effektive Wissensnutzung bei der Planung und Umsetzung von Geschäftsprozessen', 'Springer', '2002');
INSERT INTO literatur VALUES('Lehner', 'Wissensmanagement. Grundlagen. Methoden und technische Unterstützung', 'Hanser', '2009');
INSERT INTO literatur VALUES('Götzer, Schmale, Maier, Komke', 'Dokumenten-Management: Informationen im Unternehmen effizient nutzen', 'dpunkt', '2004');
INSERT INTO literatur VALUES('Gadatsch', 'Grundkurs Geschäftsprozess-Management: Methoden und Werkzeuge für die IT-Praxis', 'Vieweg', '2007');
INSERT INTO literatur VALUES('Koop', 'Erfolgsfaktor Content Management. Vom Web Content bis zum Knowledge Management', 'Vieweg', '2001');
INSERT INTO literatur VALUES('Goetz et al.', 'Java Concurrency in Practice', 'Addison-Wesley', '2006');
INSERT INTO literatur VALUES('Lea', 'Concurrent Programming in Java', 'Addison-Wesley', '2000');
INSERT INTO literatur VALUES('Riser et al.', 'Konzeption und Entwicklung interaktiver Lernprogramme', 'Springer', '2002');
INSERT INTO literatur VALUES('Wendt', 'CBT und WBT - konzipieren, entwickeln, gestalten', 'Hanser', '2003');
INSERT INTO literatur VALUES('Rabin', 'Introduction to Game Development', 'Cengage Learning Services', '2009');
INSERT INTO literatur VALUES('Foley, van Dam, Feiner, Hughes', 'Computer Graphics: Principles and Practise', 'Addison-Wesley', '2009');
INSERT INTO literatur VALUES('Watt', '3D-Computergrafik', 'Pearson', '2001');
INSERT INTO literatur VALUES('Woo, Neider, Davis', 'OpenGL, Programming Guide, The Official Guide to Learning OpenGL', 'Addison-Wesley', '2007');
INSERT INTO literatur VALUES('Angel', 'Interactive Computer Graphics', 'Addison-Wesley', '2008');
INSERT INTO literatur VALUES('Hartley, Zissermann', 'Multiple View Geometry in Computer Vision', 'Cambridge', '2004');
INSERT INTO literatur VALUES('Forsyth, Ponce', 'Computer Vision A Modern Approach', 'Prentice Hall', '2003');
INSERT INTO literatur VALUES('Bradski, Kaehler', 'Learning OpenCV: Computer Vision with the Open CV Library', 'O''Reilly', '2008');
INSERT INTO literatur VALUES('Wirth', 'Grundlagen und Techniken des Complierbaus', '', '');
INSERT INTO literatur VALUES('Sethi, Lam, Aho', 'Compiler. Prinzipien, Techniken und Tools', '', '');
INSERT INTO literatur VALUES('Bauer, Höllerer', 'Übersetzung objektorientierter Programmiersprachen', '', '');
INSERT INTO literatur VALUES('Tanenbaum', 'Moderne Betriebssysteme', 'Pearson', '2009');
INSERT INTO literatur VALUES('Voigt', 'Betriebssysteme', 'Spektrum', '2001');
INSERT INTO literatur VALUES('Tanenbaum', 'Computerarchitektur', 'Pearson', '2005');
INSERT INTO literatur VALUES('Hopcroft, Ullman, Motwani', 'Einführung in die Automatentheorie, Formale Sprachen und Komplexitätstheorie', 'Pearson', '2002');
INSERT INTO literatur VALUES('Schöning', 'Theoretische Informatik - kurz gefasst', 'Spektrum', '2008');
INSERT INTO literatur VALUES('Cohen', 'Introduction to Computer Theory', 'Wiley', '1990');
INSERT INTO literatur VALUES('Harold, Rusty', 'XML in a Nutshell', 'O''Reilly', '2005');
INSERT INTO literatur VALUES('Moeller, Schwartzbach', 'An Introduction to Xml And Web Technologies', 'Addison-Wesley', '2006');
INSERT INTO literatur VALUES('Bongers', 'XSLT 2.0', 'Galileo', '2008');
INSERT INTO literatur VALUES('Musciano, Kennedy', 'HTML & XHTML', 'O''Reilly', '2007');
INSERT INTO literatur VALUES('Meyer', 'Cascading Style Sheets', 'O''Reilly', '2007');
INSERT INTO literatur VALUES('Karsten Berns', '"Autonomous Land Vehicles', 'Vieweg Teubner', '2009');
INSERT INTO literatur VALUES('Russel Norvig', 'Künstliche Intelligenz', 'Pearson', '2004');
INSERT INTO literatur VALUES('Blair', 'Zeichentrickfiguren leichtgemacht', 'Deutsch', '2008');
INSERT INTO literatur VALUES('Monaco', 'Film verstehen, Kunst, Technik, Sprache, Geschichte und Theorie des Films und der Medien', 'Rowohlt', '2000');
INSERT INTO literatur VALUES('Minorski', 'Aufgabensammlung der höheren Mathematik', 'Hanser', '2008');
INSERT INTO literatur VALUES('Scherfner, Volland', 'Analysis 1 für das erste Semester', 'Pearson', '2008');
INSERT INTO literatur VALUES('Saake, Sattler', 'Algorithmen und Datenstrukturen in Java', 'dpunkt', '2010');
INSERT INTO literatur VALUES('Sedgewick', 'Algorithmen in C', 'Spektrum', '2002');
INSERT INTO literatur VALUES('Ottmann, Widmayer', 'Algorithmen und Datenstrukturen', 'Spektrum', '2002');
INSERT INTO literatur VALUES('James F. Kurose, Keith W. Ross', 'Computernetze - Ein Top-Down-Ansatz mit Schwerpunkt Internet', 'Pearson', '2008');
INSERT INTO literatur VALUES('Gerd Siegmund', 'Technik der Netze', 'Hüthig', '2009');
INSERT INTO literatur VALUES('Hoschek, Lasser', 'Grundlagen der Geometrischen Datenverarbeitung', 'Teubner', '');
INSERT INTO literatur VALUES('Farin', 'Curves and Surfaces for CAGD', 'Morgan Kaufmann Publisher', '2001');
INSERT INTO literatur VALUES('Kerlow', 'The Art of 3D Computer Animation Effects', 'John Wiley + Sons', '2009');
INSERT INTO literatur VALUES('Steinmüller', 'Bildanalyse', 'Springer', '2008');
INSERT INTO literatur VALUES('Tönnies', 'Grundlagen der Bildverarbeitung', 'Pearson', '2005');
INSERT INTO literatur VALUES('Gonzales, Woods', 'Digital Image Processing', 'Prentice Hall', '2008');

DELETE FROM literatur WHERE bId = 49;
DELETE FROM literatur WHERE bId = 33;
DELETE FROM literatur WHERE bId = 48;
DELETE FROM literatur WHERE bId = 50;
DELETE FROM literatur WHERE bId = 75;

SELECT * FROM literatur;

--- Student ---
INSERT INTO student VALUES('Marc', 'Radziwill', 'marc-david.radziwill@student.hs-rm.de', 'passwort');
INSERT INTO student VALUES('Nadine', 'Tetz', 'nadine.tetz@student.hs-rm.de', 'passwort');
INSERT INTO student VALUES('Jörg', 'Berdux', 'joerg.berdux@hs-rm.de', 'passwort');

SELECT * FROM student;

--- Modul ---
INSERT INTO modul VALUES('7500','2D-Bildanalyse','5','GI',
						'\a Lineare Algebra, Analysis: Funktionen, Integralrechnung, Vektoren und Matrizen 
							\a Programmieren 1,2: Programmierkenntnisse',
						'\a Bildvorverarbeitung 
							\a Objektmerkmale 
							\a Klassifikationsprinzipien 
							\a Template Matching 
							\a Numerische Klassifikation (lineare Klassifikation, Abstandsklassifikation) 
							\a Statistische Klassifikation 
							\a Syntaktische Klassifikation 
							\a Kontextabhängige Klassifikation (Graphmatching, diskrete und kontinuierliche Relaxation) 
							\a Hauptkomponentenanalyse 
							\a Bewegungsdetektion und Objektverfolgung 
							\a Bayessche Filter 
							\a Anwendungen (Gesichtserkennung, Inhaltsbasierte Bildsuche, Barcode lesen, OCR)',
						'\a Die 2D Bildanalyse (oft auch Bildverstehen genannt) beschäftigt sich mit der Analyse und Interpretation von Bildern bzw. Bildfolgen. Die Hauptaufgabe der Bildanalyse besteht darin, auf den Bildern etwas (zum Beispiel Objekte, die sich vom Hintergrund abheben) zu erkennen. 
							\a Verfahren zum Erkennen von Objekten in 2D-Bildern einsetzen 
							\a Bibliothek zur Klassifikation von 2D-Bildinhalten verwenden (z.B. OpenCV) 
							\a Eigene Analyse- und Klassifikationsverfahren selbstständig entwickeln',
						'\a Anwesenheit Vorlesung und Praktikum (90 h) 
							\a Vorbereitung und Nachbereitung (60 h) 
							\a Bearbeitung Praktikum (150 h)',
						'praktische Tätigkeit und Fachgespräch(100%)',
						'\a Seminaristische Vorlesung (2 SWS) 
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7720','3D-Animation','5','GI',
						'\a Einführung in die Gestaltung: Komposition und Layout, Grafik, Farbe
 							\a Gestaltung elektronischer Medien: Layout, Navigation, Informationsgrafik
 							\a Animation und Film: theor. Grdlg. der Animation, Interaktive Animationstechniken',
						'\a Grundbegriffe und technologisches Basiswissen
							 \a Einführung in die Software Maya Complete/Unlimited (Autodesk):
							 \a 3D-Navigation, Nodestruktur, Interface
							 \a Modeling: Erstellung dreidimensionaler Geometrieobjekte
							 \a (Polygonale Geometrie, Subdivision Surfaces, NURBS)
							 \a Shading: Generierung prozeduraler und texturaler Materialien
							 \a Lighting: Simulation von Licht und Schatten im virtuellen Raum
							 \a Animation: zeitabhängige Steuerung bestimmter Parameter.
							 \a Gezielter Umgang mit Animationskurven
							 \a Dynamics: Partikelsysteme und physikalische Simulationen
							 \a Rendering: Finale Berechnung der Bilddaten. Grundlagen des Compositing
							 \a Erstellung von Geometrie und Animationen für Echtzeit-3D-Anwendungen
							 \a Erstellung einer Anwendung
							 \a Basiswissen Skriptsprachen (MEL, Python)',
						'Den Studierenden soll ein grundlegendes Verständnis für technische und gestalterische Prinzipien bei der Visualisierung dreidimensionaler, virtueller Szenerien vermittelt werden. Insbesondere werden die in der Veranstaltung Film und Animation erworbenen Kenntnisse vertieft und erweitert. Am Ende des Semesters sollen die Studierenden
							 \a technologische Grundlagen kennen
							 \a die verwendete Software sicher handhaben
							 \a fundamentale 3D-Animationstechniken anwenden können
							 \a zielorientierte Gestaltungskonzepte für 3D-Projekte erstellen
							 \a und Teilbereiche praktisch umsetzen können',
						'\a Anwesenheit Seminar und Projekt (90 h)
							 \a Vor- und Nachbearbeitung Seminar (60 h)
							 \a Bearbeitung der praktischen Übungen (150 h)',
						'praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							 \a Projekt (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7100','3D-Modellierung und Animation','5','MI',
						'\a Programmieren 1,2: Programmierkenntnisse
							\a Computergrafik: Grundkenntnisse der generativen Computergrafik und über GDV-Systeme',
						'\a Akquisition von 3D-Objektmodellen und Szenenmodellen
							\a Videobasierte 3D-Rekonstruktion
							\a 3D-Scanning
							\a Photogrammetrie
							\a Terraingenerierung
							\a Reverse Engineering
							\a Objektrepräsentationen (NURBS, Punktwolken, Volumetrische Repräsentationen, Hybride Repräsentationen)
							\a Software zur Modellierung und Animation (z.B. Maya, 3D Studio Max)
							\a Keyframe-Animation
							\a Physik-Animation
							\a Motion Capturing
							\a Partikelsysteme',
						'Die Studierenden sollen
							\a Fertigkeiten in der 3D-Modellierung besitzen
							\a Neben traditionellen Modellierungsverfahren auch Erfahrungen mit 3D-Rekonstruktion / Reverse Engineering haben
							\a Software zur Modellierung und Animation (z.B. Maya, 3D Studio Max, Blender) anwenden können
							\a Verschiedene Animationsparadigmen (key frame, physics engine) beherrschen
							\n Die erworbenen Fähigkeiten tragen damit in besonderem Maße zur Ausprägung von spezifischen Analyse-, Design- und Realisierungskompetenzen und zur Erweiterung von spezifischen technologischen Kompetenzen bei.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikum (60 h)',
						'Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7510','Advanced Networking','5','GI',
						'\a Rechnernetze und Netzwerkprogrammierung: Grundlagen Datennetze, Aufbau von Rechnernetzen, Netzwerkprogrammierung',
						'\a Lokale Netze (IEEE 802 LANs)
							\a Drahtlose Lokale Netze (IEEE 802.11 WLANs, Bluetooth)
							\a Routing und Routingprotokolle (RIP, OSPF, BGP)
							\a Switching (ATM, MPLS)
							\a "Last-Mile" Zugangstechnologien (XDSL, Funktechnologien)
							\a Zellulare Mobilkommunikationsnetze (GSM/GPRS, UMTS)
							\a Integrierte Daten- und Sprachnetze (NGNs, VoIP)
							\a Dienstgütearchitekturen (IntServ, DiffServ)
							\a Authentifikation, Vertraulichkeit, Nachrichtenintegrität auf verschiedenen Ebenen (IEEE 802.1x, EAP, IPSec, TLS)
							\a Netzwerk-Monitoring und -Management',
						'Die Protokolle und Dienste der Sprach- und Datennetze sind heute eine Basistechnologie für den Aufbau moderner Kommunikationssysteme und damit der gesamten Informationsgesellschaft. Daher werden in diesem Modul diese Konzepte der Übertragungs- und Vermittlungstechnik vertieft sowie beispielhaft anhand von konkreten Systemen vorgestellt. Dabei sollen die Studierenden
							\a den strukturierten Aufbau von TK-Systemen / Netzen und die aktuellen und zukunftsweisende Kommunikationsfunktionen und Protokolle von TK-Systemen/Netzen kennen lernen,
							\a die Leistung des Gesamtsystems und die Zusammenarbeit der Komponenten von TK-Systemen/Netzen verstehen und beurteilen können
							\a und diese Kenntnisse in einem umfangreicheren Semester-Projekt zu Lösung eines konkreten Problems praktisch anwenden.',
						'\a Anwesenheit Seminar und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung des Seminars (60 h)
							\a Projektarbeit (150 h)',
						'praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');
						
INSERT INTO modul VALUES('2110','Algorithmen und Datenstrukturen','2','-',
						'\a Programmieren 1: imperatives Programmieren, Rekursion, einfache Datentypen, Felder, Referenzen',
						'\a Eigenschaften von Algorithmen, Probleme versus Algorithmen
							\a Suchen, einfache Sortierverfahren, effiziente Sortierverfahren
							\a Laufzeit und Komplexität, O-Notation, Analyse von Algorithmen, Lösen von Rekurrenzen
							\a Algorithmenentwurf und Algorithmenmuster
							\a Abstrakte Datentypen und deren Implementierung (Listen, Mengen)
							\a Einfache dynamische Datenstrukturen (verkettete Listen, Keller, Warteschlangen)
							\a Bäume, Durchlaufen, Binärbäume, Suchbäume, Ausgeglichene Bäume
							\a Hashing, Hash-Funktionen, Kollisionsbehandlung
							\a Graphen',
						'Entwurf, Implementierung und Auswahl von Algorithmen und Datenstrukturen für gegebene Problemstellungen sind typische Aufgaben eines Informatikers:
							\a Algorithmen entwerfen, bewerten (Laufzeit) und implementieren
							\a Dynamische Datenstrukturen objektorientiert implementieren
							\a Für Problemstellungen passende Algorithmen und Datenstrukturen auswählen und bestehende Bibliotheken nutzen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/ads.png');

INSERT INTO modul VALUES('1340','Analysis','1','-',
						'',
						'\a Funktionen ( Definition, Darstellungsformen, allgemeine Eigenschaften, Grenzwert und Stetigkeit, Polynomfunktionen, gebrochenrationale Funktionen, Potenz- und Wurzelfunktionen, trigonometrische Funktionen, Arkusfunktionen, Exponentialfunktionen, Logarithmusfunktionen, Hyperbel- und Areafunktionen)
							\a Differentialrechnung ( Differenzierbarkeit einer Funktion, Ableitungsregeln, Differential, implizite Differentiation, Ableitung bei Parameterform, Höhere Ableitungen, Extremwerte, Wende- und Sattelpunkte)
							\a Funktionen mehrer Variable (Definition, Darstellungsformen, partielle Ableitungen, Extrema und Sattelpunkte, Anwendungen, das totale Differential, Linearisierung einer Funktion, Differentiation nach einem Parameter, implizite Differentiation)
							\a Integralrechnung ( Integration als Umkehrung der Differentiation, das bestimmte und das unbestimmte Integral, der Fundamentalsatz der Differential- und Integralrechnung, uneigentliche Integrale, Integrationsregeln, Integrationsmethoden, Anwendung: Flächenbestimmung, Volumen eines Rotationskörpers)
							\a Potenzreihenentwicklung (unendliche Reihen: Grundbegriffe, Konvergenzkriterien; Potenzreihen, Taylor-Reihen, MacLaurinsche Reihen, Fourier-Reihen, Entwicklung periodischer Funktionen, harmonische Analyse.',
						'Die Modellbildung und deren Analyse fordert von den Informatikern:
							\a den sicheren Umgang mit Funktionen
							\a Beherrschung der Differential- und Integralrechnung
							\a die Darstellung der Funktionen als Potenzreihen',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Übungsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/analysis.png');
						
INSERT INTO modul VALUES('3250','Animation','3','-',
						'\a Einführung in die Gestaltung: Komposition und Layout, Grafik und Standbild
							\a Gestaltung elektronischer Medien: Farbe am Bildschirm, Layout, Informationsgrafik',
						'\a Konzeption einer komplexen, mehrschichtigen Aufgabenstellung mit Realisationsoptionen in Animation
							\a Recherche, inhaltliche und didaktische Aufbereitung
							\a Erstellung von Flow-Chart, Storyboard und Production-Board
							\a Theoretische Grundlagen der Animation (Historie, Begriffe, Techniken, Gestaltungsmittel)
							\a Analyse bestehender Animationen
							\a Software zur 2D-Animation (Flash)
							\a Einführung in interaktive Animationstechniken (Actionscript)
							\a Praktische Umsetzung der Projektaufgabe
							\a Gruppenübergreifende Besprechungen und Diskussion der Projektaufgaben
							\a Dokumentation und Präsentation',
						'Grundlegende Fertigkeiten im Bereich Bewegtbild und Animation sind für die Gestaltung interaktiver Bildschirmmedien wichtig und komplettieren das für Medieninformatiker relevante Gestaltungsspektrum. Am Ende des Semesters sollen die Studierenden:
							\a praktische und theoretische Grundkenntnisse im Bereich 2D-Animation besitzen
							\a theoretische Grundkenntnisse im Bereich Filmgestaltung besitzen
							\a kurze Animations- und Videosequenzen konzipieren und praktisch umsetzen können
							\a Animations- und Videosequenzen sinnvoll in eine interaktive Umgebung einbinden können
							\a Projekt- und Produktionsphasen planen und teamorientiert durchführen können',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbearbeitung Vorlesung (30 h)
							\a Bearbeitung der praktischen Übungen (60 h)',
						'praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/animation.png');

INSERT INTO modul VALUES('7520','Anwendung der künstlichen Intelligenz','5','GI',
						'',
						'\a Grundlagen der Modernen KI
							\a Ansatz des intelligenten Agenten
							\a Verschiedene Suchstrategien theorisch und beispielhaft
							\a Implementierung ausgesuchter Suchstrategien in passenden Programmiersprachen
							\a Aktuelle Forschungs- und Anwendungsprojekte in Teamarbeit
							\a eventbasierte Serviceschnittstellen
							\a Middleware
							\a Elemente der Robotik
							\a autonome Service Roboter
							\a Sensoren (Video, Audio)
							\a Elemente der Bildverarbeitung, Sprachverabeitung und Mustererkennung',
						'Die Studenten sind in der Lage, geeigente Suchstrategien zur Lösungsermittlung auszuwählen und in Teams erfolgreich eine intelligente Applikation zu entwickeln. Mobile Geräte mit verschiedenen Senosoren wie Mobiltelefone und Mobile autonome Roboter werden erfolgreich in die Applikationen über Serviceschnittstellen integriert.',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7110','Ausgewählte Kapitel der angewandten Informatik','5','MI',
						'\a Programmieren 1,2,3: Programmierkenntnisse',
						'\a Veranstaltungsinhalte in Abhängigkeit von gewähltem Thema',
						'Erarbeitung von aktuellen/wechselnden Themen aus der angewandten Informatik.
							\a Nutzen vorhandener Kenntnisse um neue Themengebiete zu erschliessen.
							\a Umsetzung von Anwendungsszenarien unter Einsatz aktueller Konzepte und Technologien.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben/Projekt (60 h)',
						'Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('2120','Auszeichnungssprachen','2','-',
						'\a Programmieren 1: Imperatives Programmieren, Objektorientierung',
						'\a Einführung: Strukturierte Dokumente, Grundkonzepte von Auszeichnungssprachen, Anwendungsbeispiele, historische Entwicklung
							\a Trennung der Aspekte Inhalt / Struktur / Darstellung eines Dokuments; Cascading Stylesheets (CSS)
							\a HTML als Beispiel für eine konkrete Auszeichnungssprache; Grundbegriffe (Elemente, Attribute, Entities, Dokumententypdeklaration)
							\a Metasprachen zur Definition von Auszeichnungssprachen am Beispiel von XML
							\a XML Dokumententypdefinition (DTD), Unterscheidung "well-formed" / "valid"; Namensraum-Konzept (namespaces)
							\a Verarbeitung von XML-Dokumenten mit XSL: Verarbeitungsmodell von XSLT, XSLT-Stylesheets, XSLT-Sprachmittel einschließlich Kontrollstrukturen, Rekursion, parametrisierte Templates, Sortierung/Gruppierung; XSL-FO
							\a Einsatz von XPath zur Identifikation von Dokumententeilen: Konzepte (Achsen, Pfadausdrücke, Funktionen), Einsatz in XSLT-Stylesheets
							\a Einführung in XMLSchema: Überblick, Vergleich mit DTDs
							\a Übersicht über Standard-APIs zur Verarbeitung von XML-Daten in Universalprogrammiersprachen: Parsen von XML-Daten; unterschiedliche Verarbeitungsmodelle
							\a das SAX-API (Architektur, Handler-Konzept, typische Nutzung)
							\a das DOM-API (Architektur, Navigation durch eine DOM-Baumstruktur, Erzeugen und Manipulieren von DOM-Bäumen)
							\a Nutzung von XSLT-Stylesheets aus einer Universalprogrammiersprache heraus; Parametrisierung von Stylesheets, Transformation von DOM-Bäumen
							\a XML-Anwendungsbeispiele aus verschiedenen Bereichen (z.B. Multimedia, Mobilkommunikation, Datenaustauschformate, Vektorgraphik)',
						'Auszeichnungssprachen spielen eine immer größere Rolle bei der Repräsentation, dem maschinellen Austausch und der Weiterverarbeitung strukturierter Informationen, beispielsweise im elektronischen Datenaustausch, vielen Internet-Anwendungen und mobilen Informationssystemen. Ein Informatiker benötigt daher folgendende Fähigkeiten:
							\a XML zur Definition von Auszeichnungssprachen einsetzen
							\a XML-basierter Dokumente (insb. Parsing, Transformation) erzeugen und weiter verarbeiten
							\a XML in unterschiedlichen Einsatzbereichen (z.B. Multimedia, el. Datenaustausch) sinnvoll einsetzen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (45 h)
							\a Bearbeitung der Praktikumsaufgaben (45 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('3110','Automatentheorie und Formale Sprachen','3','-',
						'\a Analysis, Lineare Algebra: Funktionen, Relationen, Äquivalenzen, Mengentheorie
							\a Mathematik für Informatiker: Beweisverfahren, Symbolik bei Beweisführung
							\a Algorithmen und Datenstrukturen: Laufzeit, Komplexität, O-Notation',
						'\a Deterministische/Nicht-deterministische endliche Automaten, Äquivalenz und Minimierung, spontane Übergänge
							\a Reguläre Sprachen, Äquivalenz zu endlichen Automaten, Operationen und Abschlusseigenschaften, Pumping-Lemma
							\a Grammatiken, Semi-Thue-Systeme, Chomsky-Grammatiken, Chomsky-Hierarchie
							\a Kontextfreie Sprachen, Mehrdeutigkeit, Normalformen, Chomsky-Normalform, Pumping-Lemma
							\a Deterministische/Nicht-deterministische Kellerautomaten, Äquivalenz Kellerautomaten und kontextfreien Grammatiken
							\a Allgemeinere Chomsky-Sprachen, Chomsky-Typ 1, Chomsky-Typ 0
							\a Turing-Maschinen
							\a Entscheidbarkeit und Berechenbarkeit
							\a Nicht handhabbare Probleme, Komplexität, Problemklassen P und NP, NP-vollständige Probleme',
						'Logisches Denken und strukturiertes Vorgehen - unabhängig von konkreten Rechnern und aktuellen Trends - ist Grundlage solider konzeptionellen Arbeit.
							\a Verfahren zur Mustererkennung, Spracherkennung und -erzeugung praktisch anwenden für z.B. die Suche in Texten, Syntaxanalyse, Kodierung, etc.
							\a Erkenntnisse über grundsätzliche und praktische Lösbarkeit eines Problems auf neue Probleme übertragen
							\a Theoretische Überlegungen auf gefestigten theoretischen Grundlagen der Informatik aufbauen',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (45 h)
							\a Bearbeitung der Übungsaufgaben (45 h)',
						'Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/automaten.png');

INSERT INTO modul VALUES('9040','Bachelor-Thesis','6','-',
						'\a siehe Prüfungsordnung Abschnitt 5.1.2',
						'\a Analyse der Aufgabenstellung
							\a Erarbeiten der theoretischen Grundlagen, Bewerten verschiedener Lösungsalternativen
							\a Selbständige Entwicklung der Lösung für die Aufgabenstellung
							\a Dokumentation in Form der Bachelor-Arbeit
							\a Kolloquium: Einführung in die Aufgabenstellung, Durchführung der theoretischen und praktischen Teile, Darstellung der erzielten Ergebnisse',
						'Selbständige praxistaugliche Anwendung der im Studium gelernten Konzepte und Methoden zur Lösung einer begrenzten Aufgabenstellung in begrenzter Zeit im Schwierigkeitsbereich von fortgeschrittenen Lehrbüchern unter Einschluss einiger Bereiche des aktuellsten Wissensstandes des Studienfaches. Präsentation der Themenstellung der Abschlussarbeit und der dabei entwickelten Ergebnisse.',
						'\a Selbständige, betreute Durchführung der Abschlussarbeit, Erstellung Bachelor-Arbeit (360 h)
							\a Vorbereitung und Anwesenheit Kolloquium (90 h)',
						'\a Bachelor-Arbeit (80%)
							\a Bachelor-Kolloquium (20%)',
						'\a Selbständige Durchführung unter Betreuung',
						'15 cp, 450 h 0 SWS',
						'');

INSERT INTO modul VALUES('4110','Betriebssysteme und Rechnerarchitektur','4','-',
						'\a Programmieren 1,2: Programmierkenntnisse
							\a Programmieren 3: Programmieren in C
							\a Algorithmen und Datenstrukturen: Algorithmenbegriff, grundl. Datenstrukturen',
						'\a Einführung (Definition, Geschichte der Betriebssysteme, Arten und Einsatzbereiche von Betriebssystemen, Betriebssystem-Konzepte und -Strukturen)
							\a Grundlagen Rechnerarchitektur (Systemkomponenten, Aufgaben, Zusammenwirken)
							\a Prozessverwaltung (Prozesskonzept, Threads, Traps und Interrupts, Prozesswechsel, Systemaufrufe, Scheduling, Implementierungsaspekte, Beispiele)
							\a Prozesssynchronisation und -kommunikation (Synchronisationsmechanismen, Kommunikationsmechanismen, klassische Prozesskommunikationsprobleme, Beispiele)
							\a Deadlocks (Grundlagen, Deadlock-Erkennung und Behebung, Deadlock-Vermeidung, Deadlock-Verhinderung, verwandte Fragestellungen)
							\a Speicherverwaltung (Grundlagen von Speicherhierarchien, Swapping, virtueller Speicher, Segmentierung, Paging, Seitenersetzungsalgorithmen, Beispiele)
							\a Ein-/Ausgabe (I/O-Hardware, I/O-Software, DMA, PIO, Plattentreiber, Uhrtreiber, Terminal-Treiber und graphische Schnittstellen)
							\a Dateisysteme (Dateien, Verzeichnisse, Implementierung von Dateisystemen, Fehlertoleranz, Beispiele)
							\a Sicherheit (Grundlagen, Kryptographie, Authentifikation, Schutzmechanismen, Autorisierung, vertrauenswürdige Systeme)',
						'Betriebssysteme verwalten die Ressourcen eines Rechnersystems und bestimmen dadurch wesentlich dessen Leistungsfähigkeit und Nutzbarkeit. Gute Kenntnisse zentraler Betriebssystem-Konzepten sind daher für ein solides Gesamtverständnis moderner IT-Systeme unerlässlich.
							\a UNIX-Programmierschnittstelle (API) zur systemnahen Programmierung in eigenen Programmen einsetzen
							\a Methoden und Konzepte moderner Betriebssysteme zur Bewertung und Lösung von Problemstellungen im systemnahen Bereich einsetzen
							\a Typische Problem und Fehlersituationen im Rechnerbetrieb strukturiert und systematisch analysieren und beheben',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/betriebssysteme.png');

INSERT INTO modul VALUES('7120','Compilerbau','5','MI',
						'\a Algorithmen und Datenstrukturen: Baumtraversierungen, Stacks
							\a Automatentheorie und Formale Sprachen: Grundlagen formaler Sprachen, Chomsky-Hierarchie, endliche Automaten, Stackautomaten
							\a Einführung in die Informatik/Betriebssysteme und Rechnerarchitektur: Prozessortypen, Instruktionen, Assemblersprachen',
						'\a Einführung (Definition eines Compilers, Analyse-Synthese-Modell, Phasen, Umgebung eines Compilers, Beispiele zur Compilation)
							\a Sprachanalyse (Formale Sprachen, Grammatiken, Chomsky-Hierarchie, Eigenschaften von Grammatiken, Darstellung von Produktionen, eine Modellsprache, Semantik von Programmiersprachen)
							\a Lexikalische Analyse (Scanner, Implementierungsmöglichkeiten, Scanner der Modellsprache als Beispiel, Scannergeneratoren)
							\a Syntaktische Analyse (Top-Down-Analyse, LL(1)-Grammatiken, Rekursiver Abstieg, Bottom-Up-Analyse, Parser-Generatoren, Parser für die Modellsprache als Beispiel)
							\a Semantische Analyse (Definition und Überblick, Typ-Prüfung, Gültigkeitsprüfung, Vorgehensweise bei der Modellsprache)
							\a Fehlerbehandlung (Vorgehensweise, Fehlerbehandlung bei Syntaxanalyse)
							\a Laufzeit-Speicherverwaltung (Grundlagen, Adressierung, Aufteilung des Laufzeitspeichers, Activation Records, Dynamic-Link- und Static-Link-Ketten)
							\a Code- und Zwischencode-Generierung (Syntaxorientierte Übersetzung, Zwischensprachen, Semantische Aktionen, Zwischensprache des Modell-Compilers, Code-Erzeugung, Interpretation, Assemblercode-Erzeugung, Prinzipien der Optimierung)
							\a Compiler-Erweiterung und Portierung (T-Diagramme, Erweiterung, Bootstrap, Portierung)',
						'Elemente des Compilerbau gehören zu den typischen Aufgaben von Informatikern:
							\a Compiler für kleinere Sprachen entwerfen und implementieren
							\a Scanner und Parser für Kommandosprachen programmieren und einsetzen
							\a Compilergeneratoren verwenden
							\a Grammatiken analysieren, bewerten und transformieren',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7530','Computer Vision','5','GI',
						'\a Lineare Algebra, Analysis: Funktionen, Integralrechnung, Vektoren und Matrizen
							\a Programmieren 1,2: Programmierkenntnisse',
						'\a Klassifikation unterschiedlicher Geometrien in 1D, 2D und 3D
							\a Registrierung von 2D und 3D Daten
							\a Kegelschnitte und Quadriken
							\a Winkelmessung im projektiven Raum
							\a Bildrektifizierung
							\a Kamera-Modelle
							\a Kamera-Kalibrierung
							\a Stereogeometrie, N-Ansichten Geometrie
							\a Spezielle mathematische Verfahren, insbesondere Matrizenzerlegungen und nichtlineare Optimierungsverfahren
							\a Kleinste Quadrate Lösungen linearer Gleichungssysteme
							\a RANSAC
							\a Shape from X',
						'Die Computer Vision (oder auch das Maschinelle Sehen) beschäftigt sich mit der rechnergestützten Lösung von Aufgabenstellungen, welche üblicherweise mit Hilfe das menschlichen visuellen Systems bearbeitet werden. Maschinell sehende Systeme haben einen immer größeren Einfluss auf unser tägliches Leben und finden sich zum Beispiel neben der Automatisierungstechnik und Qualitätskontrolle inzwischen auch in Bereichen wie der Verkehrs- oder Sicherheits-Technik.
							\a Geometrische, optische und sensorische Probleme bei Verwendung von Kameras analysieren und Kameras entsprechend kalibrieren bzw. Bilder rektifizieren
							\a Geometrischen Größen im Raum anhand zweidimensionaler Bilder messen
							\a API zum maschinellen Sehen (z.B. OpenCV) zielgerichtet einsetzen',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('4120','Computergrafik','4','-',
						'\a Programmieren 1,2 : imperatives und objektorientiertes Programmieren
							\a Lineare Algebra: Matrizenrechnung, lineare Abbildungen',
						'\a Objektdarstellungen in 2D/3D (explizite, implizite, parametrische Darstellungen)
							\a Netze (Polygon-Netze, Dreiecks-Netze, Datenstrukturen)
							\a Einführung in Freiform-Kurven und -Flächen
							\a Geometrische Grundlagen (lineare, affine, projektive Transformationen in homogenen Koordinaten, Quaternionen)
							\a Projektionen (Parallel-, Zentral-, Stereo-Projektion)
							\a Darstellungen auf Rasterbildschirmen
							\a Grundlagen Farben und Texturen
							\a Renderpipeline (Polygon-Clipping, -Rasterisierung, -Triangulation, Beleuchtung/Shading, Texturierung, Verdeckung (Maler, z-Buffer)) und (Hardware-) Shader
							\a Lokale Beleuchtungsmodelle (Phong-Modell, Abschwächung, Spotlicht, Depth-Cueing, BRDFs)
							\a Globale Beleuchtungsverfahren (Ray-Casting, Ray-Tracing)
							\a Standard Grafik-APIs (OpenGL, DirectX, ...)
							\a Szenengraph-APIs (OpenInventor, Java3D, ...)
							\a Anwendungen der Computergrafik (AR, VR, ...)',
						'Grundkenntnisse der Computergrafik werden für eine große Zahl von Anwendungsgebieten der Informatik benötigt
							\a Verständnis des Renderingprozesses und Kenntnis des aktuellen Stands der Technik bezüglich der Renderingschritte
							\a Mit für die Computergrafik relevanten Konzepten aus dem Bereich der analytischen Geometrie sicher umgehen
							\a Objekte adäquat repräsentieren unter Verwendung passender Datenstrukturen
							\a Grafik-API (z.B. OpenGL, DirectX, ...) und Szenengraph-API (z.B. OpenInventor, Java3D, ...) praktisch einsetzen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/computergrafik.png');

INSERT INTO modul VALUES('7130','Computergrafik für Education und Entertainment','5','MI',
						'\a Computergrafik: Grundkenntnisse der Computergrafik und über GDV-Systeme
							\a Programmieren 1,2: Programmierkenntnisse',
						'\a e-Learning – Stärken und Schwächen
							\a Grundlagen aus Pädagogik und Didaktik
							\a Digital Storytelling und Game Design
							\a Simulierte Welten, Edutainment und Serious Games
							\a Kollaborative Lernumgebungen – Multiplayer Games
							\a Autorensysteme (z.B. Flash, Quest3D)
							\a Einsatz von Game Engines
							\a Produktionsprozesse
							\a Lernplattformen und Standards (z.B. SCORM)',
						'E-Learning und Entertainment sind wichtige Anwendungen, für die Informatiker Softwaresysteme unter Verwendung von Computergrafik konzipieren und realisieren. Ziel ist es,
							\a dass die Studenten Grundlagen für eine erfolgreiche Gestaltung von derartigen Anwendungen kennen
							\a und Software für spezielle Aufgabenstellungen (unter Beachtung der anwendungstypischen Randbedingungen und Produktionsprozessen) entwickeln können.
							\a Dedizierten Autorenwerkzeugen, Skriptingssprachen und Beschreibungssprachen einsetzen.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikum (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7140','Concurrent Programming','5','MI',
						'\a Programmieren 1,2,3: solide Programmierkenntnisse',
						'\a Objekte und Nebenläufigkeit, Thread-Sicherheit, Ressourcenkonflikte
							\a Patterns für concurrent Programming
							\a Impliziter und expliziter Parallelismus
							\a Fairness, Gegenseitiger Ausschluss, Deadlock, Starvation
							\a Sperren, Semaphore, Synchronizer, Joint Actions, Transaktionen
							\a Ausführung von Tasks, Worker-Threads, Thread-Pools
							\a Parallelisieren von Algorithmen, Fork/Join
							\a Cancelation und Shutdown von nebenläufigen Programmen
							\a Performance, Liveness, Skalierbarkeit
							\a Unterstützung von Nebenläufigkeit in Programmiersprachen',
						'Multikern-Prozessoren sind zunehmend Standard, nicht nur im Server sondern auch auf dem Desktop. Um die Rechenleistung entsprechend zu nutzen, ist nebenläufige Programmierung einzusetzen.
							\a Aufgabenstellungen und Algorithmen, die von Parallelität profitieren, identifizieren und entsprechende nebenläufige Umsetzung konzipieren
							\a Patterns und Bibliotheken zur nebenläufigen Programmierung einsetzen
							\a Probleme bei nebenläufigen Programmen erkennen und vermeiden',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder	praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7540','Content- und Wissensmanagement','5','GI',
						'\a Datenbanken: Relationale Datenbanken
							\a Auszeichnungssprachen: Verwendung XML',
						'\a Einführung in die Konzepte des prozessorientierten Wissensmanagement - Dokumentenmanagement
							\a BPM und Workflowmanagement
							\a Web-Contentmanagement
							\a Suche in Informationsbeständen
							\a Klassifikation und Extraktion',
						'Content-Management-Systeme (CMS) werden vermehrt zur Ablage und zum effizienten Retrieval immer häufiger elektronisch verwalteter unstrukturierter Daten eingesetzt und mit strukturierten Daten sinnvoll verknüpft.
							\a Standards und Techniken zur Verwaltung unstrukturierter und strukturierter Daten gezielt einsetzen
							\a Einsatzbereich von CMS bestimmen, CMS auswählen und praktisch verwenden
							\a Techniken zur Wissensextraktion, -Darstellung und Verwaltung kennen und einsetzen',
						'\a Anwesenheit Seminar und Praktikum (90 h)
							\a Vor- und Nachbereitung Seminar (60 h)
							\a Bearbeitung der Praktikumsaufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7550','Data-Warehouse-Systeme und Data Mining','5','GI',
						'\a Datenbanken: ER-Modellierung, SQL, Integration in Programmiersprachen',
						'\a Referenzarchitektur von Data Warehouse Systemen
							\a Phasen des Data Warehousing
							\a Physische Architektur
							\a Das multidimensionale Datenmodell und dessen Umsetzung
							\a Optimierung des Datenmodells und der Anfragen
							\a Vorgehensweise beim Aufbaue eines Data Warehouse Systems
							\a Betrieb und Weiterentwicklung eines Data Warehouse Systems
							\a Data Mining Grundlagen (Statistik)
							\a Data Mining Verfahren',
						'Die Studierenden sollen in der Lage sein:
							\a ein multidimensionales datenmodell zu entwerfen
							\a ein Data-Warehouse-System einzurichten, zu warten und zu optimieren
							\n Die Studierenden sollen die Grundlagen von Data Mining Verfahren kennen. Sie sollen in der Lage sein, passende Data Mining Verfahren auszuwählen und diese korrekt anzuwenden.',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7150','Datenbank-Technologien','5','MI',
						'\a Datenbanken: ER-Modellierung, SQL, Transaktionen, Integration in Programmiersprachen',
						'\a Datenbank-Implementierungstechniken für relationale Datenbanken (z.B. Indexstrukturen, Puffer, Hintergrundspeicher, Anfrageoptimierung, Transaktionsverwaltung, Recovery und Sicherung)
							\a Techniken und Verfahren für spezielle Anwendungen (z.B. Zugriffsstrukturen für Geometrische/Multimedia/Text Daten, Objektdatenbanken und hierarchische Daten, OLAP, Verteilte Datenbanken)',
						'Datenbanksysteme werden von jedem Informatiker eingesetzt. Für bestimmte Anwendungsfälle ist das Wissen um die Interna von Datenbanksystemen notwendig oder die Erweiterung von Datenbanksystemen für spezifische Einsatzszenarien.
							\a Datenbankverwendung mit Wissen der internen Strukturen optimieren.
							\a Datenbanksysteme für spezifische Anwendungsszenarien erweitern.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Seminar (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('3120','Datenbanksysteme','3','-',
						'\a Analysis Lineare Algebra: Relationen, Mengentheorie
							\a Programmieren Softwaretechnik: Imperatives Programmieren, Modellierung
							\a Algorithmen und Datenstrukturen: Wörterbücher, Hashing',
						'\a Daten, Datenmodellierung, Datenunabhängigkeit, logische Datenmodelle
							\a Architektur von Datenbanksystemen, Schemaarchitektur, Systemarchitektur
							\a Entity-Relationship (ER) Modell (Entity-Typen, Attribute, Beziehungen), Kardinalitäten, Erweiterungen
							\a Relationales Modell, Schlüssel (Primärschlüssel, Fremdschlüssel), referentielle Integrität
							\a Relationenalgebra (Projektion, Selektion, Verbunde, Umbenennung), Vollständigkeit, Kalkül
							\a SQL (Datendefinition, Datenmanipulation, Anfragen), Sichten, Domänen, SQL-Erweiterungen
							\a Datenbankdesign, Umsetzung ER-Modell in relationales Modell
							\a Funktionale Abhängigkeiten, Normalformen, Normalisierung
							\a Einbettung von Programmiersprachen in SQL (Imperative Sprachen, Trigger), Einbettung von SQL in Programmiersprachen (Cursor-Konzept)
							\a Transaktionskonzepte (Atomar, Konsistent, Isolation, Dauerhaftigkeit), Serialisierung, Sperrkonzepte, Logging, Recovery
							\a Sicherheitsmodelle, Rechtevergabe, Rechtevergabe bei Sichten
							\a Anfrageoptimierung (Index, Analysetools), Betrieb, Wartung',
						'Datenbanksysteme zum konsistenten Verwalten von Daten für Anwendungen im Ein- und Mehrbenutzerbetrieb sind aus der Praxis nicht mehr wegzudenken und werden von jedem Informatiker betrieben und genutzt.
							\a Modellieren, Erstellen von Entity-Relationship-Modellen und Umsetzung in relationale Datenmodelle
							\a Datenunabhängigkeit, Relationenmodell und -algebra, Transaktionskonzept verstehen und einsetzen können
							\a Kenntnisse in SQL zur Datendefinition, Datenmanipulation und für Anfragen nutzen, relationalen Datenbanken von Programmiersprachen aus nutzen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Praktikumsprojekt, Bearbeitung der Übungsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/datenbanken.png');

INSERT INTO modul VALUES('7160','Digitale Bildverarbeitung','5','MI',
						'\a Lineare Algebra, Analysis: Funktionen, Integralrechnung, Vektoren und Matrizen
							\a Programmieren 1,2: Programmierkenntnisse',
						'Eigenschaften diskretisierter Bilder Grundlagen der Videotechnik
							\a Analyse-Tools zur Bewertung digitaler Bilder
							\a Lineare und nichtlineare Filterungen
							\a Strukturanalyse
							\a Lineare und nichtlineare Bildentzerrungen
							\a Transformationen von Hough und Radon
							\a Bildgebende Verfahren für spezielle Anwendungen
							\a Farbmetrik
							\a Orthogonale Basistransformationen
							\a Bilddatenkomprimierung
							\a Morphologie',
						'Die digitale Bildverarbeitung ist in flexiblen Fertigungslinien wesentliche Voraussetzung für eine automatisierte Prozesssteuerung, Prozessanalyse und Qualitätssicherung. Wesentliche Bestandteile sind die Verbesserung der Bildqualität und die Segmentierung relevanter Bildbereiche. Sie wird eingesetzt bei variablen Entscheidungsprozessen (z.B. Biometrie, Verkehrssteuerung und -lenkung). Stark expandierende Einsatzgebiete stellen medizinische Assistenz- und Diagnosesysteme dar.
							\a Digitale Bilder anhand statistischer Größen 1. und 2. Ordnung bewerten
							\a Standardisierte Analyseverfahren auf Bilder anzuwenden
							\a Interaktionsarme Verfahren auf der Basis von a-priori-Wissen zu entwickeln',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben/Projekt (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7560','E-Business: Standards und Automatisierung','5','GI',
						'\a Programmieren 1, 2: Imperatives und objektorientiertes Programmieren
							\a Auszeichnungssprachen, Programmieren: XML-Grundlagen, Verarbeitung von XML-Dokumenten',
						'\a Technische Grundlagen: XML DTDs, Namensräume, XML Schema
							\a Geschäftsprozess-Szenario, Übersicht fachliche und technische Standards
							\a Organisatorische Voraussetzungen und Hindernisse
							\a Ident-Systeme und Auto-ID Verfahren
							\a Klassifikationsstandards, Katalogdaten-Standards
							\a Transaktionsstandards, insbesondere UN/EDIFACT
							\a ebXML und RosettaNet - Automatisierung ganzer Geschäftsprozesse
							\a Reliable Messaging, techn. Grundlagen, Mailboxing, Messaging, File Transfer
							\a Mapping
							\a Umfeld im praktischen Einsatz: Monitoring und Alarmierung, Tracking und Tracing
							\a Simulation logistischer Prozesse im Rahmen eines Planspiels',
						'Heutige Unternehmen nutzen nur einen Bruchteil der E-Business-Möglichkeiten. Eine wichtige Ursache: Mangelnde Schlüsselqualifikationen der beteiligten Fachkräfte. Dieser Kurs strebt an, einige dieser Lücken gezielt zu schließen.
							\a Die Fähigkeit, die heutige Vielfalt technischer wie fachlicher E-Business-Standards zu überblicken, ihre Abhängigkeiten voneinander zu erkennen und ihre Bedeutung einzuschätzen.
							\a Die Kenntnis organisatorischer Abhängigkeiten und Voraussetzungen für erfolgreiche und standardkonforme technische Umsetzungen.
							\a Die Fähigkeit, unternehmensübergreifende Geschäftsprozesse nach internationalen Standards technisch wie organisatorisch zu implementieren (Schwerpunkt)',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vor- und Nachbereitung Vorlesung (60 h)
							\a Bearbeitung der Praktikumsaufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7570','Echtzeit-Computergrafik','5','GI',
						'\a Computergrafik: Grundkenntnisse der Computergrafik und über GDV-Systeme
							\a Programmieren 1,2: imperatives und objektorientiertes Programmieren',
						'\a Grafikbibliotheken und APIs für Echtzeitanwendungen
							\a Echtzeitgrafiksysteme als Softwaresysteme - Eigenschaften und Erstellungsprozesse
							\a Game Engines und Softwaretechnik
							\a Beispiele von Echtzeitgrafiksystemen
							\a Echtzeitfähigkeit von Renderingansätzen
							\a Verhaltenssimulation in Echtzeit
							\a Anwendungen von Echtzeitgrafiksystemen',
						'Komplexe, hoch-interaktive, echtzeitfähige und Grafik-lastige Softwaresysteme haben eine hohe wirtschaftliche Bedeutung gelangt - Computerspiele sind ein Modellbeispiel dafür. Die Studierenden sollen
							\a komplexe Echtzeit-Grafiksysteme entwerfen und realisieren können
							\a dabei auch entsprechende Programmbibliotheken einsetzen und softwaretechnisch in das System integrieren können
							\a die wichtigsten Datenstrukturen und Algorithmen zur Grafikbeschleunigung kennen, in ihrer Wirkung beurteilen und in einer geeigneten Kombination einsetzen können',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum und Projekt (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('1230','Einführung in die Gestaltung','1','-',
						'',
						'\a Medien und Kommunikation (Kommunikationsmodelle; Möglichkeiten der medialen Vermittlung von Botschaften; Medien-, zielgruppen- und absenderspezifische Gestaltung)
							\a Gestaltung (Aufgabe und Nutzen, Gestaltungsdisziplinen, Gestaltungsmittel, Gestaltgesetze, Wahrnehmung, Beurteilungskriterien)
							\a Schrift und Typografie (Schriftarten, Schriftauswahl und -kombination, Satz)
							\a Farbe (Farbwahrnehmung und- empfinden, Farbreproduktion, Farbe als Kommunikationsmittel)
							\a Komposition und Layout (Kompositionsregeln, Formate, Layout- und Gestaltungsraster)
							\a Grafik (Scribble, Layout, grafische Abstraktions- und Visualisierungsmöglichkeiten)
							\a Standbild (Fotografische Grundsätze, Bildsprache, Bildgestaltung)
							\a Corporate Design (Definition und Abgrenzung, Aufgabe, Medienspektrum, Gestaltungskonstanten)
							\a Ideenfindung und Realisation (Gruppenarbeit, Tagesprojekt)
							\a Kurzreferate zu gestalterischen Themen (Gruppenarbeit)
							\a Grundlegende Arbeitstechniken in Bildbearbeitung und Grafikerstellung unter Anwendung standardisierter Gestaltungssoftware. Umgang mit digitalen Aufnahme- und Eingabemedien',
						'Medieninformatiker müssen Aufgaben und Nutzen von Mediendesign verstehen. Voraussetzung dafür ist die praktische und theoretische Auseinandersetzung mit grundlegenden Gestaltungstechniken und -regeln. Am Ende des Semesters sollen die Studierenden
							\a Design-Lösungen nach objektiven Kriterien beurteilen können,
							\a medienunabhängige gestalterische Grundkenntnisse besitzen,
							\a den Ablauf des kreativen Gestaltungsprozesses verstehen,
							\a einfache Gestaltungsaufgaben lösen können,
							\a standardisierte Gestaltungssoftware einsetzen können.',
						'\a Anwesenheit Vorlesung, Übung, Seminar (90 h)
							\a Vorbereitung und Nachbereitung Vorlesung (45 h)
							\a Zusätzliche Bearbeitung der Übungsaufgaben (105 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'8 cp, 240 h 4 SWS',
						'/modulhandbuch/img/module/gestaltung1.png');

INSERT INTO modul VALUES('1110','Einführung in die Medieninformatik','1','-',
						'',
						'\a Einführung (Informatik und das tägliche Leben, die Informatik und ihre Teilgebiete, geschichtlicher Überblick, gesellschaftliche Auswirkungen)
							\a Grundbegriffe (Begriffe der Mathematik, System, Abstraktion und Modell, Information und ihre Repräsentation, formale Sprachen, Graphen und Bäume, Algorithmen)
							\a Aussagenlogik
							\a Repräsentierung von Information in Rechensystemen (Bitfolgen, Zahlensysteme, Zahlendarstellungen, Arithmetik, Zeichenketten, Ein-/Ausgabe)
							\a Grundlagen der Codierung (Einführung, Blockcodes, Codes variierender Länge, komprimierende Codes, fehlererkennende und -korrigierende Codes)
							\a Architektur von Rechensystemen (Einführung und Überblick, von-Neumann-Architektur, Prozessorarchitektur, Systemarchitektur, Gerätekunde)
							\a Arbeiten am Rechner (Hilfesystem, Umgang mit dem Dateisystem, wichtige Kommandos, Editoren, Kommandointerpreter, Beispiel: Linux)',
						'Grundlegende Modelle, Methoden, Verfahren und Techniken kennen lernen, die bei der Konstruktion informationstechnischer Systeme in Hardware und Software Verwendung finden
							\a Grundlegende Arbeitstechniken im Umgang mit Rechnern erlernen
							\a Die Lehrveranstaltungen des Studienplans einordnen können
							\a Spaß am Informatik-Studium bekommen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/einf-informatik.png');

INSERT INTO modul VALUES('3130','Entwicklung interaktiver Benutzungsoberflächen','3','-',
						'\a Programmieren 1, Programmieren 2: Imperatives und objektorientiertes Programmieren
							\a Grundlagen der Gestaltung: Kommunikationsmodelle, Farbe, Komposition und Layout',
						'\a Übersicht und Klassifikation aktueller Trends interaktiver Anwendungen
							\a Grundprinzipien technischer Kommunikationssysteme, Visuelle Wahrnehmung, Farben, Wahrnehmungsmodelle
							\a Entwicklungsprozess interaktiver Anwendungen
							\a Konzeption interaktiver Anwendungen (Content Model, Wireframes, Flow-Charts)
							\a Architektur und Entwurfsmuster interaktiver Anwendungen
							\a GUI-Komponenten (Menüstrukturen, Formulare, Dialoge)
							\a Umsetzung von Interaktionsmodellen
							\a Internationalisierung von Anwendungen
							\a Layout-Aufbau und Layout-Definition
							\a Prototyping, User Interface Builder
							\a Testen und Testautomatisierung interaktiver Anwendungen',
						'Bei der Anwendungsentwicklung ist die Konzeption und Umsetzung von Benutzerinteraktionen und Realisierung entsprechender Screenlayouts/Animationen eine typische Aufgabe von Medieninformatiker.
							\a Interaktionssstile einer Aufgabe entsprechend bewerten und auswählen
							\a Graphische Benutzungsschnittstellen/-komponenten objektorientiert und pattern-basiert realisieren
							\a Realisierung von Benutzerinteraktionen im Rahmen einer interaktiven UI-Anwendung',
						'\a Anwesenheit bei Vorlesungen und Praktikum (60 h)
							\a Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Aufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/eibo.png');

INSERT INTO modul VALUES('5540','Fachseminar BSc','5','-',
						'',
						'\a Selbstorganisation und selbstständiges Erbeiten eines Fachthemas
							\a Wissensmanagement und Literaturstudium
							\a Fachliches Schreiben für die schriftliche Ausarbeitung
							\a Präsentationstechnik und Rhetorik für die Präsentation des Themas
							\a Diskussion im Rahmen der Seminarteilnehmer und betreuenden Dozenten',
						'Selbstständiges Erarbeiten von Inhalten sowie deren verständliche Darstellung von fachlichen Themen sind für den beruflichen Alltag unabdingbar.
							\a Selbstständiges Erarbeiten eines Fachthemas anhand von Fachliteratur und anderen Quellen
							\a Ein Fachthema verständlich darstellen und präsentieren',
						'\a Anwesenheit Seminar (30 h)
							\a Literaturstudium und Einarbeitung in Seminarthema (60 h)
							\a Schriftliche Ausarbeitung und Vorbereitung Präsentation (60 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminar, selbstständiges Arbeiten (2 SWS)',
						'5 cp, 150 h 2 SWS',
						'');

INSERT INTO modul VALUES('7590','Fortgeschrittene Softwaretechnologie','5','GI',
						'\a Softwaretechnik: Analyse, Design-Patterns
							\a Programmieren 1,2 : Gute Programmierkenntnisse in Java
							\a Datenbanksysteme: Gute Kenntnisse über relationale Datenbanken
							\a Web-basierte Anwendungen: Web-Komponenten der Java Enterprise Plattform',
						'\a Überblick Komponententechnologien
							\a Komponenten-Frameworks
							\a Einführung JavaEE-Plattform
							\a Ressourcen-Management und Services von Applikationsservern und Containern
							\a Serverseitige Komponenten, verteilte Objektsysteme, Objektpersistenz, Messaging
							\a Design Patterns
							\a Zugriffskontrolle und Sicherheit',
						'Entwicklung mehrschichtiger "Enterprise"-Web-Anwendungen unter Einsatz von Software-Komponenten.
							\a Analyse einer mehrschichtigen Web-basierten Anwendung
							\a Design unter Einsatz dafür geeigneter Design-Patterns und Entwicklungs-Frameworks
							\a Implementierung und Deployment auf einem geeigneten Anwendungs-Server
							\a Einsatz eines geeigneten CASE-Tools und/oder Entwicklungswerkzeuges',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7190','Funktionale Programmierung','5','MI',
						'\a Programmieren 1,2,3: Programmierkenntnisse',
						'\a Milner Typsystem, Typinferenz
							\a Programme höherer Ordnung
							\a Pattern Matching
							\a List Comprehensions
							\a Typklassen
							\a Polymorphisches Programmieren, Metaprogramme
							\a verzögerte und strikte Auswertung
							\a Monaden als Weg der Integration imperativer Konzepte
							\a dynamische Typen
							\a Modelle der Nebenläufigkeit, Aktoren
							\a semantische Grundlagen über den Lambda-Kalkül
							\a Verifikationstechniken
							\n Zum Einsatz kommende Programmierspachen u.a. können sein: ML, F#, Scala, Haskell, Clean, Erlang',
						'Programme als mathematische Funktionen ohne Seiteneffekte verstehen. Semantik von Programmen erfassen und über Programme formal mathematisch schließen können und Aussagen treffen.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikum (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('2240','Gestaltung elektronische Medien','2','-',
						'\a Einführung in die Gestaltung: Typografie, Komposition und Layout, Grafik, Gestaltungssoftware',
						'\a Überblick: Elektronische Medien (Arten, Anwendungsbereiche)
							\a Überblick: Medienspezifische Anforderungen an die Gestaltung
							\a Konzeption (Kommunikationskonzept, Media-Mix, Detailkonzeption)
							\a Projektphasen (Pre-Phase, Konzeption, Gestaltung, Realisation, Post-Phase)
							\a Corporate Design (medienspezifische Adaption von CD-Vorgaben)
							\a Inhaltliche Gliederung (zielgruppen- und medienspezifische Text- und Bildselektion und -redaktion, Flow-Chart, Storyboard, Production-Board)
							\a Usability (Überblick)
							\a Typografie am Bildschirm (Technische Aspekte, Schriftgrafik, Systemschrift, CSS, Lesbarkeit, Typokonzept)
							\a Farbe am Bildschirm (Technische Aspekte, Farbe als Informationsträger, Farbe als Mittel zur Aufmerksamkeitssteuerung, Farbkonzept)
							\a Layout (Technische Aspekte, Formate, Adaption von Kompositionsregeln, Anordnung von Gestaltungs- und Funktionskonstanten, flexible Layoutraster, CMS-Templates)
							\a Navigation (Navigationskonzepte, Navigationselemente, Navigationshierarchien, Benutzerführung, Interaktionsprozesse)
							\a Content- und Interaktionsdesign (Aufbereitung und Darstellung statischer und interaktiver Inhalte, gestalterische Umsetzung von Formularen und Prozessabläufen)
							\a Informationsgrafik (medienspezifische Visualisierung von Icons, Charts, Plänen)
							\a Überblick: Stand- und Bewegtbild, Animation
							\a Style Guide (Zusammenfassung und Dokumentation des Gestaltungskonzepts)
							\a Präsentation',
						'Eine wichtige Gestaltungsdisziplin für Medieninformatiker ist das Design von Benutzungsoberflächen elektronischer Medien. Dabei werden die im ersten Semester erworbenen grundlegenden Gestaltungskenntnisse vertieft und spezialisiert. Am Ende des Semesters sollen die Studierenden die gestalterische Funktionalität und ästhetische Qualität grafischer User-Interfaces nach objektiven Kriterien beurteilen können.
							\a die Projektphasen eines Gestaltungsprojekts (elektronische Medien) kennen
							\a und eine entsprechende Aufgabenstellung in Gruppenarbeit lösen können
							\a medienspezifische Gestaltungsgrundlagen beherrschen
							\a Entwurfsvarianten begründen und Gestaltungslösungen präsentieren können',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (incl. Referat) (90 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7760','Graphentheorie und Graphenalgorithmen','5','GI',
						'',
						'\a Grundbegriffe: Graph, Untergraph, Wege, Zusammenhang, Isomorphie, Bäume, gerichtete Graphen, bipartite Graphen, Darstellung von Graphen
							\a Komplexität: effiziente Algorithmen und NP-Vollständigkeit
							\a Suchen in Graphen: Tiefensuche, Breitensuche, Topologisches Sortieren
							\a Kreis und Wege: Eulersche und Hamiltonische Kreise, kürzeste Wege, TSP
							\a Bäume: Algorithmen für minimaler Spannbäume
							\a Planare Graphen
							\a Färbungen: Vier-Farben-Satz
							\a Flüsse: Algorithmus von Ford und Fulkerson, maximale Flüsse
							\a Matchings: Grundlagen, Hochzeitsproblem',
						'Studierende mit den grundlegenden Konzepten und Begriffen der Graphentheorie vertraut machen. Kenntnisse von Algorithmen für Graphen. Anwendungsmöglichkeiten der Graphentheorie für praktische Aufgabenstellungen.
							\a Gewinnung eines grundlegenden Überblicks über Anwendungen der Graphentheorie in der Informatik
							\a Möglichkeiten und Grenzen von Graphenalgorithmen
							\a Eine konkrete Problemstellung aus dem Aufgabengebiet eigenständig bearbeiten',
						'\a Bearbeitung Praktikumsaufgaben (120 h)
							\a Vor- und Nachbereitung Vorlesung (60 h)
							\a Anwesenheit Vorlesung und Praktikum (120 h)',
						'\a Praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7600','Graphisch-Interaktive Systeme','5','GI',
						'\a Programmieren 1,2: Programmierkenntnisse
							\a Copmutergrafik: Grundkenntnisse der generativen Computergrafik und über GDV-Systeme',
						'Dieses Modul, der sich auf künftige aktuelle Entwicklungen bezieht, kann naturgemäß keine vorab festgelegten Lehrinhalte haben.',
						'Das Gebiet der Computergrafik befindet sich nach wie vor in einer sehr dynamischen Entwicklung. Interaktive Grafiksysteme spielen hierbei eine besonders große Rolle: Auf Grund der gestiegenen Hardwareleistung kann 3D-Grafik zunehmend zur Gestaltung anspruchsvoller Benutzerschnittstellen herangezogen werden. Ziel dieses Moduls ist es, die Studierenden ausführlich in Themen aus diesen Gebieten einzuführen und durch ein größeres Projekt zu eigener Entwicklungsarbeit zu befähigen.',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('1450','Grundlagen der Betriebswirtschaftslehre','1','-',
						'',
						'\a Grundbegriffe betriebswirtschaftlicher Analyse: Kennzahlen, Grundfunktionen, Produktionsfaktoren
							\a Organisation des Betriebes: Aufbau- und Ablauforganisation
							\a Fertigung: Fertigungsverfahren, Fertigungskosten
							\a Investition: statische und dynamische Investitionsrechnungsmethoden
							\a Rechnungswesen: Kostenarten-, Kostenstellen-, Kostenträgerrechnung.',
						'Informatiker/-innen brauchen in einem besonders turbulenten wirtschaftlichen Umfeld mit hohen Innovationsraten, wirtschaftlichen Risiken und Kundenansprüchen betriebswirtschaftliche Kenntnisse und Fähigkeiten:
							\a wirtschaftliche Grundbedingungen und Zusammenhänge der betrieblichen Aktivitäten beurteilen,
							\a Kosten von Projekten abschätzen und kontrollieren
							\a Investitions- und Projektkalkulationen durchführen',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vor- und Nachbereitung, Literaturstudium (60 h)
							\a Bearbeitung der Aufgaben (30 h)',
						'\a Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7740','Internet-basierte Informations- und Kommunikationsysteme','5','GI',
						'\a Rechnernetze und Netzwerkprogrammierung: Grundlagen Rechnernetze und Netzwerkprogrammierung',
						'\a Grundlagen Internet-basierter Kommunikationssyteme
							\a Sprach-/Video-Kommunikationsdienste
							\a Zentralisierte und dezentrale (P2P) Kommunikationstechnologien
							\a Übertragung von Medienströmen in IP-Netzen: Streaming, Protokolle
							\a Signalisierung, Sitzungsbeschreibung und -management, Fehlerbehandlung
							\a Kommunikationssicherheit
							\a Serverkomponenten für Kommunikationsdienste
							\a Konzepte Internet-unterstützter Zusammenarbeit
							\a Konzepte und Frameworks für CSCW (Computer Supported Cooperative Work) Anwendungen',
						'Das Internet stellt eine flexible und breit verfügbare Kommunikations-Infrastruktur zur Verfügung, die eine effektive Unterstützung bei Kommunikation, Koordination und Zusammenarbeit räumlich verteilter Gruppen ermöglicht. Ein gutes Verständnis der Konzepte, Anwendungsmöglichkeiten und Grenzen Internet-basierter Informations-, Kommunikations- und Kollaborationssysteme sowie die Fähigkeit zu deren Planung, Beurteilung und praktischer Realisierung eröffnet eine Vielzahl relevanter beruflicher Einsatzmöglichkeiten.
							\a Verständnis für die Funktionsweise Internet-basierte Kommunikationsdienste (z.B. VoIP, Instant Messaging)
							\a Beurteilung und Planung IP-basierter Kommunikationssysteme
							\a Formen und Konzepte rechnergestützter Kollaboration verstehen und auf konkrete Anwendungszenarien übertragen
							\a einschlägige Serverdienste / Frameworks praktisch nutzen
							\a eigene Kommunikations- und Kollaborationsanwendungen für ein konkretes Szenario planen und realisieren',
						'\a Teilnahme an Lehrveranstaltungen (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Praktikumsaufgaben / -projekt (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7210','Künstliche Intelligenz','5','MI',
						'\a Programmieren 1,2: Imperatives und objektorientiertes Programmieren, strukturierte Programmierung
							\a Algorithmen und Datenstrukturen: Entwurf und Bewertung von Algorithmen, dynamischer Datenstrukturen, Bäume, Suchverfahren',
						'\a Überblick zu Anwendungsgebieten der künstlichen Intelligenz
							\a Wissensrepräsentation und Inferenz, Semantische Netze
							\a Generiere-und-Teste-Verfahren, Suchverfahren
							\a Prädikatenlogik, Regeln und Regelverarbeitung, Wissensmodellierung
							\a Grundlagen zu Prolog
							\a Frames und Frameverarbeitung
							\a Numerische/Symbolische Beschränkung und Propagierung
							\a Natürliche Sprache, Spracherkennung, Syntaktische Analyse, Semantik
							\a Maschinelles Lernen, Genetische Algorithmen, Neuronale Netze
							\a Bilderkennung, Tiefe und Orientierung, Objekterkennung',
						'Methoden der künstlichen Intelligenz finden zunehmend breiteren Einsatz bei Datenbankanwendungen, Optimierungsfragestellungen, automatisierten Problemlösungen und in der Automatisierung.
							\a Methoden der künstlichen Intelligenz insbesondere auch im Vergleich zu herkömmlichen Verfahren bewerten und an Beispielen einsetzen
							\a Geeigneter Repräsentationen verwenden können
							\a Grundlegende Anwendungen mit Maschinenlernen und Bilderkennung erstellen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('2350','Lineare Algebra','2','-',
						'',
						'Die Modellbildung und deren Analyse fordert von den Informatikern den sicheren Umgang mit Vektoren und linearen Abbildungen
							\a Beherrschung der Matrizenrechnung
							\a Lösen von linearen Gleichungssystemen
							\a Umgang mit komplexen Größen',
						'\a Rekursion und das Prinzip der vollständigen Induktion
							\a Geometrische Vektoren
							\a Kartesische Koordinaten
							\a Winkelfunktionen und Skalarprodukt
							\a Die komplexen Zahlen
							\a Vektorrechnung im dreidimensionalen Raum (Koordinaten, Winkel, Skalarprodukt, Norm, Vektorprodukt)
							\a Der allgemeine n-dimensionale Vektorraum
							\a Lineare Abbildungen und Matrizen
							\a Lineare Gleichungssysteme (das Gauß''sche Eliminationsverfahren, Lösbarkeitskriterium, die Struktur der Lösungsmenge)
							\a Die Inverse einer quadratischen Matrix
							\a Die Determinante einer Matrix
							\a Das Rechnen mit Matrizen
							\a Cramersche Regeln
							\a Linearkombination, Basis und Dimension
							\a Eigenwerte und Eigenvektoren
							\a Übergang von einem Koordinatensystem zu einem anderen, Basiswechsel',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Übungsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/lineareAlgebra.png');

INSERT INTO modul VALUES('3360','Mathematik für Informatiker','3','-',
						'\a Analysis: Funktionen mit einer und mehreren Variablen, Potenzreichenentwicklung
							\a Lineare Algebra: Vektorräume, Matrizenrechnung, lineare Abbildungen, Determinanten, lineare Gleichungssysteme',
						'\a Grundlegende Beweisverfahren (Direkt, Indirekt, Widerspruchsbeweis, Gegenbeispiel, Induktion)
							\a Fehlerrechung
							\a Interpolation und Approximation von Daten (Punktwolken)
							\a Große Gleichungssysteme (ausnutzen von Bandstruktur, dünn besetzte Matrizen, ...)
							\a Least Square und Least Norm Probleme (Singulärwertzerlegung, ....)
							\a Iterative Lösungsverfahren (für lineare und nicht lineare Probleme)
							\a Grundlagen Kombinatorik (Binomialkoeffizienten, Urnenmodell, ...)
							\a Bedingte Wahrscheinlichkeiten
							\a Verteilungsfunktionen und Dichte (Binomialverteilung, ...)
							\a Grundlagen der deskriptiven Statistik',
						'Für die Informatik wichtige über den Stoff der Vorlesungen Lineare Algebra und Analysis hinausgehende mathematische Begriffe und Methoden beherrschen
							\a Die wichtigsten Beweisverfahren sicher einsetzen
							\a Stochastische und statistische Methoden einsetzen
							\a Grundlegende Verfahren aus der Numerik anwenden',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (40 h)
							\a Bearbeitung der Übungsaufgaben (50 h)',
						'\a Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/mathe3_1.png');

INSERT INTO modul VALUES('4260','Mensch-Computer-Interaktion','4','-',
						'\a Gestaltung elektronischer Medien: Layout, Navigation, Content- und Interaktionsdesign
							\a Entwicklung interaktiver Benutzungsschnittstellen: Realisierung von Benutzungsoberflächen',
						'\a Menschliche und betriebswirtschaftliche Ziele, Messverfahren und ergebnisorientierte Auswertung von Benutzbarkeit
							\a Der Mensch in MCI (physische und motorische Fähigkeiten, kognitive und perzeptorische Fähigkeiten, Persönlichkeit, Kultur, Region, Behinderungen)
							\a Interaktionstheorien und Prinzipien (GOMS-Modell, Aktionsstufenmodell, Objekt-Aktions-Interface), benutzerzentrisches Design
							\a Grundsätze ergonomischer Dialoggestaltung, Ergonomierichtlinien (DIN 9241/10)
							\a Entwicklung interaktiver Systeme (Benutzbarkeit im Entwicklungsprozess, Systemanalyse/design, Qualitätssicherung), Toolunterstützung für Erstellung graphischer Oberflächen/Benutzerdialogen
							\a Inhaltliche Ergonomie, Didaktik und Hierarchieebenen, Flow-Chart
							\a Medien-, zielgruppen- und anbieterspezifische Gestaltung (Web, GUI)
							\a Umsetzung Oberflächendesign (Navigations-, Layout-, Farb- und Typkonzept, Gestaltungskonstanten)
							\a Umsetzung Interaktionsdesign (Formulare, interaktive Prozesse, Benutzerführung durch gestalterische Maßnahmen, Icons und Symbole)
							\a Benutzbarkeitstests planen (Rahmenbedingungen, Struktur, Ziele, Testplan)
							\a Benutzbarkeitstests durchführen (Rollen, Richtlinien, Testumgebung, Dokumentation, Skripte)
							\a Benutzbarkeitstests auswerten (Analyse)
							\a Ergänzungen (Expertenreviews, Cognitive Walkthroughs, Akzeptanztests)',
						'Einfach und intuitiv bedienbare Oberflächen müssen attraktiv und funktional gestaltet werden. Es besteht Bedarf in der Praxis an Kenntnissen zum interdisziplinären Beurteilen, Gestalten, Implementieren und Testen von Benutzeroberflächen.
							\a Benutzerinteraktionen für Anwendungen gemäß menschlichem Kommunikations- und Wahrnehmungsverhaltenbasierend auf kognitiven Modellen entwerfen und gemäß Ergonomierichtlinien umsetzen
							\a Oberflächen- und Interaktionsdesign differenziert und gezielt einsetzen und bewerten
							\a Benutzbarkeitstests planen, durchführen und auswerten',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (20 h)
							\a Bearbeitung der Aufgaben (70 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/mmk.png');

INSERT INTO modul VALUES('7220','Methoden und Anwendungen der Computergrafik','5','MI',
						'\a Programmieren 1,2: Programmierkenntnisse
							\a Computergrafik: Grundkenntnisse der generativen Computergrafik und über GDV-Systeme',
						'Naturgemäß lassen sich Inhalte hier nur beispielhaft aufführen, da dieser Modul ja Entwicklungen aufgreifen soll, die zum Zeitpunkt der Modulbeschreibung teilweise noch nicht im Einzelnen absehbar sind.
							\a Globale Beleuchtungsmodelle und Echtzeit-Raytracing
							\a Physikbasierte Animation',
						'Das Gebiet der Computergrafik (Synthese und Analyse) befindet sich nach wie vor in einer sehr dynamischen Entwicklung. Einige Paradigmenwechsel, wie z.B. die Ablösung des lokalen Beleuchtungsmodells durch Echtzeit-Raytracing sind bereits absehbar, andere werden in der mittleren Zukunft hinzukommen. Dieser Modul soll die wichtigen neuen Entwicklungen aufnehmen, so dass die Studierenden
							\a Methoden und Anwendungen kennenlernen, die in naher Zukunft am Markt eingeführt werden
							\a Methoden, Hard- und Software anwenden können, die zur Zeit der Durchführung des Moduls gerade neu am Markt eingeführt wurden',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikum (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7610','Mobile Computing','5','GI',
						'\a Programmieren 1,2: Kenntnisse in Java',
						'\a Einführung (Mobilität, mobile Endgeräte, Anwendungsszenarien)
							\a Mobilfunksysteme (GSM, UMTS, ...)
							\a Plattformen für mobile Dienste (Hardware, Betriebssysteme, Middleware)
							\a Anwendungsentwicklung auf mobilen Geräten
							\a Ressourcenmanagement in mobilen Systemen
							\a Sicherheit für mobile Systeme und Anwendungen
							\a Beispielhafte aktuelle Anwendungen',
						'Mobile Computing ist die Weiterentwicklung des Personal Computing hin zu einer offenen, verteilten und dynamischen Technologie, die moderne Telekommunikation, mobile, leistungsfähige Endgeräte mit traditionellen Strukturen des Internets und verteilten Software-Systemen verbindet. Ziel dieses Moduls ist es, dass die Studierenden
							\a die Besonderheiten und Randbedingungen des mobile Computing verstehen und auch quantitativ abschätzen können,
							\a darauf zugeschnittene Lösungen der Systemarchitektur und der Anwendungsentwicklung kennen lernen
							\a und diese Kenntnisse in der Erstellung eines eigenen umfangreicheren Projekts zur Lösung eines konkreten Problems praktisch anwenden können.',
						'\a Anwesenheit Seminar und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung Vorlesung (60 h)
							\a Bearbeitung der Praktikumsaufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7750','Multimediale Gestaltung und Interaktion','5','GI',
						'\a Einführung in die Gestaltung: Typografie, Komposition und Layout, Grafik, Farbe
							\a Gestaltung elektronischer Medien: Navigation, Content- und Interaktionsdesign
							\a Mensch-Computer-Interaktion: Benutzbarkeitstests planen, durchführen, auswerten',
						'\a Wechselnde praxisbezogene (fiktive oder reale) Projekte mit multimedialem Anspruch (z.B. B2B, B2C, Edutainment, Infotainment, Schulung, Information, Bedienung und Steuerung, Shop, Verwaltung, Software) und Planspielcharakter
							\a Briefing
							\a Recherche, Problemanalyse
							\a Rebriefing und Angebotsphase
							\a Zeit- und Budgetplanung
							\a Thematische Gliederung, Projektkonzeption
							\a Konzeption von Einzelmedien, Media-Mix
							\a Entwurf Programmstruktur
							\a Entwurf und Konzeption von GUI/Benutzungsoberflächen
							\a Gestaltungskonstanten
							\a Navigationssystematik
							\a Typografie- und Farbkonzept
							\a Informationsdesign
							\a Präsentation
							\a Gestaltung und Organisation von Assets (Grafik, Bild, Text, Ton)
							\a Style Guide
							\a Technische Feinspezifikation
							\a Technische Realisation und Implementierung
							\a Testing',
						'Neben dem Kennenlernen und Gestalten einzelner Medienbausteine in den vorhergehenden Semestern ist die modellhafte Durchführung eines komplexen, mehrschichtigen Projektes unter Berücksichtigung medien-, absender- und zielgruppenspezifischer Gegebenheiten essentiell. Am Ende des Semesters sollen die Studierenden:
							\a Komplexe gestalterische Aufgabenstellungen erfassen, analysieren und multimedial lösen können
							\a Design als Mittel zur Problemlösung verstehen
							\a Interaktivität verstehen und gezielt einsetzen können
							\a Interdisziplinär projekt- und teamorientiert arbeiten können
							\a alle wichtigen Projektphasen kennen
							\a Konzepte und Entwürfe technisch realisieren und funktional überprüfen können
							\a objektive Beurteilungskriterien anwenden können',
						'\a Anwesenheit Seminar und Projekt (90 h)
							\a Vor- und Nachbereitung Projekt und Seminar (20 h)
							\a Bearbeitung der praktischen Aufgaben (190 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Projekt (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('6100','Praxisprojekt','6','-',
						'',
						'Praktische Tätigkeit mit deutlichem Informatik-Schwerpunkt, z.B.
							\a Durchführung von Anforderungsanalysen, Softwareentwurf, Programmierung
							\a Datenbankentwurf und -implementierung
							\a Realisierung von Web-Anwendungen
							\a Verarbeitung von Graphikdaten, Visualisierung Rahmenbedingungen
							\a Kürzere tägliche Arbeitszeiten als ein halber Tag sind nicht erlaubt.
							\a Das gesamte Praktikum ist innerhalb von 9 Monaten abzuleisten. Krankheits- und andere Ausfallzeiten zählen dabei nicht mit.
							\a Das Praxisprojekt muss bei einer Praktikumsstelle absolviert werden.
							\a Über das Praxisprojekt ist ein Bericht von mindestens 17 Seiten anzufertigen.
							\a Abschlussgespräch mit dem hochschulseitigen Betreuer über die Praktikumsinhalte.',
						'Das Praxisprojekt bietet den Studierenden die Möglichkeit, ihre in mehreren Semestern an der Hochschule erworbenen fachlichen Fähigkeiten in der Praxis zu erproben und zusätzlich wichtige Kompetenzen im außerfachlichen Bereich zu erwerben. Es spielt daher im Rahmen einer praxisorientierten und arbeitsmarktgerechten Ausbildung sowie zur Persönlichkeitsbildung eine zentrale Rolle.
							\a Orientierung im angestrebten Berufsfeld
							\a Erwerb praktischer Kenntnisse und kennen lernen berufstypischer Arbeitsweisen
							\a Kennen lernen technischer und organisatorischer Zusammenhänge, die für das Berufsfeld typisch sind
							\a Beteiligung am Arbeitsprozess entsprechend dem Ausbildungsstand
							\a Praktische Ausbildung an fest umrissenen, konkreten Projekten',
						'\a Praktikum (420 h)
							\a Vor-/Nachbereitung außerhalb der Praktikumsstelle (30 h)',
						'\a keine Bewertung (100%)',
						'\a Praktikum',
						'15 cp, 450 h 0 SWS',
						'');

INSERT INTO modul VALUES('1120','Programmieren 1','1','-',
						'',
						'\a Einführung (Softwareentwicklungszyklus, Algorithmus, Programm, Geschichte der Programmiersprachen)
							\a Syntax und Semantik (Backus-Naur-Form, Syntax-Diagramme, Semantikdarstellung)
							\a Einfache Sprachkonstrukte und Programmaufbau (Applikation, Applet, Ein- und Ausgabe, Kommentare)
							\a Einfache Datentypen, Literale, Variablen, Konstanten
							\a Operatoren und Ausdrücke (Vorrang, Assoziativität)
							\a Graphische Darstellung von Algorithmen (Struktogramme)
							\a Kontrollstruktur – Sequenz, Verzweigung
							\a Kontrollstruktur – Schleifen, Methoden
							\a Arrays (Referenzdatentypen, Deklaration, Instanziierung, Initialisierung)
							\a Grundlagen Klassen (Definition, UML-Darstellung, Beispiele)
							\a Grundlagen Objekte (Deklaration, Instanziierung, Initialisierung)
							\a Verwendung von Objekten (Standard-Klassen, Eigene Klassen)',
						'Grundlagen des Algorithmenentwurfs und der Programmierung
							\a Eine konkrete Programmiersprache, deren Syntax und Eigenschaften für Programmieraufgaben einsetzten
							\a Aufgabenstellungen strukturieren und mit prozeduralen Programmierung lösen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (45 h)
							\a Bearbeitung der Praktikumsaufgaben (105 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'7 cp, 210 h 4 SWS',
						'/modulhandbuch/img/module/programmieren1.png');

INSERT INTO modul VALUES('2130','Programmieren 2','2','-',
						'\a Programmieren 1: imperatives Programmieren',
						'\a Vererbung
							\a Abstrakte Klassen und Interfaces
							\a Objektorientierte Modellierung (Polymorphie, Objektbeziehungen, Wrapper-Klassen, Package-Konzept)
							\a Ausnahmebehandlung (Exceptions, Assertions)
							\a Java I/O-API
							\a Java Collection-Framework
							\a Generische Klassen
							\a Grundlagen der GUI-Programmierung',
						'Ausbau der bisherigen Fertigkeiten und Techniken des Programmierens:
							\a Objektorientierte Paradigmen aufgabengerecht einsetzen
							\a Programmieraufgaben in einer konkreten Programmiersprache objektorientiert umsetzen
							\a Umfangreichen, genormten Standard Bibliotheken verwenden',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/programmieren2.png');

INSERT INTO modul VALUES('3140','Programmieren 3','3','-',
						'\a Programmieren 1, 2: Imperatives und objektorientiertes Programmieren
							\a Algorithmen und Datenstrukturen: Listen, Mengen, Wörterbücher, Hashing',
						'\a Imperatives Programmieren in der systemnahen Programmiersprache C
							\a Zeiger, Speicherverwaltung in systemnahen Programmiersprachen
							\a Modularisierung, Standard-Bibliotheken, Makroprogrammierung
							\a Programmerstellungswerkzeuge und Tools für C und ähnliche Sprachen
							\a Paradigmen höherer Programmiersprachen am Beispiel Python
							\a Integrierte Datenstrukturen (Liste, Tupel, Wörterbuch)
							\a Mächtige Kontrollstrukturen, schlanke Syntax, dynamische Typisierung
							\a Objektorientierung, Ausnahmen und Modularisierung
							\a Funktionale Primitive, Generatoren
							\a Nutzen von integrierten Funktionalitäten und Bibliotheken und Frameworks
							\a Nebenläufiges Programmieren, Thread-Programmierung, Synchronisation, Sperren, Benachrichtigungen',
						'Sprachparadigmen und Sprachebenen Aufgabe entsprechend einsetzen, um Anwendungen und Infrastruktursoftware effizienter, kompakter, mit geringerem Fehlerpotential und wartungsfreundlicher zu realisieren.
							\a Anwenden verschiedener Sprach-Paradigmen (imperativ, funktional, logisch) und Sprachebenen (high-level/low-level)
							\a Umsetzung anhand verschiedener praxisrelevanter Vertreter entsprechender Programmiersprachen, Integration verschiedener Paradigmen
							\a Nutzen von integrierten Funktionalitäten und Bibliotheken in höheren Programmiersprachen',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Praktikumsprojekt, Bearbeitung der Übungsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/programmieren3.png');

INSERT INTO modul VALUES('7230','Programmieren in C++','5','MI',
						'\a Programmieren 1, 2: imperatives und objektorientiertes Programmieren, Kontrollstrukturen, Datentypen
							\a Programmieren 3: Kenntnisse der Sprache C
							\a Algorithmen und Datenstrukturen: Suchen und Sortieren, Listen, Bäume, Graphen, Hashing',
						'\a Datenstrukturen (Typen, Deklarationen, Zeiger, Referenzen, Felder, Strukturen)
							\a Kontrollstrukturen (Ausdrücke, Anweisungen), Funktionen (Argumentübergabe, Überladen, Default-Argumente, Zeiger auf Funktionen)
							\a Organisation der Quellen, Namensräume, Kompilieren und Linken, Initialisieren
							\a Klassen und Instanzen (Members, Zugriffskontrolle), Konstruktoren, Destruktoren, Kopieren, Freispeicherverwaltung
							\a Vererbung, Polymorphismus, Abstrakte Klassen, Mehrfachvererbung, Laufzeittypinformationen
							\a Operatorenüberladung, Templates und generisches Programmieren, Ausnahmen
							\a Standard Template Library (STL): Container, Algorithmen, Iteratoren, Strings, Ströme
							\a Entwicklungsumgebungen, spezielle Bibliotheken',
						'C++ wird für systemnahe Programme von Informatikern eingesetzt und bietet eine große Auswahl spezieller Bibliotheken. Viele existierende Anwendungen und Algorithmen sind in C++ realisiert und werden weiter gewartet und erweitert.
							\a Objekt-Orientierte Programme mit C++ entwerfen und in C++ umsetzen
							\a Vorhandene Bibliotheken auf verschiedenen Plattformen nutzen und erweitern
							\a Systemnahe Bibliotheken in C++ realisieren',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7620','Project - Current Topics in Applied Computer Science','5','GI',
						'',
						'\a Guided exploration of a current topic in applied computer science.
							\a Self-reliant execution of a project with a thematical focus in small groups.
							\a Development of a working application.',
						'Changing requirements demand a flexible response while still developing working solutions is typical in a professional environment.
							\a work independently and gain relevant skills/knowledge
							\a develop a practical solution for a demanding problem at hand',
						'\a Anwesenheit Seminar und Projekt (90 h)
							\a Vor- und Nachbereitung Projekt und Seminar (60 h)
							\a Bearbeitung der praktischen Aufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Projekt (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7630','Projekt zu aktuellen Themen der angewandten Informatik','5','GI',
						'',
						'\a Begleitete Erarbeitung von aktuellen Themen der angewandten Informatik.
							\a Eigenständige Durchführung von Projekten mit spezifischen Themenschwerpunkt in kleinen Gruppen.
							\a Praktische Realisierung einer funktionierenden Anwendung.',
						'Flexibel auf neue Anforderungen zu reagieren und selbstständig Lösungen zu entwickeln ist typisch im Berufsleben.
							\a Selbstständiges Erarbeiten von Inhalten.
							\a Praktische Umsetzung einer anspruchsvollen Aufgabenstellung.',
						'\a Anwesenheit Seminar und Projekt (90 h)
							\a Vor- und Nachbereitung Projekt und Seminar (60 h)
							\a Bearbeitung der praktischen Aufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Projekt (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('4130','Rechnernetze und Netzwerkprogrammierung','4','-',
						'\a Programmieren 1 2 3: Java, Skriptsprachen
							\a Auszeichnungssprachen: HTML, XML
							\a Mathematik für Informatiker: elementare Kombinatorik und Wahrscheinlichkeitsrechnung',
						'\a Einführung (Grundbegriffe, Entwicklung des Internet)
							\a Schichtenmodelle, insb. das ISO / OSI 7-Schichten-Modell
							\a Anwendungsschicht (ISO/OSI 5-7): Aufgaben, Praxisrelevante Protokolle für verschiedene Zielsetzungen (E-Mail mit SMTP/POP3/IMAP4; Dateitransfer mit HTTP / FTP; Dienste wie DNS etc.)
							\a Einführung in die Netzwerkprogrammierung (Socket-API als Programmierschnittstelle; Stream- / Datagram-Sockets; Beispiele)
							\a Transportschicht (ISO/OSI 4): Aufgaben, Dienste, Protokolle TCP / UDP; Zuverlässigkeit, Stau- und Flußkontrolle bei TCP
							\a Vermittlungsschicht (ISO/OSI 3): Dienste der Vermittlungsschicht; IP; Unterschiede IPv4 / IPv6; Subnetting; CIDR
							\a Routing: Algorithmen zur Wegbestimmung, Protokolle (z.B. RIP, OSPF; BGP); Funktionsweise Router; NAT
							\a Sicherungsschicht (ISO/OSI 2): Aufgaben der Sicherungsschicht; Fehlererkennung und -korrektur; Mehrfachzugriffskontrolle; LAN-Adressierung und ARP; konkrete Beispiele wie Ethernet, IEEE 802.11 WLANs, PPP; Komponenten (Hubs, Switches, Bridges)
							\a Netzwerkplanung und Netzwerkmanagement
							\a Sicherheit in Netzen (Schutzziele und Bedrohungen, Schutzmaßnahmen [z.B. Kryptoverfahren, Paketfilter, Gateways])',
						'Rechnernetze und speziell das Internet mit den darauf aufbauenden Diensten haben sich zu einer zentralen Basistechnologie entwickelt, die in drahtgebundener oder drahtloser Form eine wichtige Grundlage moderner IT-Systeme darstellen. Fundierte Kenntnisse über Konzepte, Aufbau und Einsatz moderner Netzwerktechnologien sind daher von großem Nutzen.
							\a Konzepte und aktuelle Technologien der Rechnervernetzung verstehen und bewerten können
							\a Durchgängiges Verständnis von Aufbau und Funktionsweise insb. des Internet anhand des ISO/OSI-7-Schichten-Modells
							\a Konzeption und Realisierung von Internet-Diensten auf Basis des Socket-APIs',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (45 h)
							\a Bearbeitung der Praktikumsaufgaben (45 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('2460','Recht für Informatiker','2','-',
						'',
						'Es werden die wesentlichen Grundzüge des Privatrechts und die relevanten Rechtsbegriffe erörtert. Hierbei werden für den Informatiker wesentliche grundsätzliche rechtliche Zusammenhänge wie Privatautonomie, Zwingendes Recht, Abstraktionsprinzip, Recht der Kaufleute etc. vermittelt. Darüber hinaus wird die Arbeitsweise des Juristen an praxisorientierten Fällen für den Informatiker dargestellt. Vertragsrechtliche Grundzüge, Grundlagen der Sachmängelhaftung und des Schadensersatzrechtes, Grundzüge des Internet- und des Datenschutzrechts sowie die sich aus der Informatik ergebenden rechtlichen Besonderheiten werden in einem Vertiefungsteil behandelt.',
						'Beherrschung der Grundzusammenhänge des Privatrechtes sowie problembewusstes Erkennen von zivilrechtlichen praxisbezogenen Grundfällen im Arbeitsumfeld eines Informatikers.',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (60 h)
							\a Bearbeitung der Aufgaben (30 h)',
						'\a Klausur oder mündliche Prüfung (100%)',
						'\a Vorlesung (2 SWS)
							\a Übung (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7240','Security','5','MI',
						'\a Analysis Lineare Algebra: Relationen & Abbildungen, Kombinatorik
							\a Automatentheorie und Formale Sprachen: Automatentheorie und Maschinen
							\a Algorithmen und Datenstrukturen: Algorithmen und ihre Komplexität
							\a Rechnernetze: Grundlagen IP Networking
							\a Programmieren 3: Grundkenntnisse C',
						'\a Einführung in die IT-Sicherheit (grundlegende Begriffe, Schutzziele, Schwachstellen, Bedrohungen, Angriffe, Sicherheitsstrategien)
							\a Algebraische Strukturen (Restklassen modulo m) und elementare Zahlentheorie (Primzahlen und Teiler, Euklidischer Algorithmus und Kongruenzen, Hashing)
							\a Spezielle Bedrohungen (Buffer-Overflows, Computerviren und Trojanische Pferde, Man-in-the-Middle-Attacks, Denial-of-Service Angriffe, Passwort-Crack)
							\a Monoalphabetische Chiffren und deren Analyse, differenzielle und lineare Kryptoanalyse
							\a Security Engineering (Bedrohungsanalyse, Risikoanalyse, Schutzbedarfsermittlung, Penetrationstests, Sicherheitsstrategien)
							\a Symmetrische und asymmetrische Verfahren, Betriebsmodi, One-Time-Pad, Schlüsselerzeugung und -austausch
							\a Signaturen und Authentifizierung (Einwegfunktionen und Zero-Knowledge-Protokolle, Digitale Signatur mit RSA / ElGamal, Algorithmen mit Elliptischen Kurven, Message-Authentication-Code)
							\a Technologien (Biometrische Verfahren, Chipkarten zur Zugangskontrolle)
							\a Public-Key-Infrastruktur (öffentliche und geheime Schlüssel, Trust Center, Zertifikate und Zertifikatshierarchien, PKI-Komponenten, Schlüsselmanagement)
							\a Kryptographische Protokolle, Anwendungen (E-Commerce-Sicherheit, elektronische Zahlungssysteme, Copyright & Privacy Protection)
							\a Sicherheit in Netzen (sicherer Zugang [Paketfilter, Proxy-Server, Application-Gateway], sichere Kommunikation und sichere Anwendungsdienste)',
						'Einführung in die mathematischen Grundlagen und Konzepte der klassischen und modernen Kryptologie sowie Grundwissen über deren Algorithmen, Protokolle und Verfahren.
							\a An Fallbeispielen die Ursachen für Problembereiche heutiger IT-Systeme verdeutlichen und grundlegende Sicherheitskonzepte gegenüberstellen
							\a Fundierte Kenntnisse über wirksame Maßnahmen vermitteln, die erforderlich sind, um die vielfältigen Bedrohungen abzuwehren, denen IT-Systeme ausgesetzt sind
							\a Herausstellung der methodischen, systematischen Vorgehensweise bei der Konstruktion und Anwendung sicherer Systeme',
						'\a Anwesenheit Vorlesung und Übung (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Übungsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7250','Selected Topics in Applied Computer Science','5','MI',
						'\a Programmieren 1,2,3: programming skills',
						'\a Contents of course depends on selected topic.',
						'Explore current topics in applied computer science.
							\a Use existing skills to acquire knowledge in new, related topics.
							\a Implement application scenarios using modern concepts and technologies.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben/Projekt (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7640','Service-orientierte Architekturen','5','GI',
						'\a Programmieren 1,2: Programmierkenntnisse',
						'\a Einführung und Terminologie
							\a Service-Orientierung und Abstraktion
							\a Service Contracts
							\a Zustandsmanagement
							\a Message-Exchange Patterns
							\a Service Discovery
							\a Beispiel: Web Services
							\a Service Composition
							\a Wiederverwendbarkeit von Services
							\a Beispiel: Service Component Architecture
							\a Instrumentierung und Monitoring
							\a Service Management und Selbstmanagement
							\a Geschäftsprozess-Management
							\a SOA Governance
							\a Frameworks
							\a Praktikum mit geeigneten SOA-Plattformen',
						'Nach Abschluss des Moduls
							\a kennen die Studierenden Service-orientierte Architekturen und Design-Patterns zu deren Bildung und können diese bewerten,
							\a können sie wiederverwendbare Dienste aus Geschäftsprozessen ableiten,
							\a kennen sie Architekturen zur Bildung von Service-Verbünden aus Diensten und können diese anwenden,
							\a sind sie in der Lage, entprechende Architekturen auf der Basis von Web Services zu realisieren,
							\a kennen sie Methoden zur Instrumentierung von Services und können diese zur Gewinnung von Performance-Kenndaten einsetzen.
							\n Der Modul erweitert die technologischen Kompetenzen, erweitert die fachübergreifenden Kompetenzen in Hinblick auf betriebswirtschaftliche Zusammenhänge, vertieft die Design- und Realisierungskompetenzen in Hinblick auf die Nutzung aktueller Technologien und fördert die kommunikativen Kompetenzen sowie die Projektmanagement-Kompetenz durch Projektarbeit.',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung Praktikum (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7650','Sichere Systeme','5','GI',
						'\a Mathematik für Informatiker : Elementare Grundlagen der Wahrscheinlichkeitsrechnung',
						'\a Einführung (Anliegen, Konzepte und Begriffsdefinitionen)
							\a Risiken und Sicherheitsanforderungen (Sicherheitsrisiken und deren Überführung in konkrete Sicherheitsanforderungen)
							\a Erstellung von Sicherheitskonzepten (Erkennung, Bewertung und Begegnung von Sicherheitsrisiken, Durchführung von Risikoanalysen)
							\a Basismechanismen der Kryptographie (elementare Moduloarithmetik, symmetrische und asymmetrische Kryptomechanismen und ihre Wirkung, Konzept der Einwegfunktion und daraus abgeleiteter Hashfunktionen, Behandlung des Schlüsselaustauschproblems)
							\a Grundlagen der Zuverlässigkeitstechnik (Fehlertoleranz, Verfügbarkeit und Lebensdauer)
							\a Rechnersicherheit (unterschiedliche Identifikations- und Authentifikationsverfahren, wesentliche Zugriffskontrollmethoden, Einsatz von Beweissicherung und Protokollierung, Architekturmaßnahmen und Methoden auf der Hardwareebene sowie im Betriebssystem)
							\a Netzwerksicherheit (Risiken vernetzter Systeme, Problematik der Zugriffskontrolle in Netzen, Firewall-Prinzipien und -Architekturen, besondere Risiken bei Netzübergängen)
							\a Websicherheit (Sicherheitsfunktionen in Betriebssystemen, Web-Servern und Datenbanken)
							\a Sicherheitswerkzeuge und Bewertung der Sicherheit (Prüf-, Test- und Diagnosetechniken)',
						'Studierende mit den grundlegenden Anliegen, Konzepten und Begriffen der Informationssicherheit vertraut machen und einen strukturierten Einstieg in aktuelle Themenstellungen bei der Realisierung von sicheren IT-Systemen geben.
							\a Gewinnung eines grundlegenden Überblicks über alternative Vorgehensweisen zur Erstellung von Sicherheitskonzepten für informationstechnische Systeme
							\a Vermittlung des Wissens über technische Schutzmaßnahmen und Sicherheitskomponenten, die in gegenwärtigen IT-Systemen eingesetzt werden
							\a Eine konkrete Problemstellung aus dem Aufgabengebiet eigenständig bearbeiten',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung Vorlesung (60 h)
							\a Bearbeitung eines Projekts (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS) 
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('4140','Softwaretechnik','4','-',
						'\a Programmieren 1,2,3: Imperative und objektorientierte Programmierung, Skripting
							\a Datenbanken: ER-Modellierung, SQL, Einbettung in Programmiersprachen, DB-Design
							\a Entwicklung interaktiver Benutzungsoberflächen: Architektur und Entwurfsmuster interaktiver Anwendungen, GUI-Programmierung',
						'\a Einführung; Entstehung und Entwicklung der Disziplin "Softwaretechnik"
							\a Phasen der Softwareentwicklung
							\a Vorgehensmodelle (Wasserfall, Spiralmodell; Vergleich)
							\a Agile Prozesse, Eignung / Vor- und Nachteile agiler Prozesse
							\a Beispiel für einen "schwergewichtigeren", strukturierten, inkrementellen und iterativen Softwareentwicklungsprozess
							\a Rolle der Modellierung in der SW-Entwicklung, Sichten
							\a Analysephase (Ziele, Dokumente (insb. Lasten-/Pflichtenheft), Modellierung: Domänen- und Analyseklassendiagramme, ggf. Ablaufmodellierung, Vorgehensweisen; Prototyping; Validierung der Analyseergebnisse)
							\a Sprachelemente der UML: Use-Case-Diagramme, Klassendiagramme, Diagrammtypen zur Ablauf- und Verhaltensmodellierung
							\a Entwurfsphase (SW-Architekturbegriff, Kohäsion/Kopplung, Verantwortlichkeiten, Muster-Begriff; Architektur- / Verteilungs - / Entwurfsmuster; Entwurfsmodellierung; Dokumente der Entwurfsphase; spezielle OO-Fragestellungen)
							\a Wiederverwendung (Arten der Wiederverwendung; Softwarekomponenten)
							\a Einsatz von Modellierungs-Tools
							\a Implementierungsphase',
						'Die Fähigkeit zur Auswahl, Bewertung und praktischen Anwendung von Konzepten und Methoden zur systematischen Entwicklung (großer) Softwaresystemen stellt eine zentrale Qualifikation für Informatiker dar. Dabei sind die Phasen Analyse / Design von grundlegender Bedeutung für das Gelingen eines Softwareprojekts:
							\a Software im Team entwicklen unter Einsatz entsprechender Vorgehensmodelle
							\a Modellieren von Anwendungsproblemen und Lösungskonzepten unter Einsatz der Unified Modeling Language (UML)
							\a Einsatz von Softwarewerkzeugen zur Unterstützung des kompletten Softwarelebenszyklus',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (45 h)
							\a Bearbeitung der Übungs-/Praktikumsaufgaben (45 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'/modulhandbuch/img/module/swt.png');

INSERT INTO modul VALUES('5110','Softwaretechnik-Projekt','5','-',
						'\a Programmieren 1,2,3: Imperative und objektorientierte Programmierung, Skripting
							\a Datenbanken: ER-Modellierung, SQL, Einbettung in Programmiersprachen, DB-Design
							\a Softwaretechnik: Analyse- / Design- / Implementierungsphase
							\a Entwicklung interaktiver Benutzungsoberflächen: Architektur und Entwurfsmuster interaktiver Anwendungen, GUI-Programmierung
							\a Web-basierte Anwendungen : Serverseitige Technologien, Mehrschichtenarchitekturen, Frameworks
							\a Mensch-Computer-Interaktion: Interaktionsdesign',
						'Selbständige Bearbeitung eines größeren Softwareprojekts im Team
							\a Rollenverteilung
							\a Erstellung eines Projektplans
							\a Dokumentation der Projektphasen
							\a Projekt-Controlling
							\a Arbeitsorganisation im Team 
						\n Methodische Projektbegleitung
							\a Software-Projektmanagement, Projektorganisation
							\a Zeitmanagement, Modelle und Techniken; Konfliktmanagement;
							\a Umgang mit persönlichen Ressourcen
							\a Metriken und Aufwandsschätzung
							\a Konfigurations- und Änderungsmanagement (Versionierung, Konfiguration; Toolunterstützung), Software-Qualität
							\a Testen von Software (Fehlerarten; statische und dynamische Testverfahren; Testdokumentation)
							\a Pflege und Wartung, Umgang mit Software-Altlasten (Legacy Systems); Software-Re-Engineering',
						'Die Fähigkeit zur Auswahl, Bewertung und Anwendung von Konzepten und Methoden zur systematischen (Weiter-)Entwicklung (großer) Softwaresysteme, insbesondere bzgl. phasenübergreifender Querschnittsapekte und der Behandlung der späteren Phasen des Software-Lifecycles, ist für eine verantwortungsvolle Tätigkeit im IT-Bereich jenseits der reinen Programmierung unverzichtbar. Dabei spielt neben guten technischen Kenntnissen auch die Fähigkeit zur koordinierten, arbeitsteiligen Zusammenarbeit in einem Team eine wichtige Rolle.
							\a Softwareprojekte managen und den persönlichen Arbeitsprozess organisieren
							\a Software-Tests und Software-Qualitätssicherung planen und durchführen
							\a Ganzheitlichen Software-Lebenszyklus bei der Softwareerstellung berücksichtigen
							\a Selbstorganisiert und arbeitsteilig umfangreichen Entwicklungsprojekte praktisch im Team umsetzen',
						'\a Bearbeitung des Praktikumsprojekts (230 h)
							\a Projektbegleitende Veranstaltung (70 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a projektbegleitende Vorlesung/Übung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'/modulhandbuch/img/module/swt-projekt.png');

INSERT INTO modul VALUES('7670','Systemprogrammierung','5','GI',
						'\a Betriebssysteme und Rechnerarchitekturen: Grundlagen Betriebssysteme',
						'\a Grundlagen (Begriff der Systemprogrammierung, Betriebssysteme, Systemaufrufe, Systemprogrammierungssprachen, Beispiele, Portabilität, Programmierstil)
							\a Konkrete Systeme (z.B. UNIX/Linux, Windows)
							\a Ein- und Ausgabe, Directory-Handling
							\a Speicherverwaltung
							\a Prozess- und Thread-Manipulation
							\a Interprozess-Kommunikation
							\a Netzwerkprogrammierung
							\a Treiber-Modelle und -Programmierung
							\a Sicherheit und typ. Angriffstechniken
							\a Wechselnde Inhalte der Projekte zu aktuellen Themen',
						'Systemprogrammierung bzw. systemnahe Programmierung bleibt ein Schlüssel zum Verständnis der internen Abläufe in einem IT-System. Vertiefte Kenntnisse dieser Systemebene befähigen die Studierenden Nebenläufigkeit und Verteilung in Anwendungen effizient zu nutzen, eigene Systemkomponenten entwickeln zu können und Fragen der technischen Systemsicherheit fundiert beantworten zu können. Nach erfolgreichem Abschluss dieser Lehrveranstaltung haben die Studierenden erworben:
							\a vertiefte Kenntnisse über Betriebssysteme
							\a vertieftes Wissen über die Systemaufrufe eines konkreten Systems (UNIX/Linux oder Windows)
							\a Verständnis der Zusammenhänge, die die Ausführungen von Anwendungen in vielschichtig organisierten Rechensystemen ermöglichen
							\a Fähigkeiten auch die internen Schnittstellen eines Betriebssystems zu nutzen, um eigene Komponenten (z.B. Treiber) integrieren zu können
							\a die Kompetenz dieses Wissen dann sebstständig auf größere Aufgabenstellungen anwenden zu können',
						'\a Anwesenheit Vorlesung und Praktikum (90 h)
							\a Vorbereitung und Nachbereitung (60 h)
							\a Bearbeitung der Praktikumsaufgaben und eines Projekts (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'');

INSERT INTO modul VALUES('7300','Virtual Reality Systeme','5','MI',
						'\a Computergrafik: Grundkenntnisse der Computergrafik und über GDV-Systeme
							\a Programmieren 1,2: Programmierkenntnisse',
						'\a Immersion und Präsenz, Raumwahrnehmung
							\a Spezielle Ein- und Ausgabegeräte
							\a Tracking
							\a Aktives und passives Stereo
							\a Features von VR-Systemen (z.B.Kollisionsdetektion)
							\a Sprach- und Gesteninteraktion
							\a Integration von 3D Audio, Audioeffekte für VR (z.B. Echo, Hall)
							\a VR Installationen, VR und Augmented Reality (AR)
							\a Architektur von VR und AR Systemen
							\a Anwendungen (Virtual prototyping, Walk Through)',
						'Virtuelle Realität ist eine wesentliche Anwendung der Echtzeit-Computergrafik und hat in einer ganzen Bandbreite verschiedener Erscheinungsformen (von Desktop VR bis Full Immersive VR) zahlreiche Anwendungen. Die Studierenden sollen
							\a das nötige Rüstzeug für die Erstellung von VR beherrschen - sowohl algorithmisch als auch technologisch - und damit VR-Systeme in der Berufspraxis einsetzen können
							\a die Grundlagen für die erfolgreiche Illusion von Immersion in praktischen Anwendungen anwenden und umsetzen können
							\a die Einsatzmöglichkeiten, Vor- und Nachteile von VR in einzelnen Anwendungen als auch für die Gestaltung von User Interfaces beurteilen können.',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vorbereitung und Nachbereitung (30 h)
							\a Bearbeitung Praktikum (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('4150','Web-basierte Anwendungen','4','-',
						'\a Programmieren 1 2 3: Java, Skriptsprachen
							\a Datenbanken: DB-Design, SQL
							\a Auszeichnungssprachen: HTML, XML',
						'\a Einführung, Klassifikation von Web-Anwendungen, Architekturen
							\a Grundlagen (HTTP, HTML-Formulare, Session-Management)
							\a Serverseitige Technologien, CGI, Servlets, Applikationsserver
							\a Template-Prozessoren
							\a Mehrschichtenarchitekturen, Frameworks
							\a Clientseitige Technologien, Scripting
							\a Integration von Datenbanken und Diensten
							\a Sicherheit in Web-Anwendungen
							\a Organisation und Pflege von Web-Inhalten, Web-Content-Management
							\a Spezielle Probleme großer Web-Anwendungen (z.B. Lastverteilung, Fehlertoleranz)',
						'Webbasierte Systeme sind eine der verbreitetsten Ausprägungen (verteilter) Informationssysteme und sind heute weder aus dem privaten noch aus dem beruflichen Bereich wegzudenken. Solche Systeme professionell planen, realisieren und beurteilen zu können, stellt daher eine wichtige Qualifikation dar.
							\a Web-basierte Anwendungen klassifizieren und geeignetete Konzepte und Technologien auswählen und einsetzen
							\a Problemadäquat Web-basierte Anwendungen entwerfen und realisieren
							\a Typische Problemstellungen bei der Realisierung von Mehrbenutzer-Anwendungen und Client/Server Anwendungen identifizieren und lösen',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung (70%)
							\a Praktikum (30% als separate SL)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7680','Web-Engineering','5','GI',
						'\a Programmieren 1,2: imperatives und objektorientiertes Programmieren
							\a Web-basierte Anwendungen: Grundlagen, Serverseitige Technologien',
						'\a Einführung in Web-Engineering (Motivation, Definition, Grundprinzipien)
							\a Produktentwicklung
							\a Requirements Engineering für Web-Anwendungen
							\a Modellierung von Web-Anwendungen
							\a Architektur von Web-Anwendungen (Überblick)
							\a Web-Design
							\a Implementierungstechnologien (Überblick)
							\a Testen von Web-Anwendungen
							\a Betrieb und Wartung
							\a Web-Projektmanagement
							\a Qualitätsaspekte(Usability, Performanz, Sicherheit)
							\a Semantische Web-Anwendungen
							\a Web-Frameworks',
						'Verständnis von aktuellen Konzepten, Methoden, Techniken, Werkzeugen und Erfahrungen zur ingenieursmäßigen Entwicklung von Web-Anwendungen sowie ihre praktische Anwendung in der eigenen Projektarbeit in Web-Entwicklerteams.
							\a Bewerten von potentiellen Risiken von Web-Anwendungen
							\a Befähigung, zukünftige Entwicklungen im Bereich des Web-Engineering zu verfolgen und zu beurteilen',
						'\a Anwesenheit Seminar und Praktikum (90 h)
							\a Vor- und Nachbereitung Seminar (60 h)
							\a Bearbeitung der Praktikumsaufgaben (150 h)',
						'\a praktische Tätigkeit und Fachgespräch (100%)',
						'\a Seminaristische Vorlesung (2 SWS)
							\a Praktikum (4 SWS)',
						'10 cp, 300 h 6 SWS',
						'/modulhandbuch/img/module/web-eng.png');

INSERT INTO modul VALUES('7320','Web-Technologien','5','MI',
						'\a Web-basierte Anwendungen: Solide Kenntnisse der Web-Basis-Technologien
							\a Rechnernetze und Netzwerkprogrammierung: Protokolle der Anwendungsschicht, Netzwerkprogrammierung',
						'Im Rahmen der Veranstaltung werden eine oder mehrere konkrete Technologien ausgewählt und umfassend vorgestellt.
							\a Standard-Architekturen von Web-Anwendungen
							\a Frontend-Technologien für Rich Internet Applications (z. B. Ajax, Flex, GWT) und Dienst-Integration (z.B. Mashups)
							\a Web-Anwendungsframeworks zur Web-Anwendungsentwicklung (z.B. django, Zend Framework, Rails, Grails, Zope)
							\a Web-Service Technologien und Konzepte zur Interoperabilität von Web-Anwendungen (z.B. SOAP/XML-RPC, Representational State Transfer [REST])
							\a Austauschformate von Web-Services (RSS, JSON, etc.)
							\a Übergreifende Aspekte wie Web-Security, Performance Messungen und Verbesserungen, Verteilung und load-balancing',
						'Web-basierte Anwendungen nutzen immer wieder neue Technologien um einfacher benutzbar, interaktiver oder sicherer zu werden. Auch wird die Erstellung Pflege durch entsprechende Frameworks einfacher und schneller. Informatiker, die in diesem Bereich tätig sind, sollten in der Lage sein entsprechende Technologien auszuwählen und einzusetzen:
							\a Identifikation von Anforderungen und Auswahl passender Web-Technologien zu deren Lösung
							\a Umsetzung spezifischer Aufgabenstellung mit entsprechenden Web-Technologien',
						'\a Anwesenheit Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung (30 h)
							\a Bearbeitung der Praktikumsaufgaben (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

INSERT INTO modul VALUES('7310','Wirtschaftsinformatik','5','MI',
						'\a Einführung in die Medieninformatik: Architektur von Rechensystemen
							\a Datenbanken: Modellierung, Transaktionskonzept
							\a Grundlagen der Betriebswirtschaftslehre: Betriebswirtschaftliche Grundbegriffe und Grundtatbestände',
						'Die Lehrveranstaltung behandelt ausgewählte Themen der folgende Gebiete der Wirtschaftsinformatik:
							\a Wirtschaftsinformatik - Anwendungsgebiet der Informatik
							\a Aktuelle Themengebiete der Wirtschaftsinformatik
							\a Theorie und Praxis der Geschäftsprozessmodellierung anhand von Anwendungsbeispielen aus der Wirtschaft
							\a Praxisbeispiel eines Werkzeugs für die Geschäftsprozessanalyse (BPA), -modellierung und Geschäftsprozessmanagement (BPM)
							\a Anwendungsgebiete des Business Process Reengineering
							\a Architektur und Einsatz von integrierten betrieblichen Informationssystemen
							\a Unterstützung der betrieblichen Kernprozesse mit ERP-Systemen
							\a Praxisbeispiel eines ERP-Systems
							\a Grundlage der Supply Chain und Custumer Relationship Management-Systeme
							\a Beispiele für E-Business/E-Commerce-Technologien und Anwendungssysteme
							\a Rechtssichere Durchführung von elektronischen Kommunikations- und Transaktionsprozessen - die elektronische Signatur (Technik, Lösungen)',
						'Die Wirtschaftsinformatik befasst sich mit der Nutzung der Informations- und Kommunikationstechnik in Wirtschaft und Verwaltung, insbesondere mit der Entwicklung und dem Einsatz betrieblicher Anwendungs- und Informationssysteme. Ziel der Lehrveranstaltung ist es, die Konzepte und Architektur betriebswirtschaftlicher Informationssysteme - insbesondere am Beispiel eines integrierten ERP-Systems - zu untersuchen. Auch werden praxisorientiert die Methoden und Vorgehensweisen zur Analyse, Modellierung und Optimierung von Geschäftsprozessen - am Beispiel eine Business Process Modeling/Management (BPM) Tools - behandelt. Die Studierenden können nach Besuch der Lehrveranstaltung:
							\a Geschäftsprozesse analysieren und modellieren (Praxisbeispiel BPM-Tools)
							\a die Architektur und den Einsatz betrieblicher Informationssysteme bewerten (Praxisbeispiel ERP-System)
							\a betriebliche Kernprozesse in ERP-Systemen zuordnen und strukturieren
							\a die Bedeutung des IT-gestützten Informationsmanagements eines Unternehmens und die IT-Sicherheit im E-Business bewerten',
						'\a Präsenz Vorlesung und Praktikum (60 h)
							\a Vor- und Nachbereitung Vorlesung/Praktikum (30 h)
							\a Praktikumsaufgaben/Ausarbeitung Vortrag (60 h)',
						'\a Klausur oder mündliche Prüfung oder praktische Tätigkeit und Fachgespräch (100%)',
						'\a Vorlesung (2 SWS)
							\a Praktikum (2 SWS)',
						'5 cp, 150 h 4 SWS',
						'');

SELECT modulnummer FROM modul;

--- ModulLiteratur ---
INSERT INTO modulLiteratur VALUES('7500', '163');
INSERT INTO modulLiteratur VALUES('7500', '164');
INSERT INTO modulLiteratur VALUES('7500', '165');
INSERT INTO modulLiteratur VALUES('7100', '160');
INSERT INTO modulLiteratur VALUES('7100', '161');
INSERT INTO modulLiteratur VALUES('7100', '162');
INSERT INTO modulLiteratur VALUES('7510', '158');
INSERT INTO modulLiteratur VALUES('7510', '159');
INSERT INTO modulLiteratur VALUES('2110', '155');
INSERT INTO modulLiteratur VALUES('2110', '156');
INSERT INTO modulLiteratur VALUES('2110', '157');
INSERT INTO modulLiteratur VALUES('1340', '56');
INSERT INTO modulLiteratur VALUES('1340', '57');
INSERT INTO modulLiteratur VALUES('1340', '153');
INSERT INTO modulLiteratur VALUES('1340', '154');
INSERT INTO modulLiteratur VALUES('3250', '151');
INSERT INTO modulLiteratur VALUES('3250', '152');
INSERT INTO modulLiteratur VALUES('7520', '149');
INSERT INTO modulLiteratur VALUES('7520', '150');
INSERT INTO modulLiteratur VALUES('2120', '144');
INSERT INTO modulLiteratur VALUES('2120', '145');
INSERT INTO modulLiteratur VALUES('2120', '146');
INSERT INTO modulLiteratur VALUES('2120', '147');
INSERT INTO modulLiteratur VALUES('2120', '148');
INSERT INTO modulLiteratur VALUES('3110', '141');
INSERT INTO modulLiteratur VALUES('3110', '142');
INSERT INTO modulLiteratur VALUES('3110', '143');
INSERT INTO modulLiteratur VALUES('4110', '138');
INSERT INTO modulLiteratur VALUES('4110', '139');
INSERT INTO modulLiteratur VALUES('4110', '140');
INSERT INTO modulLiteratur VALUES('7120', '135');
INSERT INTO modulLiteratur VALUES('7120', '136');
INSERT INTO modulLiteratur VALUES('7120', '137');
INSERT INTO modulLiteratur VALUES('7530', '132');
INSERT INTO modulLiteratur VALUES('7530', '133');
INSERT INTO modulLiteratur VALUES('7530', '134');
INSERT INTO modulLiteratur VALUES('4120', '128');
INSERT INTO modulLiteratur VALUES('4120', '129');
INSERT INTO modulLiteratur VALUES('4120', '130');
INSERT INTO modulLiteratur VALUES('4120', '131');
INSERT INTO modulLiteratur VALUES('7130', '125');
INSERT INTO modulLiteratur VALUES('7130', '126');
INSERT INTO modulLiteratur VALUES('7130', '127');
INSERT INTO modulLiteratur VALUES('7140', '123');
INSERT INTO modulLiteratur VALUES('7140', '124');
INSERT INTO modulLiteratur VALUES('7540', '118');
INSERT INTO modulLiteratur VALUES('7540', '119');
INSERT INTO modulLiteratur VALUES('7540', '120');
INSERT INTO modulLiteratur VALUES('7540', '121');
INSERT INTO modulLiteratur VALUES('7540', '122');
INSERT INTO modulLiteratur VALUES('7550', '115');
INSERT INTO modulLiteratur VALUES('7550', '116');
INSERT INTO modulLiteratur VALUES('7550', '117');
INSERT INTO modulLiteratur VALUES('7150', '111');
INSERT INTO modulLiteratur VALUES('7150', '112');
INSERT INTO modulLiteratur VALUES('7150', '110');
INSERT INTO modulLiteratur VALUES('7150', '113');
INSERT INTO modulLiteratur VALUES('7150', '114');
INSERT INTO modulLiteratur VALUES('3120', '108');
INSERT INTO modulLiteratur VALUES('3120', '109');
INSERT INTO modulLiteratur VALUES('3120', '110');
INSERT INTO modulLiteratur VALUES('7160', '104');
INSERT INTO modulLiteratur VALUES('7160', '105');
INSERT INTO modulLiteratur VALUES('7160', '106');
INSERT INTO modulLiteratur VALUES('7160', '107');
INSERT INTO modulLiteratur VALUES('7560', '103');
INSERT INTO modulLiteratur VALUES('7570', '101');
INSERT INTO modulLiteratur VALUES('7570', '102');
INSERT INTO modulLiteratur VALUES('1230', '96');
INSERT INTO modulLiteratur VALUES('1230', '97');
INSERT INTO modulLiteratur VALUES('1230', '98');
INSERT INTO modulLiteratur VALUES('1230', '99');
INSERT INTO modulLiteratur VALUES('1230', '100');
INSERT INTO modulLiteratur VALUES('1110', '92');
INSERT INTO modulLiteratur VALUES('1110', '93');
INSERT INTO modulLiteratur VALUES('1110', '94');
INSERT INTO modulLiteratur VALUES('1110', '95');
INSERT INTO modulLiteratur VALUES('3130', '86');
INSERT INTO modulLiteratur VALUES('3130', '87');
INSERT INTO modulLiteratur VALUES('3130', '88');
INSERT INTO modulLiteratur VALUES('3130', '89');
INSERT INTO modulLiteratur VALUES('3130', '90');
INSERT INTO modulLiteratur VALUES('3130', '91');
INSERT INTO modulLiteratur VALUES('5540', '152');
INSERT INTO modulLiteratur VALUES('7590', '81');
INSERT INTO modulLiteratur VALUES('7590', '82');
INSERT INTO modulLiteratur VALUES('7590', '83');
INSERT INTO modulLiteratur VALUES('7590', '84');
INSERT INTO modulLiteratur VALUES('7190', '77');
INSERT INTO modulLiteratur VALUES('7190', '78');
INSERT INTO modulLiteratur VALUES('7190', '79');
INSERT INTO modulLiteratur VALUES('7190', '80');
INSERT INTO modulLiteratur VALUES('2240', '73');
INSERT INTO modulLiteratur VALUES('2240', '74');
INSERT INTO modulLiteratur VALUES('2240', '90');
INSERT INTO modulLiteratur VALUES('2240', '76');
INSERT INTO modulLiteratur VALUES('7760', '69');
INSERT INTO modulLiteratur VALUES('7760', '70');
INSERT INTO modulLiteratur VALUES('7760', '71');
INSERT INTO modulLiteratur VALUES('7760', '72');
INSERT INTO modulLiteratur VALUES('1450', '67');
INSERT INTO modulLiteratur VALUES('1450', '68');
INSERT INTO modulLiteratur VALUES('7740', '64');
INSERT INTO modulLiteratur VALUES('7740', '65');
INSERT INTO modulLiteratur VALUES('7740', '66');
INSERT INTO modulLiteratur VALUES('7210', '60');
INSERT INTO modulLiteratur VALUES('7210', '61');
INSERT INTO modulLiteratur VALUES('7210', '62');
INSERT INTO modulLiteratur VALUES('7210', '63');
INSERT INTO modulLiteratur VALUES('2350', '56');
INSERT INTO modulLiteratur VALUES('2350', '57');
INSERT INTO modulLiteratur VALUES('2350', '58');
INSERT INTO modulLiteratur VALUES('2350', '59');
INSERT INTO modulLiteratur VALUES('3360', '52');
INSERT INTO modulLiteratur VALUES('3360', '53');
INSERT INTO modulLiteratur VALUES('3360', '54');
INSERT INTO modulLiteratur VALUES('3360', '55');
INSERT INTO modulLiteratur VALUES('4260', '88');
INSERT INTO modulLiteratur VALUES('4260', '76');
INSERT INTO modulLiteratur VALUES('4260', '90');
INSERT INTO modulLiteratur VALUES('4260', '51');
INSERT INTO modulLiteratur VALUES('7610', '46');
INSERT INTO modulLiteratur VALUES('7610', '47');
INSERT INTO modulLiteratur VALUES('1120', '42');
INSERT INTO modulLiteratur VALUES('1120', '43');
INSERT INTO modulLiteratur VALUES('1120', '44');
INSERT INTO modulLiteratur VALUES('2130', '42');
INSERT INTO modulLiteratur VALUES('2130', '43');
INSERT INTO modulLiteratur VALUES('2130', '44');
INSERT INTO modulLiteratur VALUES('2130', '45');
INSERT INTO modulLiteratur VALUES('3140', '40');
INSERT INTO modulLiteratur VALUES('3140', '41');
INSERT INTO modulLiteratur VALUES('7230', '37');
INSERT INTO modulLiteratur VALUES('7230', '38');
INSERT INTO modulLiteratur VALUES('7230', '39');
INSERT INTO modulLiteratur VALUES('4130', '35');
INSERT INTO modulLiteratur VALUES('4130', '36');
INSERT INTO modulLiteratur VALUES('7240', '31');
INSERT INTO modulLiteratur VALUES('7240', '32');
INSERT INTO modulLiteratur VALUES('7240', '27');
INSERT INTO modulLiteratur VALUES('7240', '34');
INSERT INTO modulLiteratur VALUES('7640', '29');
INSERT INTO modulLiteratur VALUES('7640', '30');
INSERT INTO modulLiteratur VALUES('7650', '25');
INSERT INTO modulLiteratur VALUES('7650', '26');
INSERT INTO modulLiteratur VALUES('7650', '27');
INSERT INTO modulLiteratur VALUES('7650', '28');
INSERT INTO modulLiteratur VALUES('4140', '20');
INSERT INTO modulLiteratur VALUES('4140', '21');
INSERT INTO modulLiteratur VALUES('4140', '22');
INSERT INTO modulLiteratur VALUES('4140', '23');
INSERT INTO modulLiteratur VALUES('4140', '24');
INSERT INTO modulLiteratur VALUES('5110', '16');
INSERT INTO modulLiteratur VALUES('5110', '17');
INSERT INTO modulLiteratur VALUES('5110', '18');
INSERT INTO modulLiteratur VALUES('5110', '19');
INSERT INTO modulLiteratur VALUES('7670', '14');
INSERT INTO modulLiteratur VALUES('7670', '15');
INSERT INTO modulLiteratur VALUES('4150', '9'); 
INSERT INTO modulLiteratur VALUES('4150', '10'); 
INSERT INTO modulLiteratur VALUES('4150', '11'); 
INSERT INTO modulLiteratur VALUES('4150', '12'); 
INSERT INTO modulLiteratur VALUES('4150', '13'); 
INSERT INTO modulLiteratur VALUES('7680', '5');
INSERT INTO modulLiteratur VALUES('7680', '6');
INSERT INTO modulLiteratur VALUES('7680', '7');
INSERT INTO modulLiteratur VALUES('7680', '8'); 
INSERT INTO modulLiteratur VALUES('7320', '3'); 
INSERT INTO modulLiteratur VALUES('7320', '4'); 
INSERT INTO modulLiteratur VALUES('7310', '1'); 
INSERT INTO modulLiteratur VALUES('7310', '2');  
 
SELECT * FROM modulLiteratur;

--- ModulDozent ---			--- modul dozent ---
INSERT INTO modulDozent VALUES('7500', '3');
INSERT INTO modulDozent VALUES('7500', '15');
INSERT INTO modulDozent VALUES('7500', '16');
INSERT INTO modulDozent VALUES('7720', '3');
INSERT INTO modulDozent VALUES('7720', '10');
INSERT INTO modulDozent VALUES('7720', '15');
INSERT INTO modulDozent VALUES('7720', '16');
INSERT INTO modulDozent VALUES('7720', '17');
INSERT INTO modulDozent VALUES('7100', '3');
INSERT INTO modulDozent VALUES('7100', '15');
INSERT INTO modulDozent VALUES('7100', '16');
INSERT INTO modulDozent VALUES('7510', '4');
INSERT INTO modulDozent VALUES('7510', '5');
INSERT INTO modulDozent VALUES('7510', '18');
INSERT INTO modulDozent VALUES('2110', '1');
INSERT INTO modulDozent VALUES('2110', '6');
INSERT INTO modulDozent VALUES('2110', '14');
INSERT INTO modulDozent VALUES('2110', '19');
INSERT INTO modulDozent VALUES('1340', '22');
INSERT INTO modulDozent VALUES('3250', '3');
INSERT INTO modulDozent VALUES('3250', '10');
INSERT INTO modulDozent VALUES('3250', '17');
INSERT INTO modulDozent VALUES('7520', '11');
INSERT INTO modulDozent VALUES('7520', '13');
INSERT INTO modulDozent VALUES('7110', '20');
INSERT INTO modulDozent VALUES('2120', '11');
INSERT INTO modulDozent VALUES('2120', '18');
INSERT INTO modulDozent VALUES('2120', '19');
INSERT INTO modulDozent VALUES('3110', '1');
INSERT INTO modulDozent VALUES('3110', '4');
INSERT INTO modulDozent VALUES('3110', '14');
INSERT INTO modulDozent VALUES('3110', '16');
INSERT INTO modulDozent VALUES('9040', '21');
INSERT INTO modulDozent VALUES('4110', '12');
INSERT INTO modulDozent VALUES('4110', '18');
INSERT INTO modulDozent VALUES('7120', '13');
INSERT INTO modulDozent VALUES('7530', '3');
INSERT INTO modulDozent VALUES('7530', '15');
INSERT INTO modulDozent VALUES('7530', '16');
INSERT INTO modulDozent VALUES('4120', '3');
INSERT INTO modulDozent VALUES('4120', '15');
INSERT INTO modulDozent VALUES('4120', '16');
INSERT INTO modulDozent VALUES('7130', '3');
INSERT INTO modulDozent VALUES('7130', '15');
INSERT INTO modulDozent VALUES('7130', '16');
INSERT INTO modulDozent VALUES('7140', '1');
INSERT INTO modulDozent VALUES('7140', '12');
INSERT INTO modulDozent VALUES('7140', '13');
INSERT INTO modulDozent VALUES('7140', '14');
INSERT INTO modulDozent VALUES('7140', '18');
INSERT INTO modulDozent VALUES('7540', '1');
INSERT INTO modulDozent VALUES('7540', '11');
INSERT INTO modulDozent VALUES('7550', '1');
INSERT INTO modulDozent VALUES('7550', '6');
INSERT INTO modulDozent VALUES('7550', '11');
INSERT INTO modulDozent VALUES('7150', '1');
INSERT INTO modulDozent VALUES('7150', '6');
INSERT INTO modulDozent VALUES('7150', '11');
INSERT INTO modulDozent VALUES('3120', '1');
INSERT INTO modulDozent VALUES('3120', '6');
INSERT INTO modulDozent VALUES('3120', '11');
INSERT INTO modulDozent VALUES('7160', '3');
INSERT INTO modulDozent VALUES('7160', '15');
INSERT INTO modulDozent VALUES('7160', '16');
INSERT INTO modulDozent VALUES('7560', '19');
INSERT INTO modulDozent VALUES('7570', '3');
INSERT INTO modulDozent VALUES('7570', '15');
INSERT INTO modulDozent VALUES('7570', '16');
INSERT INTO modulDozent VALUES('1230', '22');
INSERT INTO modulDozent VALUES('1230', '17');
INSERT INTO modulDozent VALUES('1110', '5');
INSERT INTO modulDozent VALUES('1110', '11');
INSERT INTO modulDozent VALUES('1110', '12');
INSERT INTO modulDozent VALUES('1110', '19');
INSERT INTO modulDozent VALUES('3130', '1');
INSERT INTO modulDozent VALUES('3130', '2');
INSERT INTO modulDozent VALUES('3130', '3');
INSERT INTO modulDozent VALUES('3130', '18');
INSERT INTO modulDozent VALUES('5540', '21');
INSERT INTO modulDozent VALUES('7590', '1');
INSERT INTO modulDozent VALUES('7590', '8');
INSERT INTO modulDozent VALUES('7590', '18');
INSERT INTO modulDozent VALUES('7190', '1');
INSERT INTO modulDozent VALUES('7190', '13');
INSERT INTO modulDozent VALUES('2240', '17');
INSERT INTO modulDozent VALUES('7760', '14');
INSERT INTO modulDozent VALUES('7600', '3');
INSERT INTO modulDozent VALUES('7600', '15');
INSERT INTO modulDozent VALUES('7600', '16');
INSERT INTO modulDozent VALUES('1450', '7');
INSERT INTO modulDozent VALUES('1450', '9');
INSERT INTO modulDozent VALUES('7740', '18');
INSERT INTO modulDozent VALUES('7210', '11');
INSERT INTO modulDozent VALUES('2350', '22');
INSERT INTO modulDozent VALUES('2350', '16');
INSERT INTO modulDozent VALUES('3360', '16');
INSERT INTO modulDozent VALUES('4260', '1');
INSERT INTO modulDozent VALUES('4260', '3');
INSERT INTO modulDozent VALUES('4260', '17');
INSERT INTO modulDozent VALUES('7220', '3');
INSERT INTO modulDozent VALUES('7220', '15');
INSERT INTO modulDozent VALUES('7220', '16');
INSERT INTO modulDozent VALUES('7610', '1');
INSERT INTO modulDozent VALUES('7610', '5');
INSERT INTO modulDozent VALUES('7750', '22');
INSERT INTO modulDozent VALUES('7750', '17');
INSERT INTO modulDozent VALUES('6100', '21');
INSERT INTO modulDozent VALUES('1120', '2');
INSERT INTO modulDozent VALUES('1120', '6');
INSERT INTO modulDozent VALUES('1120', '13');
INSERT INTO modulDozent VALUES('1120', '18');
INSERT INTO modulDozent VALUES('2130', '2');
INSERT INTO modulDozent VALUES('2130', '6');
INSERT INTO modulDozent VALUES('2130', '13');
INSERT INTO modulDozent VALUES('2130', '18');
INSERT INTO modulDozent VALUES('3140', '1');
INSERT INTO modulDozent VALUES('3140', '18');
INSERT INTO modulDozent VALUES('7230', '1');
INSERT INTO modulDozent VALUES('7230', '12');
INSERT INTO modulDozent VALUES('7230', '13');
INSERT INTO modulDozent VALUES('7620', '20');
INSERT INTO modulDozent VALUES('7630', '20');
INSERT INTO modulDozent VALUES('4130', '4');
INSERT INTO modulDozent VALUES('4130', '5');
INSERT INTO modulDozent VALUES('4130', '18');
INSERT INTO modulDozent VALUES('2460', '22');
INSERT INTO modulDozent VALUES('7240', '4');
INSERT INTO modulDozent VALUES('7240', '18');
INSERT INTO modulDozent VALUES('7250', '20');
INSERT INTO modulDozent VALUES('7640', '1');
INSERT INTO modulDozent VALUES('7640', '12');
INSERT INTO modulDozent VALUES('7640', '18');
INSERT INTO modulDozent VALUES('7640', '19');
INSERT INTO modulDozent VALUES('7650', '4');
INSERT INTO modulDozent VALUES('7650', '14');
INSERT INTO modulDozent VALUES('4140', '8');
INSERT INTO modulDozent VALUES('4140', '18');
INSERT INTO modulDozent VALUES('5110', '8');
INSERT INTO modulDozent VALUES('5110', '18');
INSERT INTO modulDozent VALUES('7670', '5');
INSERT INTO modulDozent VALUES('7670', '18');
INSERT INTO modulDozent VALUES('7300', '3');
INSERT INTO modulDozent VALUES('7300', '15');
INSERT INTO modulDozent VALUES('7300', '16');
INSERT INTO modulDozent VALUES('4150', '1'); 
INSERT INTO modulDozent VALUES('4150', '18'); 
INSERT INTO modulDozent VALUES('7680', '1');
INSERT INTO modulDozent VALUES('7680', '18');
INSERT INTO modulDozent VALUES('7680', '19');
INSERT INTO modulDozent VALUES('7320', '1'); 
INSERT INTO modulDozent VALUES('7320', '2');
INSERT INTO modulDozent VALUES('7320', '18');  
INSERT INTO modulDozent VALUES('7310', '6'); 
INSERT INTO modulDozent VALUES('7310', '7');
INSERT INTO modulDozent VALUES('7310', '11');

SELECT * FROM modulDozent;










