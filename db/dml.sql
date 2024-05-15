create database square_map;
use square_map;

CREATE TABLE location (
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE,
    lat DOUBLE NOT NULL,
    lng DOUBLE NOT NULL,
    CONSTRAINT pk_bd_location PRIMARY KEY (id)
);

INSERT INTO location (id, name, lat, lng) VALUES
(1, 'Shahbag', 23.7348, 90.3929),
(2, 'Dhanmondi', 23.7465, 90.3760),
(3, 'Gulshan', 23.7915, 90.4156),
(4, 'Uttara', 23.8759, 90.3915),
(5, 'Banani', 23.7940, 90.4153),
(6, 'Mirpur', 23.8223, 90.3654),
(7, 'Mohammadpur', 23.7639, 90.3610),
(8, 'Farmgate', 23.7537, 90.3844),
(9, 'Motijheel', 23.7345, 90.4146),
(10, 'Karwan Bazar', 23.7503, 90.4035),
(11, 'New Market', 23.7303, 90.4081),
(12, 'Science Laboratory', 23.7368, 90.3779),
(13, 'Lalbagh', 23.7115, 90.4088),
(14, 'Badda', 23.7876, 90.4236),
(15, 'Rampura', 23.7622, 90.4173),
(16, 'Mohakhali', 23.7799, 90.4066),
(17, 'Khilgaon', 23.7384, 90.4334),
(18, 'Pallabi', 23.8313, 90.3632),
(19, 'Banasree', 23.7740, 90.4335),
(20, 'Baridhara', 23.8037, 90.4231),
(21, 'Niketon', 23.7974, 90.4043),
(22, 'Wari', 23.7154, 90.4035),
(23, 'Jatrabari', 23.7191, 90.4557),
(24, 'Mirpur DOHS', 23.8213, 90.3683),
(25, 'Baily Road', 23.7294, 90.4023),
(26, 'Mohakhali DOHS', 23.7993, 90.4082),
(27, 'Shyamoli', 23.7607, 90.3714),
(28, 'Banglamotor', 23.7486, 90.3852),
(29, 'Malibagh', 23.7484, 90.4290),
(30, 'Rampura Bridge', 23.7593, 90.4272),
(31, 'Hazaribagh', 23.7247, 90.4167),
(32, 'Azimpur', 23.7211, 90.3880),
(33, 'Tejgaon', 23.7617, 90.4064),
(34, 'Kamalapur', 23.7313, 90.4164),
(35, 'Agargaon', 23.7753, 90.3715),
(36, 'Mirpur-10', 23.8129, 90.3630),
(37, 'Mirpur-1', 23.8052, 90.3656),
(38, 'Mohammadpur Town Hall', 23.7678, 90.3606),
(39, 'Mohammadpur Bus Stand', 23.7651, 90.3624),
(40, 'Kalabagan', 23.7494, 90.3748),
(41, 'Shantinagar', 23.7311, 90.4178),
(42, 'Hatirpool', 23.7443, 90.3926),
(43, 'Mohakhali Bus Stand', 23.7889, 90.4080),
(44, 'Bongshal', 23.7151, 90.4093),
(45, 'Gulistan', 23.7226, 90.4165),
(46, 'Malibagh Railgate', 23.7523, 90.4292),
(47, 'Malibagh Mor', 23.7546, 90.4228),
(48, 'Kuril Biswa Road', 23.8056, 90.4254);


create table user (
    id			BIGINT NOT NULL auto_increment,
    username 	VARCHAR(100) NOT NULL,
    password 	VARCHAR(20) NOT NULL,
    email 		VARCHAR(100) NOT NULL,
    CONSTRAINT pk_user_id PRIMARY KEY (id),
    CONSTRAINT uk_user_username UNIQUE (username),
    CONSTRAINT uk_user_email UNIQUE (email)
);

create table role(
    id         INT auto_increment,
    role_type  VARCHAR(20) NOT NULL,
    CONSTRAINT pk_role_id PRIMARY KEY (id),
    CONSTRAINT uk_role_role_type UNIQUE (role_type)
);


create table user_role (
    user_id BIGINT NOT NULL,
    role_id INT NOT NULL,
    CONSTRAINT pk_user_role PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_user_role_user_id FOREIGN KEY (user_id) REFERENCES user(id),
    CONSTRAINT fk_user_role_role_id FOREIGN KEY (role_id) REFERENCES role(id)
);

