# All types pokemon can have
SELECT * FROM types;

# Name of pokemon with id 45
SELECT name FROM pokemons WHERE id = 45;

# How many pokemon are there?
SELECT count(*) FROM pokemons;

# How many types are there?
SELECT count(*) FROM types;

# How many pokemon have a secondary type?
SELECT count(*) FROM pokemons WHERE secondary_type IS NOT NULL;