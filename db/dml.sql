create database square_map;
use square_map;

-- ----------------------------------------

CREATE TABLE division
(
    id   INT AUTO_INCREMENT,
    name VARCHAR(100),
    lat  DECIMAL(10, 6),
    lng  DECIMAL(10, 6),
    CONSTRAINT pk_division PRIMARY KEY (id)
);


INSERT INTO division (id, name, lat, lng)
VALUES (1, 'Barishal', 22.701002, 90.353451),
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

INSERT INTO district (id, division_id, name, lat, lng)
VALUES (1, 3, 'Dhaka', 23.7115253, 90.4111451),
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

create table prescription
(
    id          BIGINT AUTO_INCREMENT,
    bmdc_id     int NOT NULL,
    district_id INT NOT NULL,
    CONSTRAINT pk_prescription PRIMARY KEY (id),
    CONSTRAINT fk_bmdc_id FOREIGN KEY (bmdc_id) REFERENCES doctor (bmdc),
    CONSTRAINT fk_district_id FOREIGN KEY (district_id) REFERENCES district (id)
);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (1, 1000, 1),
       (2, 1000, 1),
       (3, 1000, 1),
       (4, 1000, 1),
       (5, 1000, 1),
       (6, 1000, 1),
       (7, 1000, 1),
       (8, 1000, 1),
       (9, 1000, 1),
       (10, 1000, 1);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (11, 1001, 1),
       (12, 1002, 1);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (13, 1003, 2),
       (14, 1004, 2);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (15, 1005, 23),
       (16, 1005, 23);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (17, 1006, 3),
       (18, 1006, 3),
       (19, 1006, 3),
       (20, 1006, 3),
       (21, 1006, 3),
       (22, 1006, 3),
       (23, 1006, 3),
       (24, 1006, 3),
       (25, 1006, 3),
       (26, 1006, 3);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (27, 1007, 4),
       (28, 1007, 4),
       (29, 1007, 4),
       (30, 1007, 4),
       (31, 1007, 4),
       (32, 1007, 4),
       (33, 1007, 4),
       (34, 1007, 4),
       (35, 1007, 4),
       (36, 1007, 4);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (37, 1008, 6),
       (38, 1008, 6),
       (39, 1008, 6),
       (40, 1008, 6),
       (41, 1008, 6),
       (42, 1008, 6),
       (43, 1008, 6);


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
use square_map;

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (51, 1009, 7),
       (52, 1009, 7),
       (53, 1009, 7),
       (54, 1009, 7),
       (55, 1009, 7),
       (56, 1009, 7),
       (57, 1009, 7),
       (58, 1009, 7);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 51),
       (6, 52),
       (6, 53),
       (6, 54),
       (6, 55),
       (6, 56),
       (6, 57),
       (6, 58);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (59, 1009, 8),
       (60, 1009, 8),
       (61, 1009, 8),
       (62, 1009, 8),
       (63, 1009, 8);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 59),
       (6, 60),
       (6, 61),
       (6, 62),
       (6, 63);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (64, 1009, 9),
       (65, 1009, 9),
       (66, 1009, 9);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 64),
       (6, 65),
       (6, 66);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (67, 1010, 11),
       (68, 1010, 11),
       (69, 1010, 11),
       (70, 1010, 11),
       (71, 1010, 11),
       (72, 1010, 11),
       (73, 1010, 11),
       (74, 1010, 11),
       (75, 1010, 11),
       (76, 1010, 11),
       (77, 1010, 11);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 67),
       (6, 68),
       (6, 69),
       (6, 70),
       (6, 71),
       (6, 72),
       (6, 73),
       (6, 74),
       (6, 75),
       (6, 76),
       (6, 77);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (78, 1010, 12),
       (79, 1010, 12),
       (80, 1010, 12),
       (81, 1010, 12),
       (82, 1010, 12),
       (83, 1010, 12),
       (84, 1010, 12),
       (85, 1010, 12),
       (86, 1010, 12),
       (87, 1010, 12),
       (88, 1010, 12),
       (89, 1010, 12),
       (90, 1010, 12);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 78),
       (6, 79),
       (6, 80),
       (6, 81),
       (6, 82),
       (6, 83),
       (6, 84),
       (6, 85),
       (6, 86),
       (6, 87),
       (6, 88),
       (6, 89),
       (6, 90);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (91, 1011, 14),
       (92, 1011, 14),
       (93, 1011, 14),
       (94, 1011, 14),
       (95, 1011, 14),
       (96, 1011, 14);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 91),
       (6, 92),
       (6, 93),
       (6, 94),
       (6, 95),
       (6, 96);


INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (97, 1011, 1),
       (98, 1011, 1),
       (99, 1011, 1),
       (100, 1011, 1),
       (101, 1011, 1),
       (102, 1011, 1);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 97),
       (6, 98),
       (6, 99),
       (6, 100),
       (6, 101),
       (6, 102);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (103, 1011, 34),
       (104, 1011, 34),
       (105, 1011, 34),
       (106, 1011, 34),
       (107, 1011, 34),
       (108, 1011, 34);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 103),
       (6, 104),
       (6, 105),
       (6, 106),
       (6, 107),
       (6, 108);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (109, 1012, 35),
       (110, 1012, 35),
       (111, 1012, 35),
       (112, 1012, 35),
       (113, 1012, 35),
       (114, 1012, 35),
       (115, 1012, 35),
       (116, 1012, 35),
       (117, 1012, 35);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 109),
       (6, 110),
       (6, 111),
       (6, 112),
       (6, 113),
       (6, 114),
       (6, 115),
       (6, 116),
       (6, 117);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (118, 1013, 36),
       (119, 1013, 36),
       (120, 1013, 36),
       (121, 1013, 36),
       (122, 1013, 36),
       (123, 1013, 36),
       (124, 1013, 36),
       (125, 1013, 36),
       (126, 1013, 36),
       (127, 1013, 36);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 118),
       (6, 119),
       (6, 120),
       (6, 121),
       (6, 122),
       (6, 123),
       (6, 124),
       (6, 125),
       (6, 126),
       (6, 127);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (128, 1013, 37),
       (129, 1013, 37),
       (130, 1013, 37),
       (131, 1013, 37),
       (132, 1013, 37),
       (133, 1013, 37),
       (134, 1013, 37),
       (135, 1013, 37);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 128),
       (6, 129),
       (6, 130),
       (6, 131),
       (6, 132),
       (6, 133),
       (6, 134),
       (6, 135);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (136, 1014, 38),
       (137, 1014, 38),
       (138, 1014, 38),
       (139, 1014, 38),
       (140, 1014, 38);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 136),
       (6, 137),
       (6, 138),
       (6, 139),
       (6, 140);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (141, 1014, 39),
       (142, 1014, 39),
       (143, 1014, 39),
       (144, 1014, 39),
       (145, 1014, 39),
       (146, 1014, 39),
       (147, 1014, 39);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 141),
       (6, 142),
       (6, 143),
       (6, 144),
       (6, 145),
       (6, 146),
       (6, 147);



INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (148, 1014, 40),
       (149, 1014, 41),
       (150, 1014, 42),
       (151, 1014, 43),
       (152, 1014, 44),
       (153, 1014, 45),
       (154, 1014, 46),
       (155, 1014, 47),
       (156, 1014, 48),
       (157, 1014, 49),
       (158, 1014, 50);


INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 148),
       (6, 149),
       (6, 150),
       (6, 151),
       (6, 152),
       (6, 153),
       (6, 154),
       (6, 155),
       (6, 156),
       (6, 157),
       (6, 158);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (159, 1014, 55),
       (160, 1014, 56),
       (161, 1014, 57),
       (162, 1014, 58),
       (163, 1014, 59),
       (164, 1014, 60),
       (165, 1014, 61),
       (166, 1014, 62),
       (167, 1014, 63);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 159),
       (6, 160),
       (6, 161),
       (6, 162),
       (6, 163),
       (6, 164),
       (6, 165),
       (6, 166),
       (6, 167);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (168, 1015, 26),
       (169, 1015, 27),
       (170, 1015, 28),
       (171, 1015, 29),
       (172, 1015, 30),
       (173, 1015, 31),
       (174, 1015, 32);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 168),
       (6, 169),
       (6, 170),
       (6, 171),
       (6, 172),
       (6, 173),
       (6, 174);

INSERT INTO prescription (id, bmdc_id, district_id)
VALUES (175, 1015, 51),
       (176, 1015, 52),
       (177, 1015, 53),
       (178, 1015, 54);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 175),
       (6, 176),
       (6, 177),
       (6, 178);

-- ------------------------------------------------------------
CREATE TABLE drug_prescription
(
    drug_id         BIGINT NOT NULL,
    prescription_id BIGINT NOT NULL,
    CONSTRAINT pk_drug_prescription PRIMARY KEY (drug_id, prescription_id),
    CONSTRAINT fk_drug_id FOREIGN KEY (drug_id) REFERENCES drug (id),
    CONSTRAINT fk_prescription_id FOREIGN KEY (prescription_id) REFERENCES prescription (id)
);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 1),
       (6, 2),
       (6, 3),
       (6, 4),
       (3, 5);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 11),
       (6, 12);


INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 13),
       (6, 14);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 15),
       (6, 16);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 17),
       (6, 18),
       (6, 19),
       (6, 20),
       (6, 21),
       (6, 22),
       (6, 23),
       (6, 24),
       (6, 25),
       (6, 26);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 27),
       (6, 28),
       (6, 29),
       (6, 30),
       (6, 31),
       (6, 32),
       (6, 33),
       (6, 34),
       (6, 35),
       (6, 36);

INSERT INTO drug_prescription (drug_id, prescription_id)
VALUES (6, 37),
       (6, 38),
       (6, 39),
       (6, 40),
       (6, 41),
       (6, 42),
       (6, 43);


# ------------------------------------------------------------


SELECT l.id                 AS districtId,
       l.name               AS districtName,
       COUNT(DISTINCT p.id) AS prescriptionCount,
       l.lat,
       l.lng
FROM prescription p
         JOIN district l ON p.district_id = l.id
         JOIN drug_prescription dp ON p.id = dp.prescription_id
         JOIN drug d ON d.id = dp.drug_id
         JOIN division d2 ON l.division_id = d2.id
WHERE d.name = 'Monas'
  AND d2.name = 'Dhaka'
GROUP BY l.id, l.name;

-- ---------------------------------------------------------------

SELECT l.division_id,
       d2.name              AS division_name,
       COUNT(DISTINCT p.id) AS prescription_count,
       d2.lat,
       d2.lng,
       d.name
FROM prescription p
         JOIN district l ON p.district_id = l.id
         JOIN drug_prescription dp ON p.id = dp.prescription_id
         JOIN drug d ON d.id = dp.drug_id
         JOIN division d2 ON l.division_id = d2.id
WHERE d.name = 'Monas'
GROUP BY l.division_id, d2.name;


-- ------------------ Doctor List By District -----------------------

SELECT DISTINCT d.name, d.bmdc
FROM prescription p
         JOIN district dis on p.district_id = dis.id
         JOIN doctor d on d.bmdc = p.bmdc_id
WHERE dis.name = 'Dhaka';

-- ------------------- Doctor List by Division ---------------------

SELECT DISTINCT d.name, d.bmdc
FROM prescription p
         JOIN district dis on p.district_id = dis.id
         JOIN division divi on divi.id = dis.division_id
         JOIN doctor d on d.bmdc = p.bmdc_id
WHERE divi.name = 'Dhaka';

-- ------------------- Doctor List by Division + Drug name ---------------------

SELECT DISTINCT d.name, d.bmdc
FROM prescription p
         JOIN district dis on p.district_id = dis.id
         JOIN division divi on divi.id = dis.division_id
         JOIN doctor d on d.bmdc = p.bmdc_id
         JOIN drug_prescription dp on p.id = dp.prescription_id
         JOIN drug d2 on d2.id = dp.drug_id
WHERE divi.name = 'Dhaka' AND d2.name = 'Monas';

-- ---------------- Doctor List by drug-name ---------------------------

SELECT DISTINCT d.bmdc, d.name
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


-- ----------------------------------------------------------------------


