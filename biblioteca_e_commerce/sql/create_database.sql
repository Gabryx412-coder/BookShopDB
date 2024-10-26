-- Script per creare il database e le tabelle

-- Creazione del database
CREATE DATABASE IF NOT EXISTS biblioteca_e_commerce;
USE biblioteca_e_commerce;

-- Creazione della tabella 'utenti'
CREATE TABLE IF NOT EXISTS utenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    data_registrazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    indirizzo VARCHAR(255) DEFAULT NULL
);

-- Creazione della tabella 'prodotti'
CREATE TABLE IF NOT EXISTS prodotti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(255) NOT NULL,
    autore VARCHAR(255) NOT NULL,
    descrizione TEXT NOT NULL,
    prezzo DECIMAL(10, 2) NOT NULL CHECK (prezzo >= 0),
    disponibilita INT NOT NULL CHECK (disponibilita >= 0),
    data_aggiunta TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creazione della tabella 'ordini'
CREATE TABLE IF NOT EXISTS ordini (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utente_id INT NOT NULL,
    data_ordine TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    totale DECIMAL(10, 2) NOT NULL CHECK (totale >= 0),
    FOREIGN KEY (utente_id) REFERENCES utenti(id) ON DELETE CASCADE
);

-- Creazione della tabella 'dettagli_ordine'
CREATE TABLE IF NOT EXISTS dettagli_ordine (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ordine_id INT NOT NULL,
    prodotto_id INT NOT NULL,
    quantita INT NOT NULL CHECK (quantita > 0),
    prezzo DECIMAL(10, 2) NOT NULL CHECK (prezzo >= 0),
    FOREIGN KEY (ordine_id) REFERENCES ordini(id) ON DELETE CASCADE,
    FOREIGN KEY (prodotto_id) REFERENCES prodotti(id) ON DELETE CASCADE
);

-- Creazione della tabella 'recensioni'
CREATE TABLE IF NOT EXISTS recensioni (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utente_id INT NOT NULL,
    prodotto_id INT NOT NULL,
    valutazione INT NOT NULL CHECK (valutazione BETWEEN 1 AND 5),
    commento TEXT,
    data_recensione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (utente_id) REFERENCES utenti(id) ON DELETE CASCADE,
    FOREIGN KEY (prodotto_id) REFERENCES prodotti(id) ON DELETE CASCADE
);
