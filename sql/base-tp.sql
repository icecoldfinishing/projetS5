DROP DATABASE tp24;
CREATE DATABASE tp24;
USE tp24;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) ,
    password VARCHAR(255),
    balance DECIMAL(10, 2) DEFAULT 0.00,
    is_admin INT
);

CREATE TABLE gifts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) ,
    category ENUM('fille', 'garcon', 'neutre') ,
    price DECIMAL(10, 2),
    img VARCHAR(50),
    stat INT
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT ,
    amount DECIMAL(10, 2),
    stat INT
);

CREATE TABLE selected_gifts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT ,
    gift_id INT 
);

create table team(
    id INT AUTO_INCREMENT PRIMARY KEY,
    img VARCHAR(20),
    name VARCHAR(20),
    role VARCHAR(20)
);

create table publicity(
        id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(100),
        description VARCHAR(100)
);

CREATE TABLE commission(
    valeur INT
);

INSERT INTO commission(valeur) 
VALUES
(10);


INSERT INTO team (img, name, role)
VALUES
('team1.jpg', 'Santa Claus', 'chef de projet'),
('team2.jpg', 'Rohy', 'ETU003295'),
('team3.jpg', 'Sanda', 'ETU003246');

INSERT INTO publicity (title, description)
VALUES
('Christmas Gift Selection', 'Find the perfect gift for your loved ones with our curated selection of unique and thoughtful presents.'),
('Holiday Specials', 'Enjoy exclusive discounts and deals on festive gifts and products to make your Christmas celebrations even brighter.'),
('Fast Delivery', 'Get your Christmas gifts delivered quickly and safely to your doorstep, so you can enjoy the holidays without delay.');


INSERT INTO users (username, password, balance, is_admin) VALUES
('rohy', 'rohy', 1000.00, 0),
('sanda', 'sanda', 500.00, 0),
('rojo', 'rojo', 0.00, 1);

INSERT INTO gifts (name, category, price, img, stat) VALUES
('Poupee Barbie', 'fille', 25.50, 'img1.jpg', 0),
('Jeu de construction LEGO', 'garcon', 40.00, 'img2.jpg', 0),
('Puzzle animaux', 'neutre', 15.00, 'img3.jpg', 0),
('Tricycle rose', 'fille', 55.00, 'img4.jpg', 0),
('Camion jouet', 'garcon', 30.00, 'img5.jpg', 0),
('Jeu d eveil musical', 'neutre', 20.00, 'img6.jpg', 0),
('Chateau de princesse', 'fille', 75.00, 'img7.jpg', 0),
('Robot telecommande', 'garcon', 60.00, 'img8.jpg', 0),
('Livre illustre', 'neutre', 10.00, 'img9.jpg', 0),
('Cuisine pour enfants', 'fille', 80.00, 'img10.jpg', 0),
('Balle de football', 'garcon', 20.00, 'img11.jpg', 0),
('Jeu de societe familial', 'neutre', 25.00, 'img12.jpg', 0),
('Trousseau de bijoux', 'fille', 18.00, 'img13.jpg', 0),
('Voiture telecommandee', 'garcon', 45.00, 'img14.jpg', 0),
('Mallette de coloriage', 'neutre', 12.00, 'img15.jpg', 0),
('Maison de poupee', 'fille', 90.00, 'img16.jpg', 0),
('Deguisement super-heros', 'garcon', 35.00, 'img17.jpg', 0),
('Kit de jardinage pour enfants', 'neutre', 22.00, 'img19.jpg', 0),
('Kit de perles a enfiler', 'fille', 15.00, 'img18.jpg', 0),
('Piste de voitures', 'garcon', 50.00, 'img20.jpg', 0),
('Mini piano', 'neutre', 55.00, 'img21.jpg', 0),
('Sac a dos licorne', 'fille', 20.00, 'img22.jpg', 0),
('Drone debutant', 'garcon', 70.00, 'img23.jpg', 0),
('Tente de jeu', 'neutre', 40.00, 'img24.jpg', 0),
('Set de maquillage pour enfants', 'fille', 28.00, 'img25.jpg', 0),
('Jeu de flechettes', 'garcon', 18.00, 'img26.jpg', 0),
('Coffret scientifique', 'neutre', 35.00, 'img27.jpg', 0),
('Cheval a bascule', 'fille', 60.00, 'img28.jpg', 0),
('Tablette educative', 'garcon', 80.00, 'img29.jpg', 0),
('Tapis volant', 'neutre', 50.00, 'img30.jpg', 0),
('Sugard daddy', 'fille', 30.00, 'img31.jpg', 0),
('Velo tout-terrain', 'garcon', 120.00, 'img32.jpg', 0),
('Montre', 'neutre', 8.00, 'img33.jpg', 0),
('Skate', 'garcon', 200.00, 'img34.jpg', 0),
('Sac à main Louis Vuitton', 'fille', 1500.00, 'img35.jpg', 0),
('Manette ps5', 'garcon', 340.00, 'img36.jpg', 0),
('Ps5', 'neutre', 1200.00, 'img37.jpg', 0),
('Trotinette électrique', 'garcon', 2500.00, 'img38.jpg', 0),
('Xbox serie x', 'neutre', 2000.00, 'img39.jpg', 0),
('Asus rog flow', 'neutre', 3800.00, 'img40.jpg', 0),
('Mystery gift', 'neutre', 1000.00, 'img41.jpg', 0),
('Nintendo switch', 'neutre', 500.00, 'img42.jpg', 0),
('Tapis de yoga en édition limitée', 'fille', 250.00, 'img43.jpg', 0),
('Appareil photo reflex', 'garcon', 1200.00, 'img44.jpg', 0),
('Smartwatch haut de gamme', 'neutre', 400.00, 'img45.jpg', 0),
('Paire de skis de compétition', 'garcon', 1500.00, 'img46.jpg', 0),
('Kit de jardinage intelligent', 'fille', 350.00, 'img47.jpg', 0),
('Jeu de construction haut de gamme', 'neutre', 500.00, 'img48.jpg', 0),
('Quad', 'neutre', 3400.00, 'img49.jpg', 0),
('Mini scooter', 'garcon', 5200.00, 'img50.jpg', 0);
