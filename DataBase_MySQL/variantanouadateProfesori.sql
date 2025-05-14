-- CREATE DATABASE DateProfesori;
-- USE DateProfesori;

/* Creare tabel pentru profesori */
-- CREATE TABLE Profesori(
-- 	id_profesor INT AUTO_INCREMENT PRIMARY KEY,
--     nume VARCHAR(100) NOT NULL,
--     email VARCHAR(100)
-- );

-- /* Creare tabel pentru materii */
-- CREATE TABLE Materii(
-- 	id_materie INT AUTO_INCREMENT PRIMARY KEY,
--     nume_materie VARCHAR(100) NOT NULL
-- );

-- /* Creare tabel pentru laboratoare */
-- CREATE TABLE Laboratoare(
-- 	id_laborator INT AUTO_INCREMENT PRIMARY KEY,
--     nume_laborator VARCHAR(30) NOT NULL,
--     cladirea VARCHAR(100)
-- );

/* Creare tabelul final ( Orarul ) */
-- CREATE TABLE Orar(
-- 	id_orar INT AUTO_INCREMENT PRIMARY KEY,
--     id_profesor INT,
--     id_materie INT,
--     id_laborator INT,
--     ora_inceput TIME NOT NULL,
--     ora_sfarsit TIME NOT NULL,
--     ziua VARCHAR(30) NOT NULL,
--     FOREIGN KEY (id_profesor) REFERENCES Profesori(id_profesor),
--     FOREIGN KEY (id_materie) REFERENCES Materii(id_materie),
--     FOREIGN KEY (id_laborator) REFERENCES Laboratoare(id_laborator)
-- );

/*=================================================================*/



/* Inserare date in tabelul Profesori */
INSERT INTO Profesori (nume, email) VALUES
-- -- ('Cristian Fosalau', 'cfosalau@tuiasi.ro'),
-- -- ('Alina Baciu', 'alina.baciu@tuiasi.ro'),
-- -- ('Asiminicesei Oana-Maria', 'oana-maria.asiminicesei@academic.tuiasi.ro'),
-- -- ('Marius Branzila', 'branzila@tuiasi.ro'),
-- -- ('Cristian Zet','czet@tuiasi.ro');
-- -- ('Costel Eduard Lunca','elunca@tuiasi.ro'); -- id 6
-- -- ('Catalin Damian','cdamian@tuiasi.ro'); -- id 7
-- -- ('Alexandru Florentin Trandabat','ftranda@tuiasi.ro'); -- id 8
-- -- ('Marius Valerian Paulet','mpaulet@tuiasi.ro'); -- id 9
-- -- ('Silviu Ionut Ursache','silviu_ursache@tuiasi.ro'); -- id 10
-- -- ('Danut Constantin Irimia','danut.irimia@tuiasi.ro'); -- id 11
-- -- ('Sticea Daniel Adrian','danielsticea@tuiasi.ro'); -- id 12
-- ('Anamaria Hariton','anamaria.hariton@tuiasi.ro'), -- id 13
-- ('Bogdan Virlan','bogdan.virlan@tuiasi.ro'), -- id 14
-- ('Alin Dragomir','alin.dragomir@tuiasi.ro'), -- id 15
-- ('Andrusca Mihai','mandrusca@tuiasi.ro'), -- id 16
-- ('Elena Serea','edanila@tuiasi.ro'), -- id 17
-- ('Vasile Horga','horga@tuiasi.ro'), -- id 18
-- ('Daniel Petrisor','dpetrisor@tuiasi.ro'), -- id 19
-- ('Asiminicesei Oana-Maria','oana-maria.asiminicesei@tuiasi.ro'), -- id 20
-- ('Leonard Livadaru','livadaru@tuiasi.ro'), -- id 21
-- ('Gheorghe Grigoras','ggrioras@tuiasi.ro'); -- id 22
('Marcel Istrate','mistrate@tuiasi.ro'), -- id 23
('Bogdan Neagu','bogdan.neagu@tuiasi.ro'), -- id 24
('Nituca Costica','costica.nituca@tuiasi.ro'), -- id 25
('Olga Plopa','oplopa@tuiasi.ro'), -- id 26
('Ciprian Nemes','cnemes@tuiasi.ro'), -- id 27
('Maricel Adam','adamm@tuiasi.ro'), -- id 28
('Marian Poboroniuc ','mpobor@tuiasi.ro'), -- id 29
('Adrian Munteanu','amunteanu@tuiasi.ro'), -- id 30
('Razvan Beniuga','rbeniuga@tuiasi.ro'), -- id 31
('Mihai Gavrilas','mgavril@tuiasi.ro'), -- id 32
('Georgel Paicu','gpaicu@tuiasi.ro'), -- id 33
('Mihaela Aradoaei','mihaela.aradoaei@tuiasi.ro'), -- id 34
('Monica-Dana Burlica','monicaburlica@tuiasi.ro'), -- id 35
('Silviu-Constantin Vornicu','silviu-constantin.vorniuc@tuiasi.ro'), -- id 36
('Ramona Simionescu','ramona.simionescu@tuiasi.ro'), -- id 37
('Oana Tarniceriu','carmen-oana.tarniceriu@tuiasi.ro'), -- id 38
('Ovidiu Ivanov','ovidiuivanov@tuiasi.ro'), -- id 39
('Vlad Scarlatache','vlad-andrei.scarlatache@tuiasi.ro'), -- id 40
('Vlad Scarlatache','dastanei@tuiasi.ro'), -- id 41
('Ursan George-Andrei','agursan@tuiasi.ro'), -- id 42
('Marius Olariu','molariu@tuiasi.ro'), -- id 43
('Sebastian Aradoaei','arsete@tuiasi.ro'), -- id 44
('Dragos Machidon','machidon.dragos@tuiasi.ro'), -- id 45
('Florina Scarlatache','florina.scarlatache@tuiasi.ro'), -- id 46
('Florin Baiceanu','florin.baiceanu@tuiasi.ro'), -- id 47
('Donciu Codrin','cdonciu@tuiasi.ro'); -- id 48


