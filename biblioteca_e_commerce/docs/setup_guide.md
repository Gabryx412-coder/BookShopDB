# Guida all'Installazione del Database di Gestione della Biblioteca / Sito di E-commerce

## Prerequisiti

Assicurati di avere i seguenti prerequisiti prima di iniziare:

- **MySQL Server**: Assicurati di avere un'installazione funzionante di MySQL Server. Puoi scaricarlo da [MySQL Downloads](https://dev.mysql.com/downloads/mysql/).
- **Client MySQL**: Utilizza un client MySQL come MySQL Workbench, phpMyAdmin o qualsiasi altro strumento di tua scelta per interagire con il server MySQL.

## Passaggi per l'Installazione

### 1. Creare il Database

1. **Apri il Client MySQL**: Connettiti al tuo server MySQL utilizzando il tuo client preferito.
2. **Esegui lo Script per Creare il Database e le Tabelle**: Copia e incolla il seguente comando SQL per creare il database:

   ```sql
   CREATE DATABASE IF NOT EXISTS gestione_biblioteca;
   USE gestione_biblioteca;
