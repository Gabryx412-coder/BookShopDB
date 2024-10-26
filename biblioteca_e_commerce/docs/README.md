# Biblioteca e E-Commerce Database

## Descrizione
Questo progetto è un sistema di gestione per una biblioteca e un sito di e-commerce, implementato utilizzando un database MySQL. Include la gestione di utenti, prodotti, ordini e recensioni, ed è progettato per dimostrare le competenze nella progettazione e gestione di database relazionali.

## Struttura del Database
- **utenti**: Gestisce le informazioni degli utenti.
- **prodotti**: Contiene i dettagli dei libri o dei prodotti in vendita.
- **ordini**: Registra gli ordini effettuati dagli utenti.
- **dettagli_ordine**: Specifica i dettagli di ciascun ordine.
- **recensioni**: Consente agli utenti di lasciare recensioni sui prodotti.

## Installazione

1. **Creare il database**: Eseguire lo script `create_database.sql` per creare il database e le tabelle.
2. **Popolare il database**: Eseguire lo script `insert_data.sql` per inserire dati di esempio.
3. **Eseguire le query**: Utilizzare lo script `queries.sql` per eseguire query avanzate.

## Utilizzo
Per eseguire le operazioni CRUD e le query, utilizzare un client MySQL come MySQL Workbench o phpMyAdmin. 

### Esempi di query

```sql
-- Esempio di inserimento di un nuovo utente
INSERT INTO utenti (nome, email, password) VALUES ('Nuovo Utente', 'nuovo.utente@example.com', SHA2('nuovapassword', 256));