/* Inserare date in tabelul Materii */
INSERT INTO Materii (nume_materie) VALUES
-- ('PRELUCRAREA NUMERICA A SEMNALELOR (PNS)'),
-- ('TEHNICA REGLARII SI CONTROL AUTOMAT (TRCA)'),
-- ('MASURARI ECOLOGICE SI BIOMEDICINA (MEB)'),
-- ('MASURARI IN PROCESE INDUSTRIALE (MRI)');

-- /* Materii domnul Zet */
-- ('CIRCUITE NUMERICE (CN)'), -- id 5
-- ('SISTEME DIGITALE (SD)'); -- id 6

-- /* Materii domnul Lunca */
-- ('ZGOMOTE ŞI INTERFERENŢE ÎN INSTRUMENTAŢIE (ZII)'), -- id 7
-- ('COMPATIBILITATE ELECTROMAGNETICĂ (CE)'); -- id 8-- 

-- /* Materii domnul Catalin Damian */
-- ('PROGRAMARE PYTHON (PP)'), -- id 9
-- ('PROGRAMAREA CALCULATOARELOR SI LIMBAJE DE PROGRAMARE (PCLP)'); -- id 10

-- /* Materii domnul Alexandru Florentin Trandabat */
-- ('SISTEME EXPERT (SE)'), -- id 11
-- ('MANAGEMENTUL PROIECTELOR DE CERCETARE (MPC)'); -- id 12

-- /* Materii domnul Marius Valerian Paulet */
-- ('SISTEME DE BORD INFORMATIZATE (SBI)'), -- id 13
-- ('TEHNOLOGII WEB (TW)'), -- id 14
-- ('SISTEME DISTRIBUITE DE MONITORIZARE (SDM)'); -- id 15

-- /* Materii domnul Silviu Ionut Ursache */
-- ('MATEMATICA – APLICATII (MT)'), -- id 16
-- ('MODELAREA SI SIMULAREA APLICATIILOR DE CAMP ELECTROMAGNETIC (MSACE)'); -- id 17

-- /* Materii domnul Danut Constantin Irimia */
-- ('ROBOȚI INDUSTRIALI (RI)'), -- id 18
-- ('CONTROLUL MIŞCĂRII BIOMECANICE (CMB)'); -- id 19

