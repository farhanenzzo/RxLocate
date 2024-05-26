create database square_map;
use square_map;

-- ----------------------------------------

CREATE TABLE division (
  id INT AUTO_INCREMENT,
  name VARCHAR(100),
  lat DECIMAL(10, 6),
  lng DECIMAL(10, 6),
  CONSTRAINT pk_division PRIMARY KEY (id)
);


INSERT INTO division (id, name, lat, lng) VALUES
  (1, 'Barishal', 22.701002, 90.353451),
  (2, 'Chattogram', 22.356851, 91.783182),
  (3, 'Dhaka', 23.810332, 90.412518),
  (4, 'Khulna', 22.845641, 89.540328),
  (5, 'Rajshahi', 24.363589, 88.624135),
  (6, 'Rangpur', 25.743892, 89.275227),
  (7, 'Sylhet', 24.894929, 91.868706),
  (8, 'Mymensingh', 24.747149, 90.420273);


CREATE TABLE district (
  id int AUTO_INCREMENT,
  division_id int NOT NULL,
  name VARCHAR(100),
  lat DECIMAL(10, 6),
  lng DECIMAL(10, 6),
  CONSTRAINT pk_district PRIMARY KEY (id),
  CONSTRAINT fk_district_division_id FOREIGN KEY (division_id) REFERENCES division(id)
);

INSERT INTO district (id, division_id, name, lat, lng) VALUES
   (1, 3, 'Dhaka', 23.7115253, 90.4111451),
   (2, 3, 'Faridpur', 23.6070822, 89.8429406),
   (3, 3, 'Gazipur', 24.0022858, 90.4264283),
   (4, 3, 'Gopalganj', 23.0050857, 89.8266059),
   (5, 8, 'Jamalpur', 24.937533, 89.937775),
   (6, 3, 'Kishoreganj', 24.444937, 90.776575),
   (7, 3, 'Madaripur', 23.164102, 90.1896805),
   (8, 3, 'Manikganj', 23.8644, 90.0047),
   (9, 3, 'Munshiganj', 23.5422, 90.5305),
   (10, 8, 'Mymensingh', 24.7471, 90.4203),
   (11, 3, 'Narayanganj', 23.63366, 90.496482),
   (12, 3, 'Narsingdi', 23.932233, 90.71541),
   (13, 8, 'Netrokona', 24.870955, 90.727887),
   (14, 3, 'Rajbari', 23.7574305, 89.6444665),
   (15, 3, 'Shariatpur', 23.2423, 90.4348),
   (16, 8, 'Sherpur', 25.0204933, 90.0152966),
   (17, 3, 'Tangail', 24.2513, 89.9167),
   (18, 5, 'Bogura', 24.8465228, 89.377755),
   (19, 5, 'Joypurhat', 25.0968, 89.0227),
   (20, 5, 'Naogaon', 24.7936, 88.9318),
   (21, 5, 'Natore', 24.420556, 89.000282),
   (22, 5, 'Nawabganj', 24.5965034, 88.2775122),
   (23, 5, 'Pabna', 23.998524, 89.233645),
   (24, 5, 'Rajshahi', 24.3745, 88.6042),
   (25, 5, 'Sirajgonj', 24.4533978, 89.7006815),
   (26, 6, 'Dinajpur', 25.6217061, 88.6354504),
   (27, 6, 'Gaibandha', 25.328751, 89.528088),
   (28, 6, 'Kurigram', 25.805445, 89.636174),
   (29, 6, 'Lalmonirhat', 25.9923, 89.2847),
   (30, 6, 'Nilphamari', 25.931794, 88.856006),
   (31, 6, 'Panchagarh', 26.3411, 88.5541606),
   (32, 6, 'Rangpur', 25.7558096, 89.244462),
   (33, 6, 'Thakurgaon', 26.0336945, 88.4616834),
   (34, 1, 'Barguna', 22.0953, 90.1121),
   (35, 1, 'Barishal', 22.7010, 90.3535),
   (36, 1, 'Bhola', 22.685923, 90.648179),
   (37, 1, 'Jhalokati', 22.6406, 90.1987),
   (38, 1, 'Patuakhali', 22.3596316, 90.3298712),
   (39, 1, 'Pirojpur', 22.5841, 89.9720),
   (40, 2, 'Bandarban', 22.1953275, 92.2183773),
   (41, 2, 'Brahmanbaria', 23.9570904, 91.1119286),
   (42, 2, 'Chandpur', 23.2332585, 90.6712912),
   (43, 2, 'Chattogram', 22.335109, 91.834073),
   (44, 2, 'Cumilla', 23.4682747, 91.1788135),
   (45, 2, 'Cox''s Bazar', 21.4272, 92.0058),
   (46, 2, 'Feni', 23.0159, 91.3976),
   (47, 2, 'Khagrachari', 23.119285, 91.984663),
   (48, 2, 'Lakshmipur', 22.942477, 90.841184),
   (49, 2, 'Noakhali', 22.869563, 91.099398),
   (50, 2, 'Rangamati', 22.7324, 92.2985),
   (51, 7, 'Habiganj', 24.374945, 91.41553),
   (52, 7, 'Maulvibazar', 24.482934, 91.777417),
   (53, 7, 'Sunamganj', 25.0658042, 91.3950115),
   (54, 7, 'Sylhet', 24.8897956, 91.8697894),
   (55, 4, 'Bagerhat', 22.651568, 89.785938),
   (56, 4, 'Chuadanga', 23.6401961, 88.841841),
   (57, 4, 'Jashore', 23.16643, 89.2081126),
   (58, 4, 'Jhenaidah', 23.5448176, 89.1539213),
   (59, 4, 'Khulna', 22.815774, 89.568679),
   (60, 4, 'Kushtia', 23.901258, 89.120482),
   (61, 4, 'Magura', 23.487337, 89.419956),
   (62, 4, 'Meherpur', 23.762213, 88.631821),
   (63, 4, 'Narail', 23.172534, 89.512672),
   (64, 4, 'Satkhira', 22.7185, 89.0705);

