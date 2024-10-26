-- Script per inserire dati di esempio

-- Inserimento dati nella tabella 'utenti'
INSERT INTO utenti (nome, email, password, indirizzo) VALUES
('Mario Rossi', 'mario.rossi@example.com', SHA2('password1', 256), 'Via Roma 1, Milano'),
('Luigi Bianchi', 'luigi.bianchi@example.com', SHA2('password2', 256), 'Via Milano 2, Roma'),
('Giulia Verdi', 'giulia.verdi@example.com', SHA2('password3', 256), 'Via Napoli 3, Napoli'),
('Marco Neri', 'marco.neri@example.com', SHA2('password4', 256), NULL),
('Anna Gialli', 'anna.gialli@example.com', SHA2('password5', 256), 'Via Firenze 4, Firenze'),
('Luca Blu', 'luca.blu@example.com', SHA2('password6', 256), 'Via Venezia 5, Venezia'),
('Sara Arancio', 'sara.arancio@example.com', SHA2('password7', 256), NULL),
('Francesca Viola', 'francesca.viola@example.com', SHA2('password8', 256), 'Via Torino 6, Torino'),
('Giorgio Marrone', 'giorgio.marrone@example.com', SHA2('password9', 256), 'Via Bari 7, Bari'),
('Claudia Rosa', 'claudia.rosa@example.com', SHA2('password10', 256), NULL);

-- Inserimento dati nella tabella 'prodotti'
INSERT INTO prodotti (titolo, autore, descrizione, prezzo, disponibilita) VALUES
('Il Grande Gatsby', 'F. Scott Fitzgerald', 'Un romanzo sulla vita negli anni ruggenti.', 10.99, 5),
('1984', 'George Orwell', 'Un classico della distopia moderna.', 8.99, 10),
('Il Signore degli Anelli', 'J.R.R. Tolkien', 'Una fantastica avventura nel mondo di mezzo.', 25.00, 3),
('La Divina Commedia', 'Dante Alighieri', 'Un poema epico che esplora l’aldilà.', 15.50, 7),
('Orgoglio e Pregiudizio', 'Jane Austen', 'Una storia d’amore ambientata nell’Inghilterra del XIX secolo.', 12.00, 4),
('Cento anni di solitudine', 'Gabriel García Márquez', 'La storia di una famiglia nel villaggio di Macondo.', 20.00, 6),
('Il Codice Da Vinci', 'Dan Brown', 'Un thriller avvincente che mescola arte e storia.', 18.99, 8),
('Moby Dick', 'Herman Melville', 'La caccia alla balena bianca.', 14.00, 2),
('La Metamorfosi', 'Franz Kafka', 'La trasformazione di un uomo in un insetto.', 7.50, 10),
('Sapiens: Da animali a dèi', 'Yuval Noah Harari', 'Un viaggio nella storia dell’umanità.', 22.00, 5);

-- Inserimento dati nella tabella 'ordini'
INSERT INTO ordini (utente_id, totale) VALUES
(1, 29.98),
(2, 8.99),
(3, 35.50),
(4, 18.99),
(1, 22.00);

-- Inserimento dati nella tabella 'dettagli_ordine'
INSERT INTO dettagli_ordine (ordine_id, prodotto_id, quantita, prezzo) VALUES
(1, 1, 2, 10.99),
(1, 2, 1, 8.99),
(2, 3, 1, 25.00),
(3, 4, 1, 15.50),
(4, 5, 1, 12.00),
(1, 6, 1, 18.99);

-- Inserimento dati nella tabella 'recensioni'
INSERT INTO recensioni (utente_id, prodotto_id, valutazione, commento) VALUES
(1, 1, 5, 'Un capolavoro assoluto!'),
(2, 3, 4, 'Avvincente e ben scritto.'),
(3, 5, 3, 'Carino ma non il mio preferito.'),
(1, 4, 5, 'Un libro che tutti dovrebbero leggere.'),
(4, 2, 2, 'Non mi è piaciuto molto.'),
(5, 6, 4, 'Ottima lettura per passare il tempo.'),
(1, 7, 5, 'Incredibile! Non riuscivo a smettere di leggere.'),
(2, 8, 3, 'Abbastanza interessante.'),
(3, 9, 4, 'Profondamente toccante.'),
(4, 10, 4, 'Molto informativo.');
