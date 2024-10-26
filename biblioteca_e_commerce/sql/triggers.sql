-- Trigger per aggiornare il totale dell'ordine dopo l'inserimento di un nuovo dettaglio ordine
DELIMITER //

CREATE TRIGGER aggiorna_totale_ordine
AFTER INSERT ON dettagli_ordine
FOR EACH ROW
BEGIN
    DECLARE nuovo_totale DECIMAL(10, 2);

    -- Calcola il nuovo totale dell'ordine
    SELECT SUM(quantita * prezzo) INTO nuovo_totale
    FROM dettagli_ordine
    WHERE ordine_id = NEW.ordine_id;

    -- Aggiorna il totale dell'ordine
    UPDATE ordini
    SET totale = nuovo_totale
    WHERE id = NEW.ordine_id;
END;

//

DELIMITER ;

-- Trigger per ridurre la disponibilità del prodotto quando viene effettuato un nuovo ordine
DELIMITER //

CREATE TRIGGER riduci_disponibilita_prodotto
AFTER INSERT ON dettagli_ordine
FOR EACH ROW
BEGIN
    UPDATE prodotti
    SET disponibilita = disponibilita - NEW.quantita
    WHERE id = NEW.prodotto_id;
END;

//

DELIMITER ;

-- Trigger per ripristinare la disponibilità del prodotto quando viene eliminato un dettaglio ordine
DELIMITER //

CREATE TRIGGER ripristina_disponibilita_prodotto
AFTER DELETE ON dettagli_ordine
FOR EACH ROW
BEGIN
    UPDATE prodotti
    SET disponibilita = disponibilita + OLD.quantita
    WHERE id = OLD.prodotto_id;
END;

//

DELIMITER ;

-- Trigger per impedire l'inserimento di recensioni per prodotti che non esistono
DELIMITER //

CREATE TRIGGER verifica_recensione
BEFORE INSERT ON recensioni
FOR EACH ROW
BEGIN
    DECLARE prodotto_esistente INT;

    SELECT COUNT(*) INTO prodotto_esistente
    FROM prodotti
    WHERE id = NEW.prodotto_id;

    IF prodotto_esistente = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Il prodotto non esiste!';
    END IF;
END;

//

DELIMITER ;
