-- Popolamento della tabella utenti
INSERT INTO utenti (nome, email, password, data_registrazione, indirizzo) VALUES
('Mario Rossi', 'mario.rossi@example.com', SHA2('password123', 256), NOW(), 'Via Roma, 1, Milano'),
('Giulia Bianchi', 'giulia.bianchi@example.com', SHA2('password456', 256), NOW(), 'Piazza Navona, 10, Roma'),
('Luca Verdi', 'luca.verdi@example.com', SHA2('password789', 256), NOW(), NULL),
('Sara Neri', 'sara.neri@example.com', SHA2('password321', 256), NOW(), 'Corso Buenos Aires, 5, Milano'),
('Anna Ferrari', 'anna.ferrari@example.com', SHA2('password654', 256), NOW(), 'Viale Trastevere, 8, Roma'),
('Marco Gialli', 'marco.gialli@example.com', SHA2('password987', 256), NOW(), 'Via Della Repubblica, 2, Torino'),
('Laura Rossi', 'laura.rossi@example.com', SHA2('password159', 256), NOW(), NULL),
('Francesco Grassi', 'francesco.grassi@example.com', SHA2('password753', 256), NOW(), 'Via Milano, 4, Bologna'),
('Martina Esposito', 'martina.esposito@example.com', SHA2('password258', 256), NOW(), 'Via Napoli, 6, Napoli'),
('Alessandro Conti', 'alessandro.conti@example.com', SHA2('password147', 256), NOW(), NULL);

-- Popolamento della tabella prodotti
INSERT INTO prodotti (titolo, autore, descrizione, prezzo, disponibilita, data_aggiunta) VALUES
('Il nome della rosa', 'Umberto Eco', 'Un romanzo giallo ambientato in un monastero medievale.', 12.99, 5, NOW()),
('1984', 'George Orwell', 'Un romanzo distopico che esplora temi di totalitarismo e sorveglianza.', 10.99, 10, NOW()),
('Il codice Da Vinci', 'Dan Brown', 'Un thriller che unisce arte, storia e religione.', 14.99, 8, NOW()),
('La solitudine dei numeri primi', 'Paolo Giordano', 'La storia di due ragazzi che affrontano la solitudine.', 9.99, 15, NOW()),
('Il piccolo principe', 'Antoine de Saint-Exupéry', 'Una favola poetica che parla di amore e amicizia.', 8.99, 20, NOW()),
('La casa degli spiriti', 'Isabel Allende', 'Una saga familiare che attraversa generazioni e storie di magia.', 11.99, 7, NOW()),
('Il signore degli anelli', 'J.R.R. Tolkien', 'Un epico romanzo fantasy che segue la lotta per il potere.', 19.99, 3, NOW()),
('Il gatto con gli stivali', 'Charles Perrault', 'Una fiaba classica su un gatto astuto.', 6.99, 25, NOW()),
('Il barone rampante', 'Italo Calvino', 'La storia di un giovane nobile che decide di vivere sugli alberi.', 13.99, 12, NOW()),
('L’amica geniale', 'Elena Ferrante', 'Un romanzo che esplora l’amicizia tra due ragazze a Napoli.', 16.99, 4, NOW());

-- Popolamento della tabella ordini
INSERT INTO ordini (utente_id, data_ordine, totale) VALUES
(1, NOW(), 29.97),
(2, NOW(), 19.98),
(3, NOW(), 8.99),
(4, NOW(), 37.97),
(5, NOW(), 16.99);

-- Popolamento della tabella dettagli_ordine
INSERT INTO dettagli_ordine (ordine_id, prodotto_id, quantita, prezzo) VALUES
(1, 1, 1, 12.99),
(1, 3, 1, 14.99),
(2, 2, 2, 10.99),
(3, 4, 1, 9.99),
(4, 5, 2, 8.99),
(4, 6, 1, 11.99),
(5, 7, 1, 19.99);

-- Popolamento della tabella recensioni
INSERT INTO recensioni (utente_id, prodotto_id, valutazione, commento, data_recensione) VALUES
(1, 1, 5, 'Un capolavoro della letteratura!', NOW()),
(2, 2, 4, 'Un libro provocatorio, molto attuale.', NOW()),
(3, 3, 3, 'Mi aspettavo di più, ma è interessante.', NOW()),
(4, 4, 5, 'Bellissimo! Una lettura obbligatoria.', NOW()),
(5, 5, 2, 'Troppo breve, ma incantevole.', NOW()),
(1, 6, 4, 'Una storia coinvolgente.', NOW()),
(2, 7, 5, 'Un classico senza tempo.', NOW()),
(3, 8, 3, 'Carino, ma non il mio preferito.', NOW()),
(4, 9, 4, 'Calvino è sempre una garanzia.', NOW()),
(5, 10, 5, 'Un libro che rimarrà nel cuore.', NOW());