-- /* Materii domnul Sticea Daniel Adrian */
-- ('CONVERTOARE STATICE II (CS II)'), -- id 20
-- ('SISTEME DE POZIŢIONARE PERFORMANTE (SPP)'); -- id 21
-- ('SISTEME DE CONTROL DISTRIBUIT (SCD)'); -- id 22
-- ('SISTEME DIGITALE (SD)'); -- id 23
-- ('COMANDA ȘI CONTROLUL MAȘINILOR CU COMUT. ELECTRONICĂ (CCMCE)'), -- id 24
-- ('PROIECTAREA OPTIMALĂ A MAŞINILOR ELECTRICE (POME)'); -- id 25
-- ('ECHIPAMEENTE ELECTRICE (EE)'); -- id 26
-- ('PROGRAMAREA MICROPROCESOARELOR ȘI MICROCONTROLERELOR (PMM)'), -- id 27
-- ('ECHIPAMENTE ELECTRICE (EE)'), -- id 28
-- ('COMPATIBILITATE ELECTROMAGNETICA (CE)'), -- id 29
-- ('POLUARE ELECTROMAGNETICĂ (PE)'); -- id 30
-- ('TEHNICI INFORMATICE ŞI DE COMANDĂ ÎN ADMINISTRAREA AFACERILOR ( TICAA)'), -- id 31
-- ('UTILIZĂRI ALE ENERGIEI ELECTRICE (UEE)'); -- id 32
-- ('ACŢIONĂRI ELECTRICE II (AE II)'), -- id 33
-- ('SISTEME NUMERICE DE REGLARE (SNR)'); -- id 34
-- ('SISTEME CU MICROPROCESOR I (SMP I)'), -- id 35
-- ('SISTEME INFORMATICE RECONFIGURABILE (SIR)'), -- id 36
-- ('INFORMATICA APLICATA (IA)'), -- id 37
-- ('EDUCAȚIE ANTREPRENORIALĂ AFACERI DIGITALE (EAAD)'), -- id 38
-- ('MASINI ELECTRICE II (MasE II)'), -- id 39
-- ('CONCEPȚIA ASISTATĂ DE CALCULATOR A MAȘINILOR ELECTRICE (CACME)'), -- id 40
-- ('REŢELE ŞI ECHIP. PENTRU CONDUCEREA SIST. ENERGETICE (RECSE)'), -- id 41
-- ('SISTEME DE CONDUCERE, SUPRAVEGHERE SI ACHIZITII DATE (SCSAD)'), -- id 42
-- ('PIAŢA DE ENERGIE ŞI POLITICI ENERGETICE (PEPE)'); -- id 43
('ECOLOGIE GENERALĂ (EG)'), -- id 44
('REGIMURI TRANZITORII ELECTROMAGNETICE (RTE)'), -- id 45
('TEHNICA TENSIUNILOR INALTE I (TTI)'), -- id 46
('PIEŢE DE ENERGIE – MANAGEMENT ŞI REGLEMENTARE (PE-MR)'), -- id 47
('STABILITATEA ŞI CONTROLUL SISTEMELOR ELECTROENERGETICE (SCSEE)'), -- id 48
('TRANSPORTUL SI DISTRIBUTIA ENERGIEI ELECTRICE II (TDEE)'), -- id 49
('MONITORIZAREA SI CONTROLUL STĂRII STATICE A SEE (MCSSEE)'), -- id 50
('STRUCTURI DE DATE ȘI ALGORITMI (SDA)'), -- id 51
('CREATIVITATE ŞI INGINERIA VALORII (CIV)'), -- id 52
('SOFTWARE SPECIALIZAT PENTRU SISTEME ELECTROMECANICE (SSSE)'), -- id 53
('MANAGEMENTUL RISCULUI INDUSTRIAL ŞI ECOLOGIC (MRIE)'), -- id 54
('SISTEME DE MONITORIZARE A ECHIPAMENTELOR ENERGETICE (SMEE)'), -- id 55
('TEHNICI DE COMUTAŢIE ŞI ECHIPAMENTE FACTS (TCEF)'), -- id 56
('TEORIA SISTEMELOR (TS)'), -- id 57
('ÎNCERCAREA MAŞINILOR ELECTRICE (IME)'), -- id 58
('MODELAREA ELECTROMAGNETICĂ ŞI TERMICĂ ÎN SISTEME ELECTRICE (METSE)'), -- id 59
('EHIPAMENTE SI INSTALATII TERMICE (EIT)'), -- id 60
('SISTEME EXPERT APLICATE IN ENERGETICĂ (SEAE)'), -- id 61
('ENERGETICA CLĂDIRILOR (EC)'), -- id 62
('AUDIT ENERGETIC (AE)'), -- id 63
('GESTIUNEA DEŞEURILOR (GD)'), -- id 64
('SISTEME ELECTROENERGETICE I (SEE)'), -- id 65
('ENERGIE, SOCIETATE, MEDIU (ESM)'), -- id 66
('STRATEGII DE ANGAJARE ȘI DEZVOLTARE A CARIEREI (SADC)'), -- id 67
('UTILIZARI ALE ENERGIEI ELECTRICE (UEE)'), -- id 68
('TEHNOLOGII ELECTRICE SPECIALE (TES)'), -- id 69
('MANAGEMENTUL CREATIVITĂŢII (MC)'), -- id 70
('CHIMIE-ELEMENTE DE ELECTROCHIMIE (C-EEC)'), -- id 71
('ANALIZA MATEMATICA (AM)'), -- id 72
('MATEMATICI SPECIALE (MS)'), -- id 73
('MASURAREA MARIMILOR ELECTRICE SI NEELECTRICE (MMEN)'), -- id 74
('TEORIA CIRCUITELOR ELECTRICE I (TCE I)'), -- id 75
('ALGEBRA LINIARA, GEOMETRIE ANALITICA SI DIFERENTIALA (ALGAD)'), -- id 76
('BAZE DE DATE IN ENERGETICĂ (BDE)'), -- id 77
('PROCESAREA CUNOŞTINŢELOR ŞI CALCUL INTELIGENT (PCCI)'), -- id 78
('METODE NUMERICE (MN)'), -- id 79
('OPTIMIZ. ASIST. DE CALC. A CIRC. ELECTRICE (OACC)'), -- id 80
('MODELAREA ȘI SIMULAREA PROCESELOR ENERGETICE (MSPE)'), -- id 81
('TEHNICI DE COMUTAŢIE (TC)'), -- id 82
('DEZV. DURABILA SI ECOCONCEPTIA PRODUSELOR ELECTROTEHNICE (DDEPE)'), -- id 83
('METODE DE OPTIMIZARE (MO)'), -- id 84
('MATERIALE ELECTROTEHNICE (ME)'), -- id 85
('BAZELE ELECTROTEHNICII (BE)'), -- id 86
('ELECTROSECURITATE (E)'), -- id 87
('FIABILITATE ŞI RISC INDUSTRIAL (FRI)'), -- id 88
('PRODUCEREA ŞI DISTRIBUŢIA ENERGIEI ELECTRICE (PDEE)'), -- id 89
('MANAGEMENT (MG)'), -- id 90
('FIABILITATE ŞI STRATEGII DE MENTENANŢĂ (FSM)'), -- id 91
('MĂSURĂRI ELECTRICE ȘI ELECTRONICE II (MEE II)'), -- id 92
('MEETROLOGIE ŞI CERTIFICARE (MEEC'); -- id 93






