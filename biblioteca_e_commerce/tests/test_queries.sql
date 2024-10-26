-- Query 1: Elenco di tutti gli utenti
SELECT * FROM utenti;

-- Query 2: Elenco di tutti i prodotti
SELECT * FROM prodotti;

-- Query 3: Dettagli degli ordini con informazioni sugli utenti
SELECT o.id AS ordine_id, u.nome, o.data_ordine, o.totale
FROM ordini o
JOIN utenti u ON o.utente_id = u.id;

-- Query 4: Dettagli di un ordine specifico
SELECT do.ordine_id, p.titolo, do.quantita, do.prezzo
FROM dettagli_ordine do
JOIN prodotti p ON do.prodotto_id = p.id
WHERE do.ordine_id = 1;

-- Query 5: Media delle valutazioni per ogni prodotto
SELECT p.titolo, AVG(r.valutazione) AS media_valutazione
FROM recensioni r
JOIN prodotti p ON r.prodotto_id = p.id
GROUP BY p.titolo;

-- Query 6: Prodotti più venduti (basato sul totale degli ordini)
SELECT p.titolo, SUM(do.quantita) AS totale_venduto
FROM dettagli_ordine do
JOIN prodotti p ON do.prodotto_id = p.id
GROUP BY p.titolo
ORDER BY totale_venduto DESC
LIMIT 5;

-- Query 7: Numero totale di ordini per utente
SELECT u.nome, COUNT(o.id) AS numero_ordini
FROM utenti u
LEFT JOIN ordini o ON u.id = o.utente_id
GROUP BY u.nome;

-- Query 8: Prodotti disponibili con un prezzo inferiore a 15 euro
SELECT * FROM prodotti
WHERE prezzo < 15.00;

-- Query 9: Elenco delle recensioni con dettagli sui prodotti e utenti
SELECT r.commento, u.nome AS utente, p.titolo AS prodotto, r.valutazione
FROM recensioni r
JOIN utenti u ON r.utente_id = u.id
JOIN prodotti p ON r.prodotto_id = p.id;

-- Query 10: Prodotti ordinati per disponibilità
SELECT * FROM prodotti
ORDER BY disponibilita DESC;
