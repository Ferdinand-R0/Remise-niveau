CREATE DATABASE user;
USE user;
CREATE IF NOT EXISTS TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    role ENUM('Pâtissier', 'Client') NOT NULL
);

CREATE DATABASE fiches_patisserie;
USE fiches_patisserie;
CREATE IF NOT EXISTS TABLE fiches_patisserie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_patisserie VARCHAR(100) NOT NULL,
    photo VARCHAR(100) NOT NULL,
    descriptif TEXT,
    allergen VARCHAR(100),
    price DECIMAL(3, 2) NOT NULL,
    number_of_slices VARCHAR(100),
);

CREATE DATABASE commandes;
USE commandes;
CREATE IF NOT EXISTS TABLE commandes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(100) NOT NULL,
    prenom_client VARCHAR(100) NOT NULL,
    panier_commandes TEXT NOT NULL,
    delai DATETIME NOT NULL,
    type_de_paiment ENUM('en CB', 'en espèce') NOT NULL,
    total_panier DECIMAL(4, 2) NOT NULL,
    etat_commande ENUM('En attente', 'Validé', 'Refusé') NOT NULL,
);