/* Inserare date in tabelul Laboratoare */
INSERT INTO Laboratoare (nume_laborator, cladirea) VALUES
-- ('E-312', 'Cladirea Facultatii IEEIA'), -- id 1
-- ('E-302', 'Cladirea Facultatii IEEIA'), -- id 2
-- ('E-204', 'Cladirea Facultatii IEEIA'), -- id 3
-- ('E-303', 'Cladirea Facultatii IEEIA'); -- id 4
-- ('E-3','Cladirea Facultatii IEEIA'), -- id 5
-- ('E-4','Cladirea Facultatii IEEIA'); -- id 6
-- ('E-003','Cladirea Facultatii IEEIA'), -- id 7
-- ('E-402','Cladirea Facultatii IEEIA'); -- id 8
-- ('E-205','Cladirea Facultatii IEEIA'), -- id 9
-- ('E-313','Cladirea Facultatii IEEIA'); -- id 10
-- ('E-2','Cladirea Facultatii IEEIA'); -- id 11
-- ('E-401','Cladirea Facultatii IEEIA'); -- id 12
-- ('EN-310','Cladirea pentru Energetic'); -- id 13
-- ('ETH-113','Tex 6'); -- id 14
-- ('ETH-216','Cladirea pentru Energetic'); -- id 15
-- ('EN-306','Cladirea pentru Energetic'), -- id 16
-- ('EN-216','Cladirea pentru Energetic'); -- id 17
-- ('EN-012','Cladirea pentru Energetic'); -- id 18
-- ('Tex6-102','Tex 6'); -- id 19
-- ('Tex6-114','Tex 6'); -- id 20
-- ('EN-203','Cladirea pentru Energetic'), -- id 21
-- ('EN-210','Cladirea pentru Energetic'); -- id 22
-- ('EN-119','Cladirea pentru Energetic'), -- id 23
-- ('EN-212','Cladirea pentru Energetic'), -- id 24
-- ('EN-202','Cladirea pentru Energetic'), -- id 25
-- ('EN-015','Cladirea pentru Energetic'), -- id 26
-- ('E-407','Cladirea Facultatii IEEIA'), -- id 27
-- ('Tex6-101','Tex 6'), -- id 28
-- ('E-504','Cladirea Facultatii IEEIA'), -- id 29
-- ('EN-103','Cladirea pentru Energetic'), -- id 30
-- ('EN-306','Cladirea pentru Energetic'), -- id 31
-- ('EN-003','Cladirea pentru Energetic'); -- id 32
-- ('ETH-115','Cladirea pentru Energetic'), -- id 33
-- ('EN-014','Cladirea pentru Energetic'); -- id 34
-- ('E-411','Cladirea Facultatii IEEIA'), -- id 35
-- ('E-407','Cladirea Facultatii IEEIA'), -- id 36
-- ('EN-013','Cladirea pentru Energetic'); -- id 37
-- ('E-301','Cladirea Facultatii IEEIA'), -- id 38
-- ('E-1','Cladirea Facultatii IEEIA'), -- id 39
-- ('E-407','Cladirea Facultatii IEEIA'), -- id 40
-- ('E-411','Cladirea Facultatii IEEIA'); -- id 41
('EN-204','Cladirea pentru Energetic'), -- id 42
('E-102','Cladirea Facultatii IEEIA'), -- id 43
('EN-213','Cladirea pentru Energetic'), -- id 44
('EN-114','Cladirea pentru Energetic'), -- id 45
('EN-104','Cladirea pentru Energetic'); -- id 46


/* Inserare date in tabelul Orar */
INSERT INTO Orar (id_profesor, id_materie, id_laborator, ora_inceput, ora_sfarsit, ziua) VALUES
-- (1, 1, 1, '12:00:00', '14:00:00', 'Marti'),
-- (1, 1, 1, '08:00:00', '12:00:00', 'Miercuri'),profesori
-- (2, 2, 2, '08:00:00', '12:00:00', 'Joi'),
-- (2, 2, 2, '08:00:00', '10:00:00', 'Vineri'),
-- (3, 3, 3, '08:00:00', '14:00:00', 'Luni'),
-- (3, 3, 3, '08:00:00', '14:00:00', 'Joi'),
-- (4, 4, 4, '10:00:00', '16:00:00', 'Miercuri');

