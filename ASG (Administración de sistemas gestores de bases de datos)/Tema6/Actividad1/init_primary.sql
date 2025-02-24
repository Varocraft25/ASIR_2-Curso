-- Crear un usuario para la replicación
CREATE USER replicator WITH REPLICATION ENCRYPTED PASSWORD 'replicapass';

-- Crear una ranura de replicación lógica (opcional, si usas pglogical)
SELECT pg_create_logical_replication_slot('replica_slot', 'pgoutput');
