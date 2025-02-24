-- Conectar la replicación
CREATE SUBSCRIPTION my_subscription
    CONNECTION 'host=db_primary port=5432 user=replicator password=replicapass dbname=primarydb'
    PUBLICATION my_publication;
