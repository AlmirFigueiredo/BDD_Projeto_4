-- Criando um user analista de dados que vai ter acesso a consultar tudo  e criar views.
CREATE ROLE analista_de_dados WITH LOGIN PASSWORD 'achismosempremelhor';

GRANT USAGE ON SCHEMA public TO analista_de_dados;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO analista_de_dados;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO analista_de_dados;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO analista_de_dados;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON SEQUENCES TO analista_de_dados;
GRANT CREATE ON SCHEMA public TO analista_de_dados;
 
-- Crie o user estagiario que tem permissao apenas para chorar e dar select
CREATE ROLE estagiario WITH LOGIN PASSWORD 'naoehgente';
GRANT USAGE ON SCHEMA public TO estagiario;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO estagiario;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO estagiario;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO estagiario;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON SEQUENCES TO estagiario;