-- /* Orar pentru domnul Cristian Zet */
-- (5, 6, 1, '08:00:00', '14:00:00', 'Luni'),
-- (5, 6, 6, '10:00:00', '12:00:00', 'Marti'),
-- (5, 6, 4, '14:00:00', '16:00:00', 'Marti'),
-- (5, 5, 1, '08:00:00', '10:00:00', 'Miercuri'),
-- (5, 5, 4, '16:00:00', '18:00:00', 'Miercuri'),
-- (5, 5, 5, '18:00:00', '20:00:00', 'Miercuri'),
-- (5, 6, 4, '08:00:00', '10:00:00', 'Joi'),
-- (5, 5, 4, '14:00:00', '16:00:00', 'Joi'),
-- (5, 5, 1, '08:00:00', '12:00:00', 'Vineri'),
-- (5, 5, 4, '14:00:00', '16:00:00', 'Vineri');

-- /* Orar pentru domnul Lunca */
-- (6, 7, 7, '10:00:00', '12:00:00', 'Marti'),
-- (6, 7, 7, '08:00:00', '12:00:00', 'Miercuri'),
-- (6, 8, 7, '08:00:00', '10:00:00', 'Luni'),
-- (6, 8, 8, '10:00:00', '12:00:00', 'Luni'),
-- (6, 8, 7, '12:00:00', '14:00:00', 'Luni'),
-- (6, 8, 7, '12:00:00', '14:00:00', 'Miercuri');

-- /* Orar pentru domnul Catalin Damian */
-- (7, 9, 3, '09:00:00', '13:00:00', 'Vineri'),
-- (7, 10, 5, '08:00:00', '12:00:00', 'Miercuri');

-- /* Orar pentru domnul Alexandru Florentin Trandabat */
-- (8, 11, 9, '10:00:00', '12:00:00', 'Marti'),
-- (8, 11, 9, '08:00:00', '14:00:00', 'Miercuri'),
-- (8, 11, 6, '08:00:00', '14:00:00', 'Joi'),
-- (8, 12, 1, '16:00:00', '20:00:00', 'Luni'),
-- (8, 12, 10, '16:00:00', '20:00:00', 'Miercuri');

-- /* Orar pentru domnul Marius Valerian Paulet */
-- (9, 13, 10, '16:00:00', '18:00:00', 'Miercuri'),
-- (9, 14, 1, '14:00:00', '16:00:00', 'Luni'),
-- (9, 14, 1, '08:00:00', '16:00:00', 'Marti'),
-- (9, 14, 11, '10:00:00', '12:00:00', 'Miercuri'),
-- (9, 14, 1, '08:00:00', '10:00:00', 'Joi'),
-- (9, 14, 1, '12:00:00', '14:00:00', 'Joi'),
-- (9, 15, 5, '16:00:00', '18:00:00', 'Luni'),
-- (9, 15, 10, '18:00:00', '20:00:00', 'Luni');

-- /* Orar pentru domnul Silviu Ionut Ursache */
-- (10, 16, 12, '18:00:00', '20:00:00', 'Luni'),
-- (10, 16, 12, '16:00:00', '18:00:00', 'Marti'),
-- (10, 16, 12, '16:00:00', '18:00:00', 'Miercuri'),
-- (10, 17, 6, '14:00:00', '16:00:00', 'Marti'),
-- (10, 17, 7, '14:00:00', '16:00:00', 'Miercuri'),
-- (10, 17, 7, '10:00:00', '12:00:00', 'Joi');

-- /* Orar pentru domnul Danut Constantin Irimia */
-- (11, 18, 4, '14:00:00', '16:00:00', 'Luni'),
-- (11, 5, 4, '09:00:00', '10:00:00', 'Miercuri'),
-- (11, 5, 4, '16:00:00', '18:00:00', 'Miercuri'),
-- (11, 5, 5, '18:00:00', '20:00:00', 'Miercuri'),
-- (11, 5, 4, '14:00:00', '16:00:00', 'Vineri'),
-- (11, 19, 4, '18:00:00', '20:00:00', 'Vineri');

/* Orar pentru domnul Sticea Daniel Adrian */
-- (12, 20, 13, '08:00:00', '10:00:00', 'Joi'),
-- (12, 22, 13, '16:00:00', '18:00:00', 'Luni'),
-- (12, 22, 13, '08:00:00', '10:00:00', 'Miercuri'),
-- (12, 22, 13, '16:00:00', '18:00:00', 'Joi'),
-- (12, 21, 13, '16:00:00', '18:00:00', 'Luni');

/* Orar pentru domnul Anamaria Hariton */
-- (13, 23, 1, '08:00:00', '14:00:00', 'Luni'),
-- (13, 23, 4, '14:00:00', '16:00:00', 'Marti'),
-- (13, 23, 4, '08:00:00', '10:00:00', 'Joi');

/* Orar pentru domnul Bogdan Virlan */
-- (14, 24, 14, '16:00:00', '20:00:00', 'Joi'),
-- (14, 25, 14, '16:00:00', '18:00:00', 'Marti');

/* Orar pentru domnul Alin Dragomir */
-- (15, 26, 15, '08:00:00', '13:00:00', 'Joi');

/* Orar pentru domnul Andrusca Mihai */
-- (16, 27, 16, '10:00:00', '14:00:00', 'Marti'),
-- (16, 28, 17, '08:00:00', '16:00:00', 'Luni'),
-- (16, 29, 16, '14:00:00', '16:00:00', 'Miercuri'),
-- (16, 30, 16, '17:00:00', '20:00:00', 'Vineri');

