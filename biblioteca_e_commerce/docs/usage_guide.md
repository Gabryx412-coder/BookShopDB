# Guida all'Uso del Database

## Operazioni CRUD

### Creare un Nuovo Utente
```sql
INSERT INTO utenti (nome, email, password) VALUES ('Nome Utente', 'email@example.com', SHA2('password', 256));