use square_map;

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (179, 1016, 64),
                                                                (180, 1016, 64),
                                                                (181, 1016, 64),
                                                                (182, 1016, 64),
                                                                (183, 1016, 64),
                                                                (184, 1016, 64),
                                                                (185, 1016, 64),
                                                                (186, 1016, 64),
                                                                (187, 1016, 64),
                                                                (188, 1016, 64),
                                                                (189, 1016, 64),
                                                                (190, 1016, 64),
                                                                (191, 1016, 64),
                                                                (192, 1016, 64),
                                                                (193, 1016, 64),
                                                                (194, 1016, 64),
                                                                (195, 1016, 64),
                                                                (196, 1016, 64),
                                                                (197, 1016, 64),
                                                                (198, 1016, 64),
                                                                (199, 1016, 64),
                                                                (200, 1016, 64),
                                                                (201, 1016, 64),
                                                                (202, 1016, 64),
                                                                (203, 1016, 64),
                                                                (204, 1016, 64),
                                                                (205, 1016, 64),
                                                                (206, 1016, 64),
                                                                (207, 1016, 64),
                                                                (208, 1016, 64),
                                                                (209, 1016, 64),
                                                                (210, 1016, 64),
                                                                (211, 1016, 64),
                                                                (212, 1016, 64),
                                                                (213, 1016, 64),
                                                                (214, 1016, 64),
                                                                (215, 1016, 64),
                                                                (216, 1016, 64),
                                                                (217, 1016, 64),
                                                                (218, 1016, 64),
                                                                (219, 1016, 64),
                                                                (220, 1016, 64),
                                                                (221, 1016, 64),
                                                                (222, 1016, 64),
                                                                (223, 1016, 64),
                                                                (224, 1016, 64),
                                                                (225, 1016, 64),
                                                                (226, 1016, 64),
                                                                (227, 1016, 64),
                                                                (228, 1016, 64),
                                                                (229, 1016, 64),
                                                                (230, 1016, 64),
                                                                (231, 1016, 64),
                                                                (232, 1016, 64),
                                                                (233, 1016, 64),
                                                                (234, 1016, 64),
                                                                (235, 1016, 64),
                                                                (236, 1016, 64),
                                                                (237, 1016, 64),
                                                                (238, 1016, 64),
                                                                (239, 1016, 64),
                                                                (240, 1016, 64),
                                                                (241, 1016, 64),
                                                                (242, 1016, 64),
                                                                (243, 1016, 64),
                                                                (244, 1016, 64),
                                                                (245, 1016, 64),
                                                                (246, 1016, 64),
                                                                (247, 1016, 64),
                                                                (248, 1016, 64),
                                                                (249, 1016, 64),
                                                                (250, 1016, 64),
                                                                (251, 1016, 64),
                                                                (252, 1016, 64),
                                                                (253, 1016, 64),
                                                                (254, 1016, 64),
                                                                (255, 1016, 64),
                                                                (256, 1016, 64),
                                                                (257, 1016, 64),
                                                                (258, 1016, 64),
                                                                (259, 1016, 64),
                                                                (260, 1016, 64),
                                                                (261, 1016, 64),
                                                                (262, 1016, 64),
                                                                (263, 1016, 64),
                                                                (264, 1016, 64),
                                                                (265, 1016, 64),
                                                                (266, 1016, 64),
                                                                (267, 1016, 64),
                                                                (268, 1016, 64),
                                                                (269, 1016, 64),
                                                                (270, 1016, 64),
                                                                (271, 1016, 64),
                                                                (272, 1016, 64),
                                                                (273, 1016, 64),
                                                                (274, 1016, 64),
                                                                (275, 1016, 64),
                                                                (276, 1016, 64),
                                                                (277, 1016, 64),
                                                                (278, 1016, 64);

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (279, 1017, 63),
                                                                (280, 1017, 63),
                                                                (281, 1017, 63),
                                                                (282, 1017, 63),
                                                                (283, 1017, 63),
                                                                (284, 1017, 63),
                                                                (285, 1017, 63),
                                                                (286, 1017, 63),
                                                                (287, 1017, 63),
                                                                (288, 1017, 63),
                                                                (289, 1017, 63),
                                                                (290, 1017, 63),
                                                                (291, 1017, 63),
                                                                (292, 1017, 63),
                                                                (293, 1017, 63),
                                                                (294, 1017, 63),
                                                                (295, 1017, 63),
                                                                (296, 1017, 63),
                                                                (297, 1017, 63),
                                                                (298, 1017, 63),
                                                                (299, 1017, 63),
                                                                (300, 1017, 63),
                                                                (301, 1017, 63),
                                                                (302, 1017, 63),
                                                                (303, 1017, 63),
                                                                (304, 1017, 63),
                                                                (305, 1017, 63),
                                                                (306, 1017, 63),
                                                                (307, 1017, 63),
                                                                (308, 1017, 63),
                                                                (309, 1017, 63),
                                                                (310, 1017, 63),
                                                                (311, 1017, 63),
                                                                (312, 1017, 63),
                                                                (313, 1017, 63),
                                                                (314, 1017, 63),
                                                                (315, 1017, 63),
                                                                (316, 1017, 63),
                                                                (317, 1017, 63),
                                                                (318, 1017, 63),
                                                                (319, 1017, 63),
                                                                (320, 1017, 63),
                                                                (321, 1017, 63),
                                                                (322, 1017, 63),
                                                                (323, 1017, 63),
                                                                (324, 1017, 63),
                                                                (325, 1017, 63),
                                                                (326, 1017, 63),
                                                                (327, 1017, 63),
                                                                (328, 1017, 63),
                                                                (329, 1017, 63),
                                                                (330, 1017, 63),
                                                                (331, 1017, 63),
                                                                (332, 1017, 63),
                                                                (333, 1017, 63),
                                                                (334, 1017, 63),
                                                                (335, 1017, 63),
                                                                (336, 1017, 63),
                                                                (337, 1017, 63),
                                                                (338, 1017, 63),
                                                                (339, 1017, 63),
                                                                (340, 1017, 63),
                                                                (341, 1017, 63),
                                                                (342, 1017, 63),
                                                                (343, 1017, 63),
                                                                (344, 1017, 63),
                                                                (345, 1017, 63),
                                                                (346, 1017, 63),
                                                                (347, 1017, 63),
                                                                (348, 1017, 63),
                                                                (349, 1017, 63),
                                                                (350, 1017, 63),
                                                                (351, 1017, 63),
                                                                (352, 1017, 63),
                                                                (353, 1017, 63),
                                                                (354, 1017, 63),
                                                                (355, 1017, 63),
                                                                (356, 1017, 63),
                                                                (357, 1017, 63),
                                                                (358, 1017, 63),
                                                                (359, 1017, 63),
                                                                (360, 1017, 63),
                                                                (361, 1017, 63),
                                                                (362, 1017, 63),
                                                                (363, 1017, 63),
                                                                (364, 1017, 63),
                                                                (365, 1017, 63),
                                                                (366, 1017, 63),
                                                                (367, 1017, 63),
                                                                (368, 1017, 63);