-- /* Orar pentru domnul Elena Serea */
-- (17, 31, 18, '17:00:00', '20:00:00', 'Joi'),
-- (17, 32, 18, '16:00:00', '20:00:00', 'Luni'),
-- (17, 32, 18, '14:00:00', '16:00:00', 'Marti');

/* Orar pentru domnul Vasile Horga */
-- (18, 33, 13, '08:00:00', '10:00:00', 'Miercuri'),
-- (18, 34, 19, '10:00:00', '13:00:00', 'Joi');

-- /* Orar pentru domnul Daniel Petrisor */
-- (19, 35, 9, '14:00:00', '16:00:00', 'Luni'),
-- (19, 35, 9, '16:00:00', '20:00:00', 'Luni'),
-- (19, 35, 9, '16:00:00', '20:00:00', 'Miercuri'),
-- (19, 36, 3, '16:00:00', '18:00:00', 'Joi'),
-- (19, 35, 9, '10:00:00', '12:00:00', 'Vineri');

/* Orar pentru domnul Asiminicesei Oana-Maria */
-- (20, 37, 10, '12:00:00', '14:00:00', 'Luni'),
-- (20, 37, 10, '08:00:00', '10:00:00', 'Marti'),
-- (20, 37, 10, '14:00:00', '16:00:00', 'Marti'),
-- (20, 37, 10, '08:00:00', '10:00:00', 'Miercuri'),
-- (20, 37, 10, '08:00:00', '14:00:00', 'Joi'),
-- (20, 37, 10, '08:00:00', '16:00:00', 'Vineri'),
-- (20, 38, 6, '16:00:00', '20:00:00', 'Vineri');

/* Orar pentru domnul Leonard Livadaru */
-- (21, 39, 5, '10:00:00', '12:00:00', 'Miercuri'),
-- (21, 40, 20, '09:00:00', '12:00:00', 'Joi'),
-- (21, 40, 20, '14:00:00', '20:00:00', 'Joi');	

-- /* Orar pentru domnul Gheorghe Grigoras */
-- (22, 41, 21, '11:00:00', '13:00:00', 'Luni'),
-- (22, 41, 21, '08:00:00', '10:00:00', 'Marti'),
-- (22, 41, 21, '10:00:00', '12:00:00', 'Marti'),
-- (22, 42, 22, '08:00:00', '11:00:00', 'Luni'),
-- (22, 42, 21, '11:00:00', '13:00:00', 'Luni'),
-- (22, 43, 21, '16:00:00', '20:00:00', 'Marti'),
-- (22, 43, 21, '16:00:00', '18:00:00', 'Joi');


-- /* Orar pentru domnul Marcel Istrate */
-- (23, 44, 23, '17:00:00', '20:00:00', 'Luni'),
-- (23, 45, 23, '17:00:00', '20:00:00', 'Marti'),
-- (23, 46, 23, '09:00:00', '12:00:00', 'Joi'),

-- /* Orar pentru domnul Bogdan Neagu */
-- (24, 47, 24, '16:00:00', '20:00:00', 'Luni'),
-- (24, 48, 24, '18:00:00', '20:00:00', 'Miercuri'),
-- (24, 49, 24, '14:00:00', '16:00:00', 'Luni'),
-- (24, 49, 24, '14:00:00', '16:00:00', 'Marti'),
-- (24, 50, 25, '10:00:00', '12:00:00', 'Miercuri'),
-- (24, 50, 25, '16:00:00', '18:00:00', 'Miercuri'),
-- (24, 51, 25, '08:00:00', '10:00:00', 'Marti'),
-- (24, 51, 26, '14:00:00', '16:00:00', 'Miercuri'),

-- /* Orar pentru domnul Nituca Costica */
-- (25, 52, 27, '14:00:00', '16:00:00', 'Luni'),
-- (25, 52, 28, '14:00:00', '16:00:00', 'Luni S.P.'),

-- /* Orar pentru domnul Olga Plopa */
-- (26, 48, 29, '17:00:00', '20:00:00', 'Miercuri'),

-- /* Orar pentru domnul Ciprian Nemes */
-- (27, 54, 30, '17:00:00', '20:00:00', 'Miercuri'),

-- /* Orar pentru domnul Maricel Adam */
-- (28, 28, 31, '09:00:00', '12:00:00', 'Miercuri'),
-- (28, 55, 31, '09:00:00', '10:00:00', 'Joi'),
-- (28, 55, 32, '10:00:00', '12:00:00', 'Joi'),
-- (28, 56, 31, '17:00:00', '20:00:00', 'Joi');

-- /* Orar pentru domnul Marian Poboroniuc  */
-- (29, 57, 11, '10:00:00', '13:00:00', 'Luni'),
-- (29, 57, 11, '17:00:00', '18:00:00', 'Luni'),
-- (29, 19, 4, '16:00:00', '18:00:00', 'Marti');

-- /* Orar pentru domnul Adrian Munteanu */
-- (30, 58, 20, '09:00:00', '15:00:00', 'Luni'),
-- (30, 58, 20, '10:00:00', '12:00:00', 'Marti'),
-- (30, 58, 20, '09:00:00', '12:00:00', 'Miercuri'),
-- (30, 59, 33, '16:00:00', '18:00:00', 'Luni'),
-- (30, 59, 33, '18:00:00', '20:00:00', 'Luni'),

