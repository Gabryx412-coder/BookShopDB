-- Query Avanzate per reportistica

-- Numero totale di ordini per utente
SELECT utente_id, COUNT(*) AS numero_ordini
FROM ordini
GROUP BY utente_id;

-- Media delle valutazioni per ogni prodotto
SELECT prodotto_id, AVG(valutazione) AS media_valutazioni
FROM recensioni
GROUP BY prodotto_id;

-- Prodotti più venduti basato sul totale degli ordini
SELECT p.id, p.titolo, SUM(d.quantita) AS totale_venduto
FROM prodotti p
JOIN dettagli_ordine d ON p.id = d.prodotto_id
GROUP BY p.id
ORDER BY totale_venduto DESC;

-- Ricerca di prodotti in base a filtri
SELECT * FROM prodotti
WHERE prezzo BETWEEN 10 AND 20 AND disponibilita > 0
ORDER BY titolo;
