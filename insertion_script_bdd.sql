/* Insert users. */
TRUNCATE TABLE users RESTART IDENTITY CASCADE;
INSERT INTO users (id, username, password) VALUES (1, 'Pizzaiolo24', '54dsa4d5a');
INSERT INTO users (id, username, password) VALUES (2, 'Patricia', 'd65s4a894d6');
INSERT INTO users (id, username, password) VALUES (3, 'Deliverer1', '84d6as541d86w');
INSERT INTO users (id, username, password) VALUES (4, 'Gilbert', 'wdqdwqeqwe56');


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
INSERT INTO users_groups (users_id, groups_id) VALUES (1, 2);
INSERT INTO users_groups (users_id, groups_id) VALUES (2, 1);
INSERT INTO users_groups (users_id, groups_id) VALUES (4, 1);
INSERT INTO users_groups (users_id, groups_id) VALUES (3, 3);


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
INSERT INTO address (id, street, region, city, zip, complement) VALUES (1, '20 rue de la paix', 'ile-de-france', 'Paris', 10, '');
INSERT INTO address (id, street, region, city, zip, complement) VALUES (2, '12 allee boireau', 'ile-de-france', 'Saint-Denis', 10, '');
INSERT INTO address (id, street, region, city, zip, complement) VALUES (3, '1 bis bis', 'ile-de-france', 'Juvisy', 10, '');
INSERT INTO address (id, street, region, city, zip, complement) VALUES (4, '5 bd hello', 'ile-de-france', 'Ivry-sur-seine', 10, '');
INSERT INTO address (id, street, region, city, zip, complement) VALUES (5, '60 rue brement', '', 'Toulouse', 10, '');
INSERT INTO address (id, street, region, city, zip, complement) VALUES (6, '100 rue champs-elysees', '', 'Marseille', 10, '');


/* Insert restaurant. */
TRUNCATE TABLE restaurant RESTART IDENTITY CASCADE;
INSERT INTO restaurant (id, name, rank, address_id) VALUES (1, 'Par tous les moyens', 2);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (2, 'Pizza House', 1);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (3, 'Pikata', 4);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (4, 'Trehen', 5);
INSERT INTO restaurant (id, name, rank, address_id) VALUES (5, 'Cahem', 3);

/* Insert users_restaurant. */
TRUNCATE TABLE users_restaurant RESTART IDENTITY CASCADE;
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (1, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (1, 1);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (1, 5);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (2, 2);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (2, 3);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (2, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (3, 1);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (3, 4);
INSERT INTO users_restaurant (users_id, restaurant_id) VALUES (3, 5);


/*
4df05837-2496-481e-aa83-d425716fa9fc
e6ba0549-fada-4c61-adf7-42cad0772dd0
2e57eec1-5ab8-4bb5-ae5e-de2f30b233c3
d5a814a7-4915-4a38-be85-9b26e26093de
*/