-- /* Orar pentru domnul Razvan Beniuga */
-- (31, 60, 34, '12:00:00', '14:00:00', 'Luni'),
-- (31, 60, 34, '14:00:00', '16:00:00', 'Luni'),
-- (31, 62, 34, '16:00:00', '18:00:00', 'Marti'),
-- (31, 62, 34, '18:00:00', '20:00:00', 'Marti'),
-- (31, 61, 34, '08:00:00', '10:00:00', 'Miercuri'),
-- (31, 61, 34, '12:00:00', '14:00:00', 'Miercuri'),
-- (31, 63, 34, '16:00:00', '18:00:00', 'Miercuri'),
-- (31, 64, 34, '16:00:00', '20:00:00', 'Luni'),

-- /* Orar pentru domnul Mihai Gavrilas */
-- (32, 65, 24, '10:00:00', '12:00:00', 'Marti'),
-- (32, 66, 24, '16:00:00', '20:00:00', 'Marti'),
-- (32, 50, 24, '10:00:00', '12:00:00', 'Miercuri'),
-- (32, 48, 24, '16:00:00', '20:00:00', 'Miercuri');


-- /* Orar pentru domnul Georgel Paicu */
-- (33, 32, 16, '08:00:00', '16:00:00', 'Luni'),
-- (33, 67, 35, '12:00:00', '14:00:00', 'Marti'),
-- (33, 67, 35, '10:00:00', '14:00:00', 'Joi S.I.'),
-- (33, 32, 16, '10:00:00', '12:00:00', 'Marti'),
-- (33, 70, 35, '16:00:00', '18:00:00', 'Marti S.I.'),
-- (33, 70, 18, '18:00:00', '20:00:00', 'Marti S.P.'),
-- (33, 70, 18, '16:00:00', '18:00:00', 'Marti S.I.'),
-- (33, 69, 35, '16:00:00', '18:00:00', 'Joi'),
-- (33, 69, 37, '18:00:00', '19:00:00', 'Joi S.P.');

-- /* Orar pentru doamna Mihaela Aradoaei */
-- (34, 71, 31, '08:00:00', '10:00:00', 'Luni'),
-- (34, 71, 31, '12:00:00', '14:00:00', 'Luni'),
-- (34, 71, 31, '08:00:00', '10:00:00', 'Marti'),
-- (34, 71, 31, '12:00:00', '14:00:00', 'Marti'),
-- (34, 71, 31, '08:00:00', '14:00:00', 'Joi'),

-- /* Orar pentru doamna Monica-Dana Burlica */
-- (35, 72, 39, '08:00:00', '10:00:00', 'Luni'),
-- (35, 72, 39, '10:00:00', '12:00:00', 'Luni'),
-- (35, 72, 40, '12:00:00', '14:00:00', 'Luni'),
-- (35, 72, 5, '08:00:00', '10:00:00', 'Marti'),
-- (35, 72, 12, '08:00:00', '10:00:00', 'Miercuri'),
-- (35, 72, 41, '10:00:00', '14:00:00', 'Miercuri'),
-- (35, 72, 12, '14:00:00', '16:00:00', 'Miercuri'),
-- (35, 72, 12, '08:00:00', '12:00:00', 'Joi'),
-- (35, 72, 39, '14:00:00', '18:00:00', 'Joi'),
-- (35, 73, 39, '18:00:00', '20:00:00', 'Miercuri'),
-- (35, 73, 39, '18:00:00', '20:00:00', 'Joi'),

-- /* Orar pentru domnul Silviu-Constantin Vornicu */
-- (36, 8, 7, '12:00:00', '14:00:00', 'Miercuri'),
-- (36, 74, 5, '12:00:00', '14:00:00', 'Joi'),
-- (36, 74, 7, '16:00:00', '20:00:00', 'Joi'),
-- (36, 74, 7, '08:00:00', '12:00:00', 'Vineri'),

-- /* Orar pentru doamna Ramona Simionescu */
-- (37, 75, 19, '16:00:00', '20:00:00', 'Joi');


/* Orar pentru doamna Oana Tarniceriu */
(38, 76, 6, '10:00:00', '14:00:00', 'Luni'),
(38, 76, 27, '14:00:00', '16:00:00', 'Luni'),
(38, 76, 12, '08:00:00', '18:00:00', 'Marti'),
(38, 76, 12, '10:00:00', '12:00:00', 'Miercuri'),
(38, 76, 39, '14:00:00', '16:00:00', 'Miercuri'),
(38, 76, 12, '16:00:00', '18:00:00', 'Miercuri S.P.'),