create table prescription(
     id BIGINT AUTO_INCREMENT,
     bmdc_id int NOT NULL,
     district_id INT NOT NULL ,
     CONSTRAINT pk_prescription PRIMARY KEY (id),
     CONSTRAINT fk_bmdc_id FOREIGN KEY (bmdc_id) REFERENCES doctor(bmdc),
     CONSTRAINT fk_district_id FOREIGN KEY (district_id) REFERENCES district(id)
);

INSERT INTO prescription (id, bmdc_id, district_id) VALUES
    (1, 1000, 1),
    (2, 1000, 1),
    (3, 1000, 1),
    (4, 1000, 1),
    (5, 1000, 1),
    (6, 1000, 1),
    (7, 1000, 1),
    (8, 1000, 1),
    (9, 1000, 1),
    (10, 1000, 1);

INSERT INTO prescription (id, bmdc_id, district_id) VALUES
    (11, 1001, 1),
    (12, 1002, 1);

INSERT INTO prescription (id, bmdc_id, district_id) VALUES
    (13, 1003, 2),
    (14, 1004, 2);

INSERT INTO prescription (id, bmdc_id, district_id) VALUES
    (15, 1005, 23),
    (16, 1005, 23);

-- -------------------------------------------
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
    (1, 'Dr. Ashraful Islam', 1000),
    (2, 'Dr. Zahid Hossain', 1001),
    (3, 'Dr. Omar Ahmed', 1002),
    (4, 'Dr. Fahmida Rahman', 1003),
    (5, 'Dr. Saifur Rahman', 1004),
    (6, 'Dr. Ayesha Siddiqua', 1005),
    (7, 'Dr. Nasrin Akter', 1006),
    (8, 'Dr. Kazi Hasan', 1007),
    (9, 'Dr. Mahbubur Rahman', 1008),
    (10, 'Dr. Taslima Begum', 1009),
    (11, 'Dr. Anisur Rahman', 1010),
    (12, 'Dr. Rasheda Chowdhury', 1011),
    (13, 'Dr. Shamsul Alam', 1012),
    (14, 'Dr. Farzana Haque', 1013),
    (15, 'Dr. Golam Mostafa', 1014),
    (16, 'Dr. Nilufa Yasmin', 1015),
    (17, 'Dr. Zakir Hossain', 1016),
    (18, 'Dr. Khaled Mahmud', 1017),
    (19, 'Dr. Razia Sultana', 1018),
    (20, 'Dr. Mahfuzur Rahman', 1019),
    (21, 'Dr. Humayun Kabir', 1020),
    (22, 'Dr. Ashraful Islam', 1021);

-- -----------------------------------------------------------------
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
     (3, 5);

INSERT INTO drug_prescription (drug_id, prescription_id) VALUES
     (1, 11),
     (1, 12);


INSERT INTO drug_prescription (drug_id, prescription_id) VALUES
     (1, 13),
     (1, 14);

INSERT INTO drug_prescription (drug_id, prescription_id) VALUES
     (1, 15),
     (1, 16);


# ------------------------------------------------------------


SELECT
    l.id AS districtId,
    l.name AS districtName,
    COUNT(DISTINCT p.id) AS prescriptionCount,
    l.lat,
    l.lng
FROM prescription p
     JOIN district l ON p.district_id = l.id
     JOIN drug_prescription dp ON p.id = dp.prescription_id
     JOIN drug d ON d.id = dp.drug_id
     JOIN division d2 ON l.division_id = d2.id
WHERE d.name = 'Napa' AND d2.name = 'Dhaka'
GROUP BY l.id, l.name;

-- ---------------------------------------------------------------

SELECT
    l.division_id,
    d2.name AS division_name,
    COUNT(DISTINCT p.id) AS prescription_count,
    d2.lat,
    d2.lng
FROM prescription p
     JOIN district l ON p.district_id = l.id
     JOIN drug_prescription dp ON p.id = dp.prescription_id
     JOIN drug d ON d.id = dp.drug_id
     JOIN division d2 ON l.division_id = d2.id
WHERE d.name = 'Napa'
GROUP BY l.division_id, d2.name;