insert into role(id, role_type) values
(1, 'ADMIN'),
(2, 'USER');

insert into user (username, password, email) VALUES
('manager', 'manager', 'manager@email.com'),
('admin', 'admin', 'admin@email.com');

insert into user_role(user_id, role_id) values
(1, 1),
(1, 2),
(2, 2);

select u.username, r.role_type from user u
join user_role ur on u.id = ur.user_id
join role r on r.id = ur.role_id;

# ------------------------------------------------------------

create table vendor(
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(200) UNIQUE,
    CONSTRAINT pk_vendor PRIMARY KEY (id)
);

INSERT INTO vendor (id, name) VALUES
    (1, 'ACI Limited'),
    (2, 'ACME Laboratories Ltd'),
    (3, 'Beximco Pharmaceuticals Ltd'),
    (4, 'Square Pharmaceuticals PLC'),
    (5, 'Renata Limited');

create table generic(
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(200) UNIQUE,
    CONSTRAINT pk_generic PRIMARY KEY (id)
);

INSERT INTO generic (id, name) VALUES
(1, 'Rabeprazole Sodium'),
(2, 'Amlodipine Besilate + Olmesartan Medoxomil'),
(3, 'Insulin Human [rDNA]'),
(4, 'Miconazole Nitrate'),
(5, 'Olmesartan Medoxomil'),
(6, 'Montelukast Sodium'),
(7, 'Esomeprazole'),
(8, 'Domperidone Maleate'),
(9, 'Omeprazole'),
(10, 'Salmeterol + Fluticasone Propionate'),
(11, 'Paracetamol + Caffeine'),
(12, 'Atorvastatin Calcium'),
(13, 'Azithromycin Dihydrate'),
(14, 'Vitamin C [Ascorbic acid]'),
(15, 'Cetirizine Hydrochloride'),
(16, 'Ciprofloxacin'),
(17, 'Tiemonium Methylsulphate'),
(18, 'Levothyroxine Sodium'),
(19, 'Fexofenadine Hydrochloride'),
(20, 'Cefuroxime Axetil + Clavulanic Acid'),
(21, 'Paracetamol');

create table drug(
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE,
    formation VARCHAR(100),
    strength VARCHAR(100),
    vendor_id BIGINT,
    generic_id BIGINT,
    CONSTRAINT pk_drug_brand PRIMARY KEY (id),
    CONSTRAINT fk_company_id FOREIGN KEY (vendor_id) REFERENCES vendor(id),
    CONSTRAINT fk_generic_id FOREIGN KEY (generic_id) REFERENCES generic(id)
);

INSERT INTO drug (id, name, formation, vendor_id, generic_id) VALUES
(1, 'Paricel', NULL, 1, 1),
(2, 'Abecab', NULL, 1, 2),
(3, 'Diasulin', NULL, 1, 3),
(4, 'Micoral', NULL, 1, 4),
(5, 'Abetis', NULL, 1, 5),
(6, 'Monas', NULL, 2, 6),
(7, 'Maxima', NULL, 2, 7),
(8, 'Don-A', NULL, 2, 8),
(9, 'PPI', NULL, 2, 9),
(10, 'Salflu', NULL, 2, 10),
(11, 'Napa Extra', NULL, 3, 11),
(12, 'Bizoran', NULL, 3, 2),
(13, 'Atova', NULL, 3, 12),
(14, 'Acifix', NULL, 3, 1),
(15, 'Napa', NULL, 3, 21),
(16, 'Seclo', NULL, 4, 9),
(17, 'Zimax', NULL, 4, 13),
(18, 'Ceevit', NULL, 4, 14),
(19, 'Alatrol', NULL, 4, 15),
(20, 'Ciprocin', NULL, 4, 16),
(21, 'Maxpro', NULL, 5, 7),
(22, 'Algin', NULL, 5, 17),
(23, 'Thyrox', NULL, 5, 18),
(24, 'Fenadin', NULL, 5, 19),
(25, 'Furoclav', NULL, 5, 20);

create table doctor(
    id BIGINT auto_increment unique,
    name VARCHAR(100),
    bmdc int UNIQUE NOT NULL,
    CONSTRAINT pk_doctor PRIMARY KEY (BMDC)
);