/* Orar pentru domnul Ovidiu Ivanov */
(39, 37, 42, '12:00:00', '14:00:00', 'Luni S.I.'),
(39, 37, 10, '16:00:00', '18:00:00', 'Marti S.P.'),
(39, 37, 42, '10:00:00', '12:00:00', 'Miercuri S.I.'),
(39, 37, 42, '12:00:00', '14:00:00', 'Joi S.I.'),
(39, 37, 12, '16:00:00', '18:00:00', 'Joi'),
(39, 65, 42, '08:00:00', '10:00:00', 'Luni'),
(39, 65, 24, '10:00:00', '12:00:00', 'Luni'),
(39, 65, 42, '13:00:00', '15:00:00', 'Miercuri'),
(39, 77, 42, '16:00:00', '18:00:00', 'Vineri'),
(39, 78, 42, '16:00:00', '18:00:00', 'Luni'),

/* Orar pentru domnul Vlad Scarlatache */
(40, 79, 11, '08:00:00', '10:00:00', 'Marti'),
(40, 79, 21, '10:00:00', '14:00:00', 'Miercuri'),
(40, 79, 21, '08:00:00', '14:00:00', 'Vineri'),
(40, 80, 6, '16:00:00', '20:00:00', 'Luni'),
(40, 80, 43, '08:00:00', '12:00:00', 'Miercuri'),
(40, 80, 43, '08:00:00', '10:00:00', 'Joi'),
(40, 81, 26, '08:00:00', '14:00:00', 'Luni'),

/* Orar pentru domnul Dragos Astanei */
(41, 83, 44, '17:00:00', '20:00:00', 'Luni'),
(41, 82, 44, '10:00:00', '13:00:00', 'Joi'),

/* Orar pentru domnul Ursan George-Andrei */
(42, 84, 29, '17:00:00', '20:00:00', 'Joi'),

/* Orar pentru domnul Marius Olariu */
(43, 85, 11, '14:00:00', '16:00:00', 'Miercuri'),

/* Orar pentru domnul Sebastian Aradoaei */
(44, 86, 43, '16:00:00', '20:00:00', 'Luni'),
(44, 86, 27, '09:00:00', '12:00:00', 'Miercuri'),

/* Orar pentru domnul Dragos Machidon */
(45, 87, 45, '10:00:00', '12:00:00', 'Luni'),
(45, 87, 45, '12:00:00', '16:00:00', 'Marti'),
(45, 87, 45, '10:00:00', '12:00:00', 'Miercuri'),
(45, 46, 23, '13:00:00', '16:00:00', 'Luni'),
(45, 46, 23, '16:00:00', '19:00:00', 'Marti'),
(45, 46, 23, '13:00:00', '16:00:00', 'Miercuri'),

/* Orar pentru doamna Florina Scarlatache */
(46, 79, 11, '08:00:00', '10:00:00', 'Marti'),
(46, 79, 21, '08:00:00', '14:00:00', 'Miercuri'),
(46, 79, 21, '08:00:00', '14:00:00', 'Vineri'),
(46, 81, 26, '08:00:00', '14:00:00', 'Luni'),
(46, 42, 21, '10:00:00', '12:00:00', 'Joi'),

/* Orar pentru domnul Florin Baiceanu */
(47, 88, 46, '08:00:00', '16:00:00', 'Luni'),
(47, 88, 11, '10:00:00', '12:00:00', 'Marti'),
(47, 90, 30, '12:00:00', '14:00:00', 'Marti'),
(47, 91, 30, '14:00:00', '16:00:00', 'Marti'),
(47, 89, 46, '08:00:00', '10:00:00', 'Miercuri'),
(47, 89, 46, '14:00:00', '16:00:00', 'Miercuri'),
(47, 89, 46, '16:00:00', '18:00:00', 'Miercuri'),


/* Orar pentru domnul Donciu Codrin */
(48, 92, 25, '08:00:00', '10:00:00', 'Luni'),
(48, 92, 5, '12:00:00', '14:00:00', 'Luni'),
(48, 92, 25, '16:00:00', '20:00:00', 'Luni'),
(48, 92, 25, '08:00:00', '12:00:00', 'Marti'),
(48, 92, 25, '12:00:00', '16:00:00', 'Miercuri'),
(48, 92, 25, '10:00:00', '14:00:00', 'Joi'),
(48, 93, 25, '14:00:00', '20	:00:00', 'Marti');

-- /* Editare ziua, materiei cu id 10, din Orarul profesorului Catalin Damian */
-- UPDATE Orar
-- SET ziua = 'Marti'
-- WHERE id_profesor = 7 && id_materie = 10;

-- DELETE FROM Orar
-- WHERE id_profesor = 13 && id_materie = 22;

-- DELETE FROM Orar
-- WHERE id_profesor > 8;

-- DELETE FROM Profesori
-- WHERE id_profesor = 16;

-- DELETE FROM Materii
-- WHERE id_materie > 19;

-- DELETE FROM Laboratoare
-- WHERE id_laborator > 14;

SELECT p.nume AS Profesor, p.email AS Email, m.nume_materie AS Materie, l.nume_laborator AS Laborator, l.cladirea AS Cladirea, o.ora_inceput, o.ora_sfarsit, o.ziua
FROM Orar o
JOIN Profesori p ON o.id_profesor = p.id_profesor
JOIN Materii m ON o.id_materie = m.id_materie
JOIN Laboratoare l ON o.id_laborator = l.id_laborator
WHERE p.nume = 'Florina Scarlatache';







