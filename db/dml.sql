create database square_map;
use square_map;

-- ----------------------------------------

CREATE TABLE division (
    id   INT AUTO_INCREMENT,
    name VARCHAR(100),
    lat  DECIMAL(10, 6),
    lng  DECIMAL(10, 6),
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


CREATE TABLE district
(
    id          int AUTO_INCREMENT,
    division_id int NOT NULL,
    name        VARCHAR(100),
    lat         DECIMAL(10, 6),
    lng         DECIMAL(10, 6),
    CONSTRAINT pk_district PRIMARY KEY (id),
    CONSTRAINT fk_district_division_id FOREIGN KEY (division_id) REFERENCES division (id)
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

-- ------------------------------------------


CREATE TABLE area (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lat DECIMAL(10, 6) NOT NULL,
    lng DECIMAL(10, 6) NOT NULL,
    district_id INT NOT NULL,
    CONSTRAINT pk_area PRIMARY KEY (id),
    CONSTRAINT fk_district_id FOREIGN KEY (district_id) REFERENCES district (id)
);

INSERT INTO area (name, lat, lng, district_id) VALUES
    ('Faridpur Sadar', 23.6074, 89.8406, 2),
    ('Nagarkanda', 23.4086, 89.8404, 2),
    ('Bhanga', 23.4463, 90.0115, 2),
    ('Sadarpur', 23.4882, 90.0422, 2),
    ('Madhukhali', 23.5450, 89.6387, 2);

INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Tongi', 23.8915, 90.4020, 3),
   ('Kaliakair', 24.0984, 90.2686, 3),
   ('Kapasia', 24.1839, 90.5677, 3),
   ('Sreepur', 24.1990, 90.4809, 3),
   ('Gazipur Sadar', 23.9999, 90.4203, 3);


INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Madhabdi', 23.9190, 90.7189, 12),
   ('Narsingdi Sadar', 23.9250, 90.7178, 12),
   ('Palash', 23.9438, 90.6840, 12),
   ('Shibpur', 23.9364, 90.7802, 12),
   ('Raipura', 23.9038, 90.9041, 12);


INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Satkhira Sadar', 22.7157, 89.0712, 64),
   ('Tala', 22.7582, 89.2086, 64),
   ('Kalaroa', 22.8683, 89.0418, 64),
   ('Debhata', 22.5842, 88.9733, 64),
   ('Shyamnagar', 22.3360, 89.1023, 64);

INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Kaliganj', 23.4122, 89.0217, 58),
   ('Kotchandpur', 23.4001, 88.9976, 58),
   ('Shailkupa', 23.5757, 89.2221, 58),
   ('Harinakunda', 23.6202, 89.1580, 58),
   ('Moheshpur', 23.3833, 88.8158, 58);

INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Sunamganj Sadar', 25.0657, 91.3957, 53),
   ('Tahirpur', 25.1186, 91.3014, 53),
   ('Jamalganj', 25.0581, 91.2665, 53),
   ('Dharmapasha', 25.1026, 91.1093, 53),
   ('Derai', 25.1383, 91.4437, 53);

INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Daganbhuiyan', 23.0308, 91.3823, 46),
   ('Chhagalnaiya', 23.0081, 91.5101, 46),
   ('Parshuram', 23.2236, 91.4600, 46),
   ('Feni Sadar', 23.0176, 91.3966, 46),
   ('Fulgazi', 23.1000, 91.4333, 46);

INSERT INTO area (name, lat, lng, district_id) VALUES
   ('Gulshan', 23.7925, 90.4078, 1),
   ('Banani', 23.7896, 90.4006, 1),
   ('Dhanmondi', 23.7465, 90.3760, 1),
   ('Uttara', 23.8745, 90.4005, 1),
   ('Mohammadpur', 23.7515, 90.3588, 1),
   ('Mirpur', 23.8040, 90.3667, 1),
   ('Bashundhara', 23.8133, 90.4280, 1),
   ('Tejgaon', 23.7645, 90.3928, 1),
   ('Motijheel', 23.7326, 90.4265, 1),
   ('Paltan', 23.7340, 90.4132, 1),
   ('Shyamoli', 23.7691, 90.3619, 1),
   ('Khilgaon', 23.7501, 90.4285, 1),
   ('Badda', 23.7805, 90.4264, 1),
   ('Rampura', 23.7570, 90.4212, 1),
   ('Azimpur', 23.7278, 90.3922, 1);

-- -----------------------------------------------------------------------------------------

create table doctor
(
    id   BIGINT auto_increment unique,
    name VARCHAR(100),
    bmdc int UNIQUE NOT NULL,
    CONSTRAINT pk_doctor PRIMARY KEY (BMDC)
);

INSERT INTO doctor (id, name, bmdc)
VALUES (1, 'Dr. Ashraful Islam', 1000),
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

create table prescription (
    id          BIGINT AUTO_INCREMENT,
    bmdc_id     int NOT NULL,
    area_id INT NOT NULL,
    CONSTRAINT pk_prescription PRIMARY KEY (id),
    CONSTRAINT fk_bmdc_id FOREIGN KEY (bmdc_id) REFERENCES doctor (bmdc),
    CONSTRAINT fk_area_id FOREIGN KEY (area_id) REFERENCES area (id)
);


INSERT INTO prescription (id, bmdc_id, area_id) VALUES
    (131, 1013, 2),
    (132, 1013, 2),
    (133, 1013, 2),
    (134, 1013, 2),
    (135, 1013, 2),
    (136, 1013, 2),
    (137, 1013, 2),
    (138, 1013, 2),
    (139, 1013, 2),
    (140, 1013, 2);

-- -------------------------------------------
create table user
(
    id       BIGINT       NOT NULL auto_increment,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(20)  NOT NULL,
    email    VARCHAR(100) NOT NULL,
    CONSTRAINT pk_user_id PRIMARY KEY (id),
    CONSTRAINT uk_user_username UNIQUE (username),
    CONSTRAINT uk_user_email UNIQUE (email)
);

create table role
(
    id        INT auto_increment,
    role_type VARCHAR(20) NOT NULL,
    CONSTRAINT pk_role_id PRIMARY KEY (id),
    CONSTRAINT uk_role_role_type UNIQUE (role_type)
);


create table user_role
(
    user_id BIGINT NOT NULL,
    role_id INT    NOT NULL,
    CONSTRAINT pk_user_role PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_user_role_user_id FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT fk_user_role_role_id FOREIGN KEY (role_id) REFERENCES role (id)
);

insert into role(id, role_type)
values (1, 'ADMIN'),
       (2, 'USER');

insert into user (username, password, email)
VALUES ('manager', 'manager', 'manager@email.com'),
       ('admin', 'admin', 'admin@email.com');

insert into user_role(user_id, role_id)
values (1, 1),
       (1, 2),
       (2, 2);

select u.username, r.role_type
from user u
         join user_role ur on u.id = ur.user_id
         join role r on r.id = ur.role_id;

# ------------------------------------------------------------

create table vendor
(
    id   BIGINT AUTO_INCREMENT,
    name VARCHAR(200) UNIQUE,
    CONSTRAINT pk_vendor PRIMARY KEY (id)
);

INSERT INTO vendor (id, name)
VALUES (1, 'ACI Limited'),
       (2, 'ACME Laboratories Ltd'),
       (3, 'Beximco Pharmaceuticals Ltd'),
       (4, 'Square Pharmaceuticals PLC'),
       (5, 'Renata Limited');

create table generic
(
    id   BIGINT AUTO_INCREMENT,
    name VARCHAR(200) UNIQUE,
    CONSTRAINT pk_generic PRIMARY KEY (id)
);

INSERT INTO generic (id, name)
VALUES (1, 'Rabeprazole Sodium'),
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

create table drug
(
    id         BIGINT AUTO_INCREMENT,
    name       VARCHAR(100) UNIQUE,
    formation  VARCHAR(100),
    strength   VARCHAR(100),
    vendor_id  BIGINT,
    generic_id BIGINT,
    CONSTRAINT pk_drug_brand PRIMARY KEY (id),
    CONSTRAINT fk_company_id FOREIGN KEY (vendor_id) REFERENCES vendor (id),
    CONSTRAINT fk_generic_id FOREIGN KEY (generic_id) REFERENCES generic (id)
);

INSERT INTO drug (id, name, formation, strength, vendor_id, generic_id)
VALUES (1, 'Paricel', 'Tablet', 1, 1),
       (2, 'Abecab', 'Capsule', 1, 2),
       (3, 'Diasulin', 'Liquid', 1, 3),
       (4, 'Micoral', 'Injection', 1, 4),
       (5, 'Abetis', 'Cream', 1, 5),
       (6, 'Monas', 'Tablet', 2, 6),
       (7, 'Maxima', 'Liquid', 2, 7),
       (8, 'Don-A', 'Capsule', 2, 8),
       (9, 'PPI', 'Tablet', 2, 9),
       (10, 'Salflu', 'Injection', 2, 10),
       (11, 'Napa Extra', 'Capsule', 3, 11),
       (12, 'Bizoran', 'Tablet', 3, 2),
       (13, 'Atova', 'Liquid', 3, 12),
       (14, 'Acifix', 'Tablet', 3, 1),
       (15, 'Napa', 'Capsule', 3, 21),
       (16, 'Seclo', 'Injection', 4, 9),
       (17, 'Zimax', 'Tablet', 4, 13),
       (18, 'Ceevit', 'Liquid', 4, 14),
       (19, 'Alatrol', 'Capsule', 4, 15),
       (20, 'Ciprocin', 'Tablet', 4, 16),
       (21, 'Maxpro', 'Liquid', 5, 7),
       (22, 'Algin', 'Capsule', 5, 17),
       (23, 'Thyrox', 'Tablet', 5, 18),
       (24, 'Fenadin', 'Injection', 5, 19),
       (25, 'Furoclav', 'Capsule', 5, 20);

UPDATE drug
SET strength = '100mg'
where formation = 'Tablet';

UPDATE drug
SET strength = '10mg'
where formation = 'Capsule';

UPDATE drug
SET strength = '50mg'
where formation = 'Liquid';

UPDATE drug
SET strength = '10mg'
where formation = 'Injection';

UPDATE drug
SET strength = '20g'
where formation = 'Cream';
-- -----------------------------------------------------------------
CREATE TABLE drug_prescription (
    drug_id         BIGINT NOT NULL,
    prescription_id BIGINT NOT NULL,
    CONSTRAINT pk_drug_prescription PRIMARY KEY (drug_id, prescription_id),
    CONSTRAINT fk_drug_id FOREIGN KEY (drug_id) REFERENCES drug (id),
    CONSTRAINT fk_prescription_id FOREIGN KEY (prescription_id) REFERENCES prescription (id)
);


INSERT INTO drug_prescription (drug_id, prescription_id) VALUES
     (5, 25),
     (6, 25),
     (7, 25),
     (8, 25),
     (9, 25),
     (10, 25);


-- -------------- Prescription count by Drug In Division ----------------------------------------

SELECT
    dis.division_id AS divisionId,
    d.name AS divisionName,
    COUNT(DISTINCT p.id) AS prescriptionCount,
    d.lat,
    d.lng,
    dr.name as drugName
FROM
    prescription p
        JOIN area a on p.area_id = a.id
        JOIN district dis on a.district_id = dis.id
        JOIN division d on dis.division_id = d.id
        JOIN drug_prescription dp ON p.id = dp.prescription_id
        JOIN drug dr ON dr.id = dp.drug_id
WHERE
    dr.name = 'Monas'
GROUP BY
    dis.division_id, d.name;

-- ----------- Prescription count by Drug and Division In District ------------------------------------------------------------

SELECT
    dis.id AS districtId,
    dis.name AS districtName,
    COUNT(DISTINCT p.id) AS prescriptionCount,
    dis.lat,
    dis.lng
FROM
    prescription p
        JOIN area a on p.area_id = a.id
        JOIN district dis on a.district_id = dis.id
        JOIN division d on dis.division_id = d.id
        JOIN drug_prescription dp ON p.id = dp.prescription_id
        JOIN drug dr ON dr.id = dp.drug_id
WHERE
    dr.name = 'Monas' AND d.name = 'Dhaka'
GROUP BY
    dis.id, dis.name;

-- ----------- Prescription count by Drug + Division + District In Area ------------------------------------------------------------

SELECT
    a.id AS areaId,
    a.name AS areaName,
    COUNT(DISTINCT p.id) AS prescriptionCount,
    a.lat,
    a.lng
FROM
    prescription p
        JOIN area a on p.area_id = a.id
        JOIN district dis on a.district_id = dis.id
        JOIN division d on dis.division_id = d.id
        JOIN drug_prescription dp ON p.id = dp.prescription_id
        JOIN drug dr ON dr.id = dp.drug_id
WHERE
    dr.name = 'Paricel' AND d.name = 'Dhaka' AND dis.name = 'Faridpur'
GROUP BY
    a.id, a.name;

-- ------------------ Doctor List By District -----------------------

SELECT DISTINCT d.name, d.bmdc
FROM prescription p
     JOIN area a on p.area_id = a.id
     JOIN district dis on a.district_id = dis.id
     JOIN doctor d on d.bmdc = p.bmdc_id
WHERE dis.name = 'Faridpur';

-- ------------------- Doctor List by Division ---------------------

SELECT DISTINCT doc.name, doc.bmdc, doc.mbbs_from
FROM prescription p
         JOIN area a on p.area_id = a.id
         JOIN district dis on a.district_id = dis.id
         JOIN division d on dis.division_id = d.id
         JOIN doctor doc on doc.bmdc = p.bmdc_id
WHERE d.name = 'Dhaka';

-- ------------------- Doctor List by Division + Drug name ---------------------

SELECT DISTINCT doc.name AS doctorName,
                doc.bmdc AS doctorBMDC,
                doc.mbbs_from AS mbbsFrom,
                d.name AS divisionName
FROM prescription p
         JOIN area a on p.area_id = a.id
         JOIN district dis on a.district_id = dis.id
         JOIN division d on dis.division_id = d.id
         JOIN doctor doc on doc.bmdc = p.bmdc_id
         JOIN drug_prescription dp on p.id = dp.prescription_id
         JOIN drug dr on dr.id = dp.drug_id
WHERE d.name = 'Dhaka' AND dr.name = 'Monas';

-- ---------------- Doctor List by drug-name ---------------------------

SELECT DISTINCT d.bmdc, d.name, d.mbbs_from
FROM doctor d
         JOIN prescription p ON d.bmdc = p.bmdc_id
         JOIN drug_prescription dp ON p.id = dp.prescription_id
         JOIN drug dr ON dp.drug_id = dr.id
WHERE dr.name = 'Monas';


-- --------------- Drug Info by drug-name --------------------------------

SELECT
    d.id AS drug_id,
    d.name AS drug_name,
    d.formation,
    d.strength,
    v.name AS vendor_name,
    g.name AS generic_name
FROM drug d
         LEFT JOIN vendor v ON d.vendor_id = v.id
         LEFT JOIN generic g ON d.generic_id = g.id
WHERE d.name = 'Monas';