-- --------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (369, 1018, 62),
                                                                (370, 1018, 62),
                                                                (371, 1018, 62),
                                                                (372, 1018, 62),
                                                                (373, 1018, 62),
                                                                (374, 1018, 62),
                                                                (375, 1018, 62),
                                                                (376, 1018, 62),
                                                                (377, 1018, 62),
                                                                (378, 1018, 62),
                                                                (379, 1018, 62),
                                                                (380, 1018, 62),
                                                                (381, 1018, 62),
                                                                (382, 1018, 62),
                                                                (383, 1018, 62),
                                                                (384, 1018, 62),
                                                                (385, 1018, 62),
                                                                (386, 1018, 62),
                                                                (387, 1018, 62),
                                                                (388, 1018, 62),
                                                                (389, 1018, 62),
                                                                (390, 1018, 62),
                                                                (391, 1018, 62),
                                                                (392, 1018, 62),
                                                                (393, 1018, 62),
                                                                (394, 1018, 62),
                                                                (395, 1018, 62),
                                                                (396, 1018, 62),
                                                                (397, 1018, 62),
                                                                (398, 1018, 62),
                                                                (399, 1018, 62),
                                                                (400, 1018, 62),
                                                                (401, 1018, 62),
                                                                (402, 1018, 62),
                                                                (403, 1018, 62),
                                                                (404, 1018, 62),
                                                                (405, 1018, 62),
                                                                (406, 1018, 62),
                                                                (407, 1018, 62),
                                                                (408, 1018, 62),
                                                                (409, 1018, 62),
                                                                (410, 1018, 62),
                                                                (411, 1018, 62),
                                                                (412, 1018, 62),
                                                                (413, 1018, 62),
                                                                (414, 1018, 62),
                                                                (415, 1018, 62),
                                                                (416, 1018, 62),
                                                                (417, 1018, 62),
                                                                (418, 1018, 62),
                                                                (419, 1018, 62),
                                                                (420, 1018, 62),
                                                                (421, 1018, 62),
                                                                (422, 1018, 62),
                                                                (423, 1018, 62),
                                                                (424, 1018, 62),
                                                                (425, 1018, 62),
                                                                (426, 1018, 62),
                                                                (427, 1018, 62),
                                                                (428, 1018, 62),
                                                                (429, 1018, 62),
                                                                (430, 1018, 62),
                                                                (431, 1018, 62),
                                                                (432, 1018, 62),
                                                                (433, 1018, 62),
                                                                (434, 1018, 62),
                                                                (435, 1018, 62),
                                                                (436, 1018, 62),
                                                                (437, 1018, 62),
                                                                (438, 1018, 62),
                                                                (439, 1018, 62),
                                                                (440, 1018, 62),
                                                                (441, 1018, 62),
                                                                (442, 1018, 62),
                                                                (443, 1018, 62),
                                                                (444, 1018, 62),
                                                                (445, 1018, 62),
                                                                (446, 1018, 62),
                                                                (447, 1018, 62),
                                                                (448, 1018, 62),
                                                                (449, 1018, 62),
                                                                (450, 1018, 62),
                                                                (451, 1018, 62),
                                                                (452, 1018, 62),
                                                                (453, 1018, 62),
                                                                (454, 1018, 62),
                                                                (455, 1018, 62),
                                                                (456, 1018, 62),
                                                                (457, 1018, 62),
                                                                (458, 1018, 62);

-- ----------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (459, 1019, 61),
                                                                (460, 1019, 61),
                                                                (461, 1019, 61),
                                                                (462, 1019, 61),
                                                                (463, 1019, 61),
                                                                (464, 1019, 61),
                                                                (465, 1019, 61),
                                                                (466, 1019, 61),
                                                                (467, 1019, 61),
                                                                (468, 1019, 61),
                                                                (469, 1019, 61),
                                                                (470, 1019, 61),
                                                                (471, 1019, 61),
                                                                (472, 1019, 61),
                                                                (473, 1019, 61),
                                                                (474, 1019, 61),
                                                                (475, 1019, 61),
                                                                (476, 1019, 61),
                                                                (477, 1019, 61),
                                                                (478, 1019, 61),
                                                                (479, 1019, 61),
                                                                (480, 1019, 61),
                                                                (481, 1019, 61),
                                                                (482, 1019, 61),
                                                                (483, 1019, 61),
                                                                (484, 1019, 61),
                                                                (485, 1019, 61),
                                                                (486, 1019, 61),
                                                                (487, 1019, 61),
                                                                (488, 1019, 61),
                                                                (489, 1019, 61),
                                                                (490, 1019, 61),
                                                                (491, 1019, 61),
                                                                (492, 1019, 61),
                                                                (493, 1019, 61),
                                                                (494, 1019, 61),
                                                                (495, 1019, 61),
                                                                (496, 1019, 61),
                                                                (497, 1019, 61),
                                                                (498, 1019, 61),
                                                                (499, 1019, 61),
                                                                (500, 1019, 61),
                                                                (501, 1019, 61),
                                                                (502, 1019, 61),
                                                                (503, 1019, 61),
                                                                (504, 1019, 61),
                                                                (505, 1019, 61),
                                                                (506, 1019, 61),
                                                                (507, 1019, 61),
                                                                (508, 1019, 61),
                                                                (509, 1019, 61),
                                                                (510, 1019, 61),
                                                                (511, 1019, 61),
                                                                (512, 1019, 61),
                                                                (513, 1019, 61),
                                                                (514, 1019, 61),
                                                                (515, 1019, 61),
                                                                (516, 1019, 61),
                                                                (517, 1019, 61),
                                                                (518, 1019, 61),
                                                                (519, 1019, 61),
                                                                (520, 1019, 61),
                                                                (521, 1019, 61),
                                                                (522, 1019, 61),
                                                                (523, 1019, 61),
                                                                (524, 1019, 61),
                                                                (525, 1019, 61),
                                                                (526, 1019, 61),
                                                                (527, 1019, 61),
                                                                (528, 1019, 61),
                                                                (529, 1019, 61),
                                                                (530, 1019, 61),
                                                                (531, 1019, 61),
                                                                (532, 1019, 61),
                                                                (533, 1019, 61),
                                                                (534, 1019, 61),
                                                                (535, 1019, 61),
                                                                (536, 1019, 61),
                                                                (537, 1019, 61),
                                                                (538, 1019, 61),
                                                                (539, 1019, 61),
                                                                (540, 1019, 61),
                                                                (541, 1019, 61),
                                                                (542, 1019, 61),
                                                                (543, 1019, 61),
                                                                (544, 1019, 61),
                                                                (545, 1019, 61),
                                                                (546, 1019, 61),
                                                                (547, 1019, 61),
                                                                (548, 1019, 61);

-- --------------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (549, 1020, 60),
                                                                (550, 1020, 60),
                                                                (551, 1020, 60),
                                                                (552, 1020, 60),
                                                                (553, 1020, 60),
                                                                (554, 1020, 60),
                                                                (555, 1020, 60),
                                                                (556, 1020, 60),
                                                                (557, 1020, 60),
                                                                (558, 1020, 60),
                                                                (559, 1020, 60),
                                                                (560, 1020, 60),
                                                                (561, 1020, 60),
                                                                (562, 1020, 60),
                                                                (563, 1020, 60),
                                                                (564, 1020, 60),
                                                                (565, 1020, 60),
                                                                (566, 1020, 60),
                                                                (567, 1020, 60),
                                                                (568, 1020, 60),
                                                                (569, 1020, 60),
                                                                (570, 1020, 60),
                                                                (571, 1020, 60),
                                                                (572, 1020, 60),
                                                                (573, 1020, 60),
                                                                (574, 1020, 60),
                                                                (575, 1020, 60),
                                                                (576, 1020, 60),
                                                                (577, 1020, 60),
                                                                (578, 1020, 60),
                                                                (579, 1020, 60),
                                                                (580, 1020, 60),
                                                                (581, 1020, 60),
                                                                (582, 1020, 60),
                                                                (583, 1020, 60),
                                                                (584, 1020, 60),
                                                                (585, 1020, 60),
                                                                (586, 1020, 60),
                                                                (587, 1020, 60),
                                                                (588, 1020, 60),
                                                                (589, 1020, 60),
                                                                (590, 1020, 60),
                                                                (591, 1020, 60),
                                                                (592, 1020, 60),
                                                                (593, 1020, 60),
                                                                (594, 1020, 60),
                                                                (595, 1020, 60),
                                                                (596, 1020, 60),
                                                                (597, 1020, 60),
                                                                (598, 1020, 60),
                                                                (599, 1020, 60),
                                                                (600, 1020, 60),
                                                                (601, 1020, 60),
                                                                (602, 1020, 60),
                                                                (603, 1020, 60),
                                                                (604, 1020, 60),
                                                                (605, 1020, 60),
                                                                (606, 1020, 60),
                                                                (607, 1020, 60),
                                                                (608, 1020, 60),
                                                                (609, 1020, 60),
                                                                (610, 1020, 60),
                                                                (611, 1020, 60),
                                                                (612, 1020, 60),
                                                                (613, 1020, 60),
                                                                (614, 1020, 60),
                                                                (615, 1020, 60),
                                                                (616, 1020, 60),
                                                                (617, 1020, 60),
                                                                (618, 1020, 60),
                                                                (619, 1020, 60),
                                                                (620, 1020, 60),
                                                                (621, 1020, 60),
                                                                (622, 1020, 60),
                                                                (623, 1020, 60),
                                                                (624, 1020, 60),
                                                                (625, 1020, 60),
                                                                (626, 1020, 60),
                                                                (627, 1020, 60),
                                                                (628, 1020, 60),
                                                                (629, 1020, 60),
                                                                (630, 1020, 60),
                                                                (631, 1020, 60),
                                                                (632, 1020, 60),
                                                                (633, 1020, 60),
                                                                (634, 1020, 60),
                                                                (635, 1020, 60),
                                                                (636, 1020, 60),
                                                                (637, 1020, 60),
                                                                (638, 1020, 60);


-- -------------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (639, 1021, 59),
                                                                (640, 1021, 59),
                                                                (641, 1021, 59),
                                                                (642, 1021, 59),
                                                                (643, 1021, 59),
                                                                (644, 1021, 59),
                                                                (645, 1021, 59),
                                                                (646, 1021, 59),
                                                                (647, 1021, 59),
                                                                (648, 1021, 59),
                                                                (649, 1021, 59),
                                                                (650, 1021, 59),
                                                                (651, 1021, 59),
                                                                (652, 1021, 59),
                                                                (653, 1021, 59),
                                                                (654, 1021, 59),
                                                                (655, 1021, 59),
                                                                (656, 1021, 59),
                                                                (657, 1021, 59),
                                                                (658, 1021, 59),
                                                                (659, 1021, 59),
                                                                (660, 1021, 59),
                                                                (661, 1021, 59),
                                                                (662, 1021, 59),
                                                                (663, 1021, 59),
                                                                (664, 1021, 59),
                                                                (665, 1021, 59),
                                                                (666, 1021, 59),
                                                                (667, 1021, 59),
                                                                (668, 1021, 59),
                                                                (669, 1021, 59),
                                                                (670, 1021, 59),
                                                                (671, 1021, 59),
                                                                (672, 1021, 59),
                                                                (673, 1021, 59),
                                                                (674, 1021, 59),
                                                                (675, 1021, 59),
                                                                (676, 1021, 59),
                                                                (677, 1021, 59),
                                                                (678, 1021, 59),
                                                                (679, 1021, 59),
                                                                (680, 1021, 59),
                                                                (681, 1021, 59),
                                                                (682, 1021, 59),
                                                                (683, 1021, 59),
                                                                (684, 1021, 59),
                                                                (685, 1021, 59),
                                                                (686, 1021, 59),
                                                                (687, 1021, 59),
                                                                (688, 1021, 59),
                                                                (689, 1021, 59),
                                                                (690, 1021, 59),
                                                                (691, 1021, 59),
                                                                (692, 1021, 59),
                                                                (693, 1021, 59),
                                                                (694, 1021, 59),
                                                                (695, 1021, 59),
                                                                (696, 1021, 59),
                                                                (697, 1021, 59),
                                                                (698, 1021, 59),
                                                                (699, 1021, 59),
                                                                (700, 1021, 59),
                                                                (701, 1021, 59),
                                                                (702, 1021, 59),
                                                                (703, 1021, 59),
                                                                (704, 1021, 59),
                                                                (705, 1021, 59),
                                                                (706, 1021, 59),
                                                                (707, 1021, 59),
                                                                (708, 1021, 59),
                                                                (709, 1021, 59),
                                                                (710, 1021, 59),
                                                                (711, 1021, 59),
                                                                (712, 1021, 59),
                                                                (713, 1021, 59),
                                                                (714, 1021, 59),
                                                                (715, 1021, 59),
                                                                (716, 1021, 59),
                                                                (717, 1021, 59),
                                                                (718, 1021, 59),
                                                                (719, 1021, 59),
                                                                (720, 1021, 59),
                                                                (721, 1021, 59),
                                                                (722, 1021, 59),
                                                                (723, 1021, 59),
                                                                (724, 1021, 59),
                                                                (725, 1021, 59),
                                                                (726, 1021, 59),
                                                                (727, 1021, 59),
                                                                (728, 1021, 59),
                                                                (729, 1021, 59),
                                                                (730, 1021, 59),
                                                                (731, 1021, 59),
                                                                (732, 1021, 59),
                                                                (733, 1021, 59),
                                                                (734, 1021, 59),
                                                                (735, 1021, 59),
                                                                (736, 1021, 59),
                                                                (737, 1021, 59),
                                                                (738, 1021, 59);

-- ---------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (21, 179),
                                                                   (21, 180),
                                                                   (21, 181),
                                                                   (21, 182),
                                                                   (21, 183),
                                                                   (21, 184),
                                                                   (21, 185),
                                                                   (21, 186),
                                                                   (21, 187),
                                                                   (21, 188),
                                                                   (21, 189),
                                                                   (21, 190),
                                                                   (21, 191),
                                                                   (21, 192),
                                                                   (21, 193),
                                                                   (21, 194),
                                                                   (21, 195),
                                                                   (21, 196),
                                                                   (21, 197),
                                                                   (21, 198),
                                                                   (21, 199),
                                                                   (21, 200);

-- ----------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (11, 201),
                                                                   (11, 202),
                                                                   (11, 203),
                                                                   (11, 204),
                                                                   (11, 205),
                                                                   (11, 206),
                                                                   (11, 207),
                                                                   (11, 208),
                                                                   (11, 209),
                                                                   (11, 210),
                                                                   (11, 211),
                                                                   (11, 212),
                                                                   (11, 213),
                                                                   (11, 214),
                                                                   (11, 215),
                                                                   (11, 216),
                                                                   (11, 217),
                                                                   (11, 218),
                                                                   (11, 219),
                                                                   (11, 220),
                                                                   (11, 221),
                                                                   (11, 222),
                                                                   (11, 223),
                                                                   (11, 224),
                                                                   (11, 225),
                                                                   (11, 226),
                                                                   (11, 227),
                                                                   (11, 228),
                                                                   (11, 229),
                                                                   (11, 230),
                                                                   (11, 231),
                                                                   (11, 232),
                                                                   (11, 233),
                                                                   (11, 234),
                                                                   (11, 235),
                                                                   (11, 236),
                                                                   (11, 237),
                                                                   (11, 238),
                                                                   (11, 239),
                                                                   (11, 240),
                                                                   (11, 241),
                                                                   (11, 242),
                                                                   (11, 243),
                                                                   (11, 244),
                                                                   (11, 245),
                                                                   (11, 246),
                                                                   (11, 247),
                                                                   (11, 248),
                                                                   (11, 249),
                                                                   (11, 250);

-- ----------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (15, 251),
                                                                   (15, 252),
                                                                   (15, 253),
                                                                   (15, 254),
                                                                   (15, 255),
                                                                   (15, 256),
                                                                   (15, 257),
                                                                   (15, 258),
                                                                   (15, 259),
                                                                   (15, 260);

-- ----------------------------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (16, 261),
                                                                   (16, 262),
                                                                   (16, 263),
                                                                   (16, 264),
                                                                   (16, 265),
                                                                   (16, 266),
                                                                   (16, 267),
                                                                   (16, 268),
                                                                   (16, 269),
                                                                   (16, 270),
                                                                   (16, 271),
                                                                   (16, 272),
                                                                   (16, 273),
                                                                   (16, 274),
                                                                   (16, 275),
                                                                   (16, 276),
                                                                   (16, 277),
                                                                   (16, 278);

-- -----------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (16, 279),
                                                                   (16, 280),
                                                                   (16, 281),
                                                                   (16, 282),
                                                                   (16, 283),
                                                                   (16, 284),
                                                                   (16, 285),
                                                                   (16, 286),
                                                                   (16, 287),
                                                                   (16, 288),
                                                                   (16, 289),
                                                                   (16, 290);

-- ---------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (15, 291),
                                                                   (15, 292),
                                                                   (15, 293),
                                                                   (15, 294),
                                                                   (15, 295),
                                                                   (15, 296),
                                                                   (15, 297),
                                                                   (15, 298),
                                                                   (15, 299),
                                                                   (15, 300),
                                                                   (15, 301),
                                                                   (15, 302),
                                                                   (15, 303),
                                                                   (15, 304),
                                                                   (15, 305),
                                                                   (15, 306),
                                                                   (15, 307),
                                                                   (15, 308),
                                                                   (15, 309),
                                                                   (15, 310);

-- -----------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (11, 311),
                                                                   (11, 312),
                                                                   (11, 313),
                                                                   (11, 314),
                                                                   (11, 315),
                                                                   (11, 316),
                                                                   (11, 317),
                                                                   (11, 318),
                                                                   (11, 319),
                                                                   (11, 320),
                                                                   (11, 321),
                                                                   (11, 322),
                                                                   (11, 323),
                                                                   (11, 324),
                                                                   (11, 325),
                                                                   (11, 326),
                                                                   (11, 327),
                                                                   (11, 328),
                                                                   (11, 329),
                                                                   (11, 330),
                                                                   (11, 331),
                                                                   (11, 332),
                                                                   (11, 333),
                                                                   (11, 334),
                                                                   (11, 335),
                                                                   (11, 336),
                                                                   (11, 337),
                                                                   (11, 338),
                                                                   (11, 339),
                                                                   (11, 340),
                                                                   (11, 341),
                                                                   (11, 342),
                                                                   (11, 343),
                                                                   (11, 344),
                                                                   (11, 345);

-- ---------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (11, 346),
                                                                   (11, 347),
                                                                   (11, 348),
                                                                   (11, 349),
                                                                   (11, 350),
                                                                   (11, 351),
                                                                   (11, 352),
                                                                   (11, 353),
                                                                   (11, 354),
                                                                   (11, 355),
                                                                   (11, 356),
                                                                   (11, 357),
                                                                   (11, 358),
                                                                   (11, 359),
                                                                   (11, 360),
                                                                   (11, 361),
                                                                   (11, 362),
                                                                   (11, 363),
                                                                   (11, 364),
                                                                   (11, 365),
                                                                   (11, 366),
                                                                   (11, 367),
                                                                   (11, 368);

-- ----------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (21, 369),
                                                                   (21, 370),
                                                                   (21, 371),
                                                                   (21, 372),
                                                                   (21, 373),
                                                                   (21, 374),
                                                                   (21, 375),
                                                                   (21, 376),
                                                                   (21, 377),
                                                                   (21, 378),
                                                                   (21, 379),
                                                                   (21, 380),
                                                                   (21, 381),
                                                                   (21, 382),
                                                                   (21, 383),
                                                                   (21, 384),
                                                                   (21, 385),
                                                                   (21, 386),
                                                                   (21, 387),
                                                                   (21, 388),
                                                                   (21, 389),
                                                                   (21, 390);

-- ------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (15, 391),
                                                                   (15, 392),
                                                                   (15, 393),
                                                                   (15, 394),
                                                                   (15, 395),
                                                                   (15, 396),
                                                                   (15, 397),
                                                                   (15, 398),
                                                                   (15, 399),
                                                                   (15, 400),
                                                                   (15, 401),
                                                                   (15, 402),
                                                                   (15, 403),
                                                                   (15, 404),
                                                                   (15, 405),
                                                                   (15, 406),
                                                                   (15, 407),
                                                                   (15, 408),
                                                                   (15, 409),
                                                                   (15, 410),
                                                                   (15, 411),
                                                                   (15, 412),
                                                                   (15, 413),
                                                                   (15, 414),
                                                                   (15, 415),
                                                                   (15, 416),
                                                                   (15, 417),
                                                                   (15, 418),
                                                                   (15, 419),
                                                                   (15, 420),
                                                                   (15, 421),
                                                                   (15, 422),
                                                                   (15, 423),
                                                                   (15, 424),
                                                                   (15, 425),
                                                                   (15, 426),
                                                                   (15, 427),
                                                                   (15, 428),
                                                                   (15, 429),
                                                                   (15, 430),
                                                                   (15, 431),
                                                                   (15, 432),
                                                                   (15, 433),
                                                                   (15, 434),
                                                                   (15, 435),
                                                                   (15, 436);

-- -----------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (16, 437),
                                                                   (16, 438),
                                                                   (16, 439),
                                                                   (16, 440),
                                                                   (16, 441),
                                                                   (16, 442),
                                                                   (16, 443),
                                                                   (16, 444),
                                                                   (16, 445),
                                                                   (16, 446),
                                                                   (16, 447),
                                                                   (16, 448),
                                                                   (16, 449),
                                                                   (16, 450),
                                                                   (16, 451),
                                                                   (16, 452),
                                                                   (16, 453),
                                                                   (16, 454),
                                                                   (16, 455),
                                                                   (16, 456),
                                                                   (16, 457),
                                                                   (16, 458);

-- -----------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (21, 459),
                                                                   (21, 460),
                                                                   (21, 461),
                                                                   (21, 462),
                                                                   (21, 463),
                                                                   (21, 464),
                                                                   (21, 465),
                                                                   (21, 466),
                                                                   (21, 467),
                                                                   (21, 468),
                                                                   (21, 469),
                                                                   (21, 470),
                                                                   (21, 471),
                                                                   (21, 472);

-- --------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (11, 473),
                                                                   (11, 474),
                                                                   (11, 475),
                                                                   (11, 476),
                                                                   (11, 477),
                                                                   (11, 478),
                                                                   (11, 479),
                                                                   (11, 480),
                                                                   (11, 481),
                                                                   (11, 482),
                                                                   (11, 483),
                                                                   (11, 484),
                                                                   (11, 485),
                                                                   (11, 486),
                                                                   (11, 487),
                                                                   (11, 488),
                                                                   (11, 489),
                                                                   (11, 490),
                                                                   (11, 491),
                                                                   (11, 492),
                                                                   (11, 493),
                                                                   (11, 494),
                                                                   (11, 495),
                                                                   (11, 496),
                                                                   (11, 497),
                                                                   (11, 498),
                                                                   (11, 499);

-- ------------------
INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (15, 500),
                                                                   (15, 501),
                                                                   (15, 502),
                                                                   (15, 503),
                                                                   (15, 504),
                                                                   (15, 505),
                                                                   (15, 506),
                                                                   (15, 507),
                                                                   (15, 508),
                                                                   (15, 509),
                                                                   (15, 510),
                                                                   (15, 511),
                                                                   (15, 512),
                                                                   (15, 513),
                                                                   (15, 514),
                                                                   (15, 515),
                                                                   (15, 516),
                                                                   (15, 517),
                                                                   (15, 518),
                                                                   (15, 519),
                                                                   (15, 520),
                                                                   (15, 521),
                                                                   (15, 522),
                                                                   (15, 523),
                                                                   (15, 524),
                                                                   (15, 525),
                                                                   (15, 526),
                                                                   (15, 527),
                                                                   (15, 528),
                                                                   (15, 529),
                                                                   (15, 530),
                                                                   (15, 531),
                                                                   (15, 532),
                                                                   (15, 533),
                                                                   (15, 534),
                                                                   (15, 535),
                                                                   (15, 536),
                                                                   (15, 537),
                                                                   (15, 538),
                                                                   (15, 539);

-- ---------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (16, 540),
                                                                   (16, 541),
                                                                   (16, 542),
                                                                   (16, 543),
                                                                   (16, 544),
                                                                   (16, 545),
                                                                   (16, 546),
                                                                   (16, 547),
                                                                   (16, 548);

-- ----------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (21, 549),
                                                                   (21, 550),
                                                                   (21, 551),
                                                                   (21, 552),
                                                                   (21, 553),
                                                                   (21, 554),
                                                                   (21, 555),
                                                                   (21, 556),
                                                                   (21, 557),
                                                                   (21, 558),
                                                                   (21, 559),
                                                                   (21, 560),
                                                                   (21, 561),
                                                                   (21, 562),
                                                                   (21, 563),
                                                                   (21, 564),
                                                                   (21, 565);

-- -------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (11, 566),
                                                                   (11, 567),
                                                                   (11, 568),
                                                                   (11, 569),
                                                                   (11, 570),
                                                                   (11, 571),
                                                                   (11, 572),
                                                                   (11, 573);

-- ------------------------------------

INSERT INTO `drug_prescription` (`drug_id`, `prescription_id`) VALUES
                                                                   (15, 574),
                                                                   (15, 575),
                                                                   (15, 576),
                                                                   (15, 577),
                                                                   (15, 578),
                                                                   (15, 579),
                                                                   (15, 580),
                                                                   (15, 581),
                                                                   (15, 582),
                                                                   (15, 583),
                                                                   (15, 584),
                                                                   (15, 585),
                                                                   (15, 586),
                                                                   (15, 587),
                                                                   (15, 588),
                                                                   (15, 589),
                                                                   (15, 590),
                                                                   (15, 591),
                                                                   (15, 592),
                                                                   (15, 593),
                                                                   (15, 594),
                                                                   (15, 595),
                                                                   (15, 596),
                                                                   (15, 597),
                                                                   (15, 598),
                                                                   (15, 599),
                                                                   (15, 600);

-- --------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 16, id
FROM prescription
WHERE id BETWEEN 601 AND 638;
-- -------------------------------------
INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 21, id
FROM prescription
WHERE id BETWEEN 639 AND 670;

-- ------------------------------------------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 11, id
FROM prescription
WHERE id BETWEEN 671 AND 685;

-- ---------------------------------
INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 15, id
FROM prescription
WHERE id BETWEEN 686 AND 697;

-- --------------------------------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 16, id
FROM prescription
WHERE id BETWEEN 698 AND 738;

-- ---------------------------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`)
VALUES
    (739, 1016, 64),
    (740, 1016, 64),
    (741, 1016, 64),
    (742, 1016, 64),
    (743, 1016, 64),
    (744, 1016, 64),
    (745, 1016, 64),
    (746, 1016, 64),
    (747, 1016, 64),
    (748, 1016, 64),
    (749, 1016, 64),
    (750, 1016, 64);

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (751, 1017, 63),
                                                                (752, 1017, 63),
                                                                (753, 1017, 63),
                                                                (754, 1017, 63),
                                                                (755, 1017, 63),
                                                                (756, 1017, 63),
                                                                (757, 1017, 63),
                                                                (758, 1017, 63),
                                                                (759, 1017, 63),
                                                                (760, 1017, 63),
                                                                (761, 1017, 63),
                                                                (762, 1017, 63),
                                                                (763, 1017, 63),
                                                                (764, 1017, 63),
                                                                (765, 1017, 63),
                                                                (766, 1017, 63),
                                                                (767, 1017, 63),
                                                                (768, 1017, 63),
                                                                (769, 1017, 63),
                                                                (770, 1017, 63),
                                                                (771, 1017, 63),
                                                                (772, 1017, 63),
                                                                (773, 1017, 63),
                                                                (774, 1017, 63),
                                                                (775, 1017, 63),
                                                                (776, 1017, 63),
                                                                (777, 1017, 63),
                                                                (778, 1017, 63),
                                                                (779, 1017, 63),
                                                                (780, 1017, 63),
                                                                (781, 1017, 63),
                                                                (782, 1017, 63),
                                                                (783, 1017, 63),
                                                                (784, 1017, 63),
                                                                (785, 1017, 63),
                                                                (786, 1017, 63),
                                                                (787, 1017, 63),
                                                                (788, 1017, 63),
                                                                (789, 1017, 63),
                                                                (790, 1017, 63),
                                                                (791, 1017, 63),
                                                                (792, 1017, 63),
                                                                (793, 1017, 63),
                                                                (794, 1017, 63),
                                                                (795, 1017, 63),
                                                                (796, 1017, 63),
                                                                (797, 1017, 63),
                                                                (798, 1017, 63),
                                                                (799, 1017, 63),
                                                                (800, 1017, 63);

-- ----------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 6, id
FROM prescription
WHERE id BETWEEN 739 AND 750;

-- --------------------------------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 6, id
FROM prescription
WHERE id BETWEEN 751 AND 800;

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (801, 1018, 1),
                                                                (802, 1018, 1),
                                                                (803, 1018, 1),
                                                                (804, 1018, 1),
                                                                (805, 1018, 1),
                                                                (806, 1018, 1),
                                                                (807, 1018, 1),
                                                                (808, 1018, 1),
                                                                (809, 1018, 1),
                                                                (810, 1018, 1),
                                                                (811, 1018, 1),
                                                                (812, 1018, 1),
                                                                (813, 1018, 1),
                                                                (814, 1018, 1),
                                                                (815, 1018, 1),
                                                                (816, 1018, 1),
                                                                (817, 1018, 1),
                                                                (818, 1018, 1),
                                                                (819, 1018, 1),
                                                                (820, 1018, 1),
                                                                (821, 1018, 1),
                                                                (822, 1018, 1),
                                                                (823, 1018, 1),
                                                                (824, 1018, 1),
                                                                (825, 1018, 1),
                                                                (826, 1018, 1),
                                                                (827, 1018, 1),
                                                                (828, 1018, 1),
                                                                (829, 1018, 1),
                                                                (830, 1018, 1);

-- ---------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 21, id
FROM prescription
WHERE id BETWEEN 801 AND 830;

-- ----------------------------------------------

INSERT INTO `prescription` (`id`, `bmdc_id`, `district_id`) VALUES
                                                                (831, 1018, 1),
                                                                (832, 1018, 1),
                                                                (833, 1018, 1),
                                                                (834, 1018, 1),
                                                                (835, 1018, 1),
                                                                (836, 1018, 1),
                                                                (837, 1018, 1),
                                                                (838, 1018, 1),
                                                                (839, 1018, 1),
                                                                (840, 1018, 1),
                                                                (841, 1018, 1),
                                                                (842, 1018, 1),
                                                                (843, 1018, 1),
                                                                (844, 1018, 1),
                                                                (845, 1018, 1),
                                                                (846, 1018, 1),
                                                                (847, 1018, 1),
                                                                (848, 1018, 1),
                                                                (849, 1018, 1),
                                                                (850, 1018, 1),
                                                                (851, 1018, 1),
                                                                (852, 1018, 1),
                                                                (853, 1018, 1),
                                                                (854, 1018, 1),
                                                                (855, 1018, 1),
                                                                (856, 1018, 1),
                                                                (857, 1018, 1),
                                                                (858, 1018, 1),
                                                                (859, 1018, 1),
                                                                (860, 1018, 1);

-- -------------------------------

INSERT INTO drug_prescription (drug_id, prescription_id)
SELECT 1, id
FROM prescription
WHERE id BETWEEN 831 AND 860;