INSERT INTO doctor (id, name, bmdc) VALUES
    (1, 'Dr. Ashraful Islam', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
    (2, 'Dr. Zahid Hossain', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000),
    (3, 'Dr. Omar Ahmed', FLOOR(RAND() * (9999 - 1000 + 1)) + 1000);

create table prescription(
    id BIGINT AUTO_INCREMENT,
    bmdc_id int NOT NULL,
    location_id BIGINT NOT NULL ,
    CONSTRAINT pk_prescription PRIMARY KEY (id),
    CONSTRAINT fk_bmdc_id FOREIGN KEY (bmdc_id) REFERENCES doctor(bmdc),
    CONSTRAINT fk_location_id FOREIGN KEY (location_id) REFERENCES location(id)
);

-- Inserting prescriptions
-- Shahbag
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 1), (4777, 1), (5599, 1), (4515, 1), (4777, 1), (5599, 1), (4515, 1), (4777, 1), (5599, 1), (4515, 1);

-- Dhanmondi
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 2), (4777, 2), (5599, 2), (4515, 2), (4777, 2), (5599, 2), (4515, 2);

-- Gulshan
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 3), (4777, 3), (5599, 3), (4515, 3), (4777, 3), (5599, 3), (4515, 3), (4777, 3), (5599, 3), (4515, 3),
(4777, 3), (5599, 3), (4515, 3), (4777, 3), (5599, 3), (4515, 3), (4777, 3), (5599, 3), (4515, 3), (4777, 3);

-- Uttara
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 4), (4777, 4), (5599, 4), (4515, 4), (4777, 4);


-- Banani
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 5), (4777, 5), (5599, 5), (4515, 5), (4777, 5), (5599, 5), (4515, 5), (4777, 5), (5599, 5), (4515, 5),
(4777, 5), (5599, 5), (4515, 5), (4777, 5), (5599, 5), (4515, 5), (4777, 5), (5599, 5), (4515, 5), (4777, 5);

-- Mirpur
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 6), (4777, 6), (5599, 6), (4515, 6), (4777, 6);

-- Mohammadpur
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 7), (4777, 7), (5599, 7), (4515, 7), (4777, 7), (5599, 7), (4515, 7);

-- Farmgate
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 8), (4777, 8), (5599, 8), (4515, 8), (4777, 8), (5599, 8), (4515, 8), (4777, 8), (5599, 8), (4515, 8),
(4777, 8), (5599, 8);

-- Motijheel
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 9), (4777, 9), (5599, 9), (4515, 9), (4777, 9), (5599, 9), (4515, 9), (4777, 9), (5599, 9), (4515, 9);

-- Karwan Bazar
INSERT INTO prescription (bmdc_id, location_id) VALUES
(4515, 10), (4777, 10), (5599, 10), (4515, 10), (4777, 10), (5599, 10), (4515, 10), (4777, 10);


CREATE TABLE drug_prescription (
  drug_id    BIGINT NOT NULL,
  prescription_id BIGINT NOT NULL,
  CONSTRAINT pk_drug_prescription PRIMARY KEY (drug_id, prescription_id),
  CONSTRAINT fk_drug_id FOREIGN KEY (drug_id) REFERENCES drug(id),
  CONSTRAINT fk_prescription_id FOREIGN KEY (prescription_id) REFERENCES prescription(id)
);


INSERT INTO drug_prescription (drug_id, prescription_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37);


INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT drug_id, prescription_id
FROM (
    SELECT drug.id AS drug_id, prescription.id AS prescription_id
    FROM drug, prescription
    ORDER BY RAND()
) AS shuffled_data
LIMIT 100;

# ------------------------------------------------------------


select l.lat, l.lng, l.name, 'Napa' as "drug_name",
    (select count(*)
    from prescription p
    join location l on p.location_id = l.id
    join drug_prescription dp on p.id = dp.prescription_id
    join drug d on d.id = dp.drug_id
    where d.name = 'Napa' and l.name = 'Banani') as "count"
from location l where l.name = 'Banani';


select p.*
from prescription p
    join location l on p.location_id = l.id
    join drug_prescription dp on p.id = dp.prescription_id
    join drug d on d.id = dp.drug_id
where d.name = 'Paricel' and l.name = 'Shahbag';