/* Insert users. */
TRUNCATE TABLE users RESTART IDENTITY CASCADE;
INSERT INTO users (id, username, password, created) VALUES (1, 'sgrancher0', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-11-19 09:37:27');
INSERT INTO users (id, username, password, created) VALUES (2, 'lmichieli1', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-07-18 20:46:16');
INSERT INTO users (id, username, password, created) VALUES (3, 'kwinsom2', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-11-10 06:23:52');
INSERT INTO users (id, username, password, created) VALUES (4, 'mpedrocco3', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-09-22 00:08:33');
INSERT INTO users (id, username, password, created) VALUES (5, 'geallis4', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-01-27 01:30:49');
INSERT INTO users (id, username, password, created) VALUES (6, 'jgoldis5', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-03-23 03:13:50');
INSERT INTO users (id, username, password, created) VALUES (7, 'acarwithim6', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-01-05 06:46:51');
INSERT INTO users (id, username, password, created) VALUES (8, 'cwhitwell7', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2018-12-01 02:20:33');
INSERT INTO users (id, username, password, created) VALUES (9, 'arodnight8', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-09-06 07:28:39');
INSERT INTO users (id, username, password, created) VALUES (10, 'oisacoff9', 'e60f62aa5b4937b647acd915f4a906d0d5f6338f', '2019-08-23 15:49:58');


/* Insert groups. */
TRUNCATE TABLE groups RESTART IDENTITY CASCADE;
INSERT INTO groups (id, name) VALUES (1, 'Admin');
INSERT INTO groups (id, name) VALUES (2, 'Pizzaiolo');
INSERT INTO groups (id, name) VALUES (3, 'Deliverer');


/* Insert permission. */
TRUNCATE TABLE permission RESTART IDENTITY CASCADE;
INSERT INTO permission (id, name) VALUES (1, 'Delete users');
INSERT INTO permission (id, name) VALUES (2, 'Delete recipe');
INSERT INTO permission (id, name) VALUES (3, 'Deliver a command');
INSERT INTO permission (id, name) VALUES (4, 'Act a paiement');
INSERT INTO permission (id, name) VALUES (5, 'View commands');


/* Insert users_groups. */
TRUNCATE TABLE users_groups RESTART IDENTITY CASCADE;
INSERT INTO users_groups (users_id, groups_id) VALUES (10, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (8, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (8, 3);
INSERT INTO users_groups (users_id, groups_id) VALUES (6, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (10, 1);
INSERT INTO users_groups (users_id, groups_id) VALUES (3, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (5, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (9, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (1, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (7, 3);
INSERT INTO users_groups (users_id, groups_id) VALUES (1, 3);
INSERT INTO users_groups (users_id, groups_id) VALUES (3, 1);
INSERT INTO users_groups (users_id, groups_id) VALUES (5, 3);


/* Insert groups_permission. */
TRUNCATE TABLE groups_permission RESTART IDENTITY CASCADE;
INSERT INTO groups_permission (groups_id, permission_id) VALUES (1, 1);
INSERT INTO groups_permission (groups_id, permission_id) VALUES (1, 2);
INSERT INTO groups_permission (groups_id, permission_id) VALUES (2, 4);
INSERT INTO groups_permission (groups_id, permission_id) VALUES (2, 5);
INSERT INTO groups_permission (groups_id, permission_id) VALUES (3, 4);
INSERT INTO groups_permission (groups_id, permission_id) VALUES (3, 5);


/* Insert address */
TRUNCATE TABLE address RESTART IDENTITY CASCADE;
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (1, null, 'Melody', 'ile-de-france', 'Watangan', 88842, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (2, null, 'Pond', 'ile-de-france', 'Wan Yai', 68686, 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (3, null, 'Dorton', 'ile-de-france', 'Evxinoúpolis', 18584, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (4, 'Kù', 'Springview', 'Languedoc-Roussillon', 'Bangolo', 46825, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (5, null, 'La Follette', 'ile-de-france', 'Auxerre', 14804, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (6, null, 'Vernon', 'ile-de-france', 'Kurunegala', 88927, 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (7, null, 'Golf', 'ile-de-france', 'Gambut', 79419, 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (8, null, 'Gulseth', 'ile-de-france', 'Ciudad del Este', 40449, 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (9, null, 'Bayside', 'ile-de-france', 'Volodars’k-Volyns’kyy', 34091, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (10, null, '7th', 'ile-de-france', 'Cisiec', 58271, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (11, null, 'Moland', 'ile-de-france', 'La Ravoire', 14675, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (12, null, 'Namekagon', 'ile-de-france', 'Mértola', 85239, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (13, null, 'Emmet', 'ile-de-france', 'Rizal', 80165, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (14, null, 'Algoma', 'ile-de-france', 'Bacuyangan', 33897, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (15, null, 'Rockefeller', 'Languedoc-Roussillon', 'Rulong', 97660, 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (16, null, 'Karstens', 'ile-de-france', 'Sinanju', 98323, null);
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (17, null, 'Golf', 'Languedoc-Roussillon', 'Paprotnia', 23509, 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (18, null, 'David', 'ile-de-france', 'Kista', 23967, 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (19, null, 'American', 'Languedoc-Roussillon', 'Zlatograd', 55908, 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus');
INSERT INTO address (id, receiver, street, region, city, zip, complement) VALUES (20, null, 'Brentwood', 'ile-de-france', 'Zamostochcha', 41717, null);


/* Insert restaurant. */
TRUNCATE TABLE restaurant RESTART IDENTITY CASCADE;
INSERT INTO restaurant (id, name, rank, address_id) VALUES (1, 'Wisozk-Sawayn', 3.4, 4);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (2, 'Pouros, Torp and Hahn', 3.0, 9);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (3, 'Reilly, Waters and Johnson', 2.6, 18);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (4, 'Lindgren-Hudson', 1.8, 17);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (5, 'Bernier Group', 4.1, 7);


/* Insert users_restaurant. */
TRUNCATE TABLE users_restaurant RESTART IDENTITY CASCADE;
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (7, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (5, 5);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (10, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (4, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (10, 3);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (7, 1);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (3, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (10, 1);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (6, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (8, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (5, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (1, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (3, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (2, 5);


/* Insert customer. */
TRUNCATE TABLE customer RESTART IDENTITY CASCADE;
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (1, 'jgant0', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'jgant0@nationalgeographic.com', 'Jennee', 'Gant');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (2, 'acollins1', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'acollins1@about.me', 'Adam', 'Collins');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (3, 'bburdoun2', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'bburdoun2@stumbleupon.com', 'Breanne', 'Burdoun');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (4, 'cfilippucci3', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'cfilippucci3@wordpress.com', 'Coral', 'Filippucci');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (5, 'spaulich4', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'spaulich4@cdc.gov', 'Stan', 'Paulich');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (6, 'kguerreau5', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'kguerreau5@devhub.com', 'Kylen', 'Guerreau');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (7, 'dgeorgeou6', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'dgeorgeou6@usa.gov', 'Daniella', 'Georgeou');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (8, 'bthurby7', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'bthurby7@spotify.com', 'Bel', 'Thurby');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (9, 'ccrosthwaite8', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'ccrosthwaite8@stanford.edu', 'Caro', 'Crosthwaite');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (10, 'zphateplace9', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'zphateplace9@noaa.gov', 'Zena', 'Phateplace');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (11, 'plasseya', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'plasseya@sfgate.com', 'Pancho', 'Lassey');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (12, 'cbrickwoodb', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'cbrickwoodb@cloudflare.com', 'Courtney', 'Brickwood');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (13, 'sgautreyc', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'sgautreyc@github.io', 'Sigmund', 'Gautrey');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (14, 'mthomkinsd', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mthomkinsd@ycombinator.com', 'Markos', 'Thomkins');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (15, 'mwantlinge', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mwantlinge@patch.com', 'Marcelia', 'Wantling');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (16, 'gpeterif', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'gpeterif@apple.com', 'Garrik', 'Peteri');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (17, 'wkeelingg', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'wkeelingg@geocities.com', 'Westbrooke', 'Keeling');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (18, 'cdankovh', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'cdankovh@acquirethisname.com', 'Charlot', 'Dankov');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (19, 'dbainbridgei', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'dbainbridgei@youtu.be', 'Dannel', 'Bainbridge');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (20, 'hblakebroughj', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'hblakebroughj@geocities.jp', 'Hope', 'Blakebrough');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (21, 'gloudwellk', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'gloudwellk@ox.ac.uk', 'Georgina', 'Loudwell');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (22, 'pdevillel', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'pdevillel@ihg.com', 'Palm', 'Deville');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (23, 'sspiterim', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'sspiterim@squidoo.com', 'Sibylle', 'Spiteri');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (24, 'tlancettn', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'tlancettn@squidoo.com', 'Tyler', 'Lancett');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (25, 'mkeareyo', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mkeareyo@rambler.ru', 'Marie-ann', 'Kearey');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (26, 'csimanenkop', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'csimanenkop@state.gov', 'Craggy', 'Simanenko');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (27, 'gthurstanq', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'gthurstanq@webmd.com', 'Garth', 'Thurstan');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (28, 'obroschker', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'obroschker@ucla.edu', 'Othello', 'Broschke');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (29, 'mstallions', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mstallions@51.la', 'Mariann', 'Stallion');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (30, 'fjeffcoatet', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'fjeffcoatet@behance.net', 'Franky', 'Jeffcoate');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (31, 'mcrispu', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mcrispu@huffingtonpost.com', 'Michaelina', 'Crisp');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (32, 'amartinatv', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'amartinatv@usda.gov', 'Aila', 'Martinat');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (33, 'mgawthorpw', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'mgawthorpw@bigcartel.com', 'Mozes', 'Gawthorp');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (34, 'alakerx', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'alakerx@chronoengine.com', 'Alix', 'Laker');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (35, 'wjealousy', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'wjealousy@chron.com', 'Waylin', 'Jealous');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (36, 'dweedz', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'dweedz@adobe.com', 'Doralynne', 'Weed');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (37, 'jsivill10', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'jsivill10@scribd.com', 'Johannah', 'Sivill');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (38, 'tlademann11', '5776aa4c82f99952749c9f144adc6b20f1d2c81c', 'tlademann11@wikia.com', 'Therese', 'Lademann');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (39, 'bhakonsen12', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'bhakonsen12@google.es', 'Barby', 'Hakonsen');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (40, 'obows13', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'obows13@exblog.jp', 'Othilie', 'Bows');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (41, 'kcorah14', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'kcorah14@fema.gov', 'Kirsti', 'Corah');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (42, 'casbury15', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'casbury15@newyorker.com', 'Cary', 'Asbury');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (43, 'ccorrado16', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'ccorrado16@gizmodo.com', 'Con', 'Corrado');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (44, 'slancaster17', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'slancaster17@independent.co.uk', 'Storm', 'Lancaster');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (45, 'wflaonier18', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'wflaonier18@google.com.au', 'Whitney', 'Flaonier');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (46, 'qisakovitch19', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'qisakovitch19@php.net', 'Quinn', 'Isakovitch');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (47, 'smonget1a', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'smonget1a@virginia.edu', 'Scott', 'Monget');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (48, 'awitch1b', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'awitch1b@facebook.com', 'Anderson', 'Witch');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (49, 'jpattrick1c', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'jpattrick1c@prweb.com', 'Jerad', 'Pattrick');
INSERT INTO customer (id, username, password, email, name, lastname) VALUES (50, 'mchasemoore1d', '279b38664ea8b1c376324e2c2985a52c23c6b2aa', 'mchasemoore1d@house.gov', 'Mart', 'Chasemoore');


/* Insert command. */
TRUNCATE TABLE command RESTART IDENTITY CASCADE;
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('c197f0dc-d189-487e-9917-bf993f237663', '2019-07-10 04:03:09', 'deliver', '[{"x":2, "y": 2}]', 17, 11, 2, 3.1, 3.1, 10873, 458.92, 4, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('3f9fc07c-860b-41d1-8751-36a3124907cf', '2019-07-03 15:40:43', 'on delivery', '[{"x":2, "y": 2}]', 36, 10, 4, 2.1, 2.8, 96103, 381.84, 2, false, 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer');
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('a236f51e-e8ed-4497-bc32-d21d646b369d', '2019-08-19 04:12:02', 'on delivery', '[{"x":2, "y": 2}]', 2, 12, 1, 4.4, 4.4, 3350, 496.54, 3, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('ee316664-a3aa-4f12-aaee-eabe696ab8a9', '2019-02-21 12:56:43', 'on delivery', '[{"x":2, "y": 2}]', 2, 12, 5, 3.5, 4.2, 88339, 144.99, 2, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('55f93bfa-a335-475e-80e5-81540bbb9b6b', '2019-04-07 05:35:44', 'preparing', '[{"x":2, "y": 2}]', 31, 6, 5, 1.8, 2.6, 78164, 260.11, 2, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('3fff7884-68db-4362-a27b-e3761e5fb94c', '2019-07-28 15:44:43', 'on delivery', '[{"x":2, "y": 2}]', 7, 10, 1, 3.5, 3.6, 8059, 276.29, 4, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('342028cd-5b3b-4f3d-8a38-d0a4fa2d9b47', '2019-09-18 05:52:08', 'deliver', '[{"x":2, "y": 2}]', 9, 14, 3, 4.3, 1.9, 96433, 149.21, 2, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('dc21de26-f6a4-4b02-92bc-50b7940c12b1', '2019-10-18 09:26:19', 'preparing', '[{"x":2, "y": 2}]', 9, 17, 5, 4.3, 1.7, 28154, 62.74, 4, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('3ff2697e-c8ba-44c0-9340-78846f2cd31b', '2019-04-30 20:34:18', 'on delivery', '[{"x":2, "y": 2}]', 19, 3, 2, 2.8, 4.0, 6765, 433.22, 4, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('0cec8494-774f-4bf6-9cba-994f2d65c54d', '2019-10-02 23:50:05', 'on delivery', '[{"x":2, "y": 2}]', 7, 1, 1, 2.4, 3.8, 24164, 357.69, 4, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('ce091b1c-ff8b-465a-9995-ac919154712e', '2019-01-02 18:40:14', 'preparing', '[{"x":2, "y": 2}]', 36, 2, 2, 1.1, 3.1, 85205, 235.04, 2, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('54e88e05-0aae-4b87-b2aa-30c76ee2cc59', '2019-03-11 22:57:54', 'deliver', '[{"x":2, "y": 2}]', 32, 18, 4, 1.4, 1.9, 57439, 52.92, 4, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('21169760-a1a7-46ae-844f-a7eb8307439a', '2019-08-18 00:45:49', 'preparing', '[{"x":2, "y": 2}]', 31, 13, 5, 4.8, 3.1, 16783, 167.39, 3, true, 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi');
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('3b2b355a-61a7-4375-95ca-d06cd3da4f58', '2018-12-07 04:40:42', 'deliver', '[{"x":2, "y": 2}]', 38, 10, 4, 2.5, 3.3, 42457, 386.35, 2, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('31b33d87-c01b-43f8-8880-7b930002fab6', '2019-08-16 04:49:57', 'preparing', '[{"x":2, "y": 2}]', 45, 16, 4, 1.5, 3.3, 41659, 12.75, 1, true, 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis');
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('77adc15d-0cf9-4256-8c72-165e5e8f4956', '2018-12-13 05:04:48', 'deliver', '[{"x":2, "y": 2}]', 44, 18, 5, 2.3, 2.8, 63112, 349.81, 2, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('f8a22f0b-f476-44bb-be42-e56527c93d98', '2019-09-05 16:48:06', 'deliver', '[{"x":2, "y": 2}]', 12, 15, 2, 3.5, 3.0, 14232, 371.28, 2, false, 'aliquam augue quam sollicitudin vitae');
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('fce6ef84-9f5a-4a67-80ff-2d8c29eb8a95', '2019-03-04 16:53:37', 'deliver', '[{"x":2, "y": 2}]', 4, 19, 3, 5.0, 4.4, 83845, 122.2, 4, false, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('d3a5334e-b66d-4d99-bd4f-f357c5d59299', '2019-11-16 21:17:05', 'deliver', '[{"x":2, "y": 2}]', 8, 14, 3, 4.3, 1.1, 89164, 72.55, 1, true, null);
INSERT INTO command (id, command_date, status, position, customer_id, address_id, restaurant_id, delivery_rate, command_rate, bill_number, price, payment_method, on_site, comment) VALUES ('20926abd-09d8-4aaa-bb98-f529fd15f40b', '2019-01-19 15:24:13', 'on delivery', '[{"x":2, "y": 2}]', 35, 16, 4, 2.4, 1.1, 90397, 22.15, 3, false, 'tincidunt in leo maecenas pulvinar lobortis est');


/* Insert recipe. */
TRUNCATE TABLE recipe RESTART IDENTITY CASCADE;
INSERT INTO recipe (id, name, description) VALUES (1, 'nunc', null);
INSERT INTO recipe (id, name, description) VALUES (2, 'nulla elit', 'nulla sed');
INSERT INTO recipe (id, name, description) VALUES (3, 'in purus eu', null);
INSERT INTO recipe (id, name, description) VALUES (4, 'tempus vivamus', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
INSERT INTO recipe (id, name, description) VALUES (5, 'vivamus tortor duis', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum');
INSERT INTO recipe (id, name, description) VALUES (6, 'odio donec', null);
INSERT INTO recipe (id, name, description) VALUES (7, 'nulla ac enim in tempor', null);
INSERT INTO recipe (id, name, description) VALUES (8, 'aliquam', null);
INSERT INTO recipe (id, name, description) VALUES (9, 'quam turpis adipiscing lorem vitae', null);
INSERT INTO recipe (id, name, description) VALUES (10, 'curabitur at ipsum ac tellus', null);


/* Insert command_recipe. */
TRUNCATE TABLE command_recipe RESTART IDENTITY CASCADE;
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('3fff7884-68db-4362-a27b-e3761e5fb94c', 10);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('a236f51e-e8ed-4497-bc32-d21d646b369d', 1);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('21169760-a1a7-46ae-844f-a7eb8307439a', 7);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('342028cd-5b3b-4f3d-8a38-d0a4fa2d9b47', 10);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('3ff2697e-c8ba-44c0-9340-78846f2cd31b', 9);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('3fff7884-68db-4362-a27b-e3761e5fb94c', 7);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('3ff2697e-c8ba-44c0-9340-78846f2cd31b', 4);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('342028cd-5b3b-4f3d-8a38-d0a4fa2d9b47', 5);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('0cec8494-774f-4bf6-9cba-994f2d65c54d', 2);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('55f93bfa-a335-475e-80e5-81540bbb9b6b', 8);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('dc21de26-f6a4-4b02-92bc-50b7940c12b1', 6);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('3ff2697e-c8ba-44c0-9340-78846f2cd31b', 8);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('fce6ef84-9f5a-4a67-80ff-2d8c29eb8a95', 10);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('0cec8494-774f-4bf6-9cba-994f2d65c54d', 8);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('55f93bfa-a335-475e-80e5-81540bbb9b6b', 2);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('342028cd-5b3b-4f3d-8a38-d0a4fa2d9b47', 9);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('54e88e05-0aae-4b87-b2aa-30c76ee2cc59', 1);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('ee316664-a3aa-4f12-aaee-eabe696ab8a9', 3);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('54e88e05-0aae-4b87-b2aa-30c76ee2cc59', 7);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('55f93bfa-a335-475e-80e5-81540bbb9b6b', 3);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('55f93bfa-a335-475e-80e5-81540bbb9b6b', 7);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('c197f0dc-d189-487e-9917-bf993f237663', 10);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('21169760-a1a7-46ae-844f-a7eb8307439a', 2);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('a236f51e-e8ed-4497-bc32-d21d646b369d', 9);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('d3a5334e-b66d-4d99-bd4f-f357c5d59299', 8);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('31b33d87-c01b-43f8-8880-7b930002fab6', 10);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('54e88e05-0aae-4b87-b2aa-30c76ee2cc59', 8);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('ce091b1c-ff8b-465a-9995-ac919154712e', 3);
INSERT INTO command_recipe (command_id, recipe_id) VALUES ('dc21de26-f6a4-4b02-92bc-50b7940c12b1', 10);


/* Insert ingredient. */
TRUNCATE TABLE ingredient RESTART IDENTITY CASCADE;
INSERT INTO ingredient (id, name, description) VALUES (1, 'MISSHA M SIGNATURE REAL COMPLETE BB', 'eleifend quam a odio in hac habitasse');
INSERT INTO ingredient (id, name, description) VALUES (2, 'Leader', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
INSERT INTO ingredient (id, name, description) VALUES (3, 'Cefuroxime', 'nulla justo aliquam quis turpis');
INSERT INTO ingredient (id, name, description) VALUES (4, 'Antibacterial Hand Sanitizer', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque');
INSERT INTO ingredient (id, name, description) VALUES (5, 'Phenobarbital', 37, 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl');


/* Insert recipe_ingredient. */
TRUNCATE TABLE recipe_ingredient RESTART IDENTITY CASCADE;
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 4);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (5, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 4);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 5);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (4, 4);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (10, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (3, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (1, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (4, 2);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (3, 3);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (1, 2);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 2);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 2);


/* Insert restaurant_ingredient. */
TRUNCATE TABLE restaurant_ingredient RESTART IDENTITY CASCADE;
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (2, 2, 30);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (3, 2, 234);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (5, 4, 54);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (5, 1, 60);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (4, 2, 3);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (4, 1, 10);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (4, 3, 33);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (5, 5, 435);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (5, 2, 870);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (3, 5, 99);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (3, 1, 6);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (4, 5, 46);
INSERT INTO restaurant_ingredient (restaurant_id, ingredient_id, stock) VALUES (4, 4, 19);

