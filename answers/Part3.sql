# What is each pokemon's primary type?
SELECT name, primary_type FROM pokemons;

# What is Rufflet's secondary type?
select types.name from types right join pokemons on pokemons.secondary_type = types.id where pokemons.name = "Rufflet";

# Names of pokemone that belong to the trainerID 303
select pokemons.name from pokemons right join pokemon_trainer on pokemons.id = pokemon_trainer.pokemon_id where pokemon_trainer.trainerID = 303;

# How many pokemon have a secondary type Poison
select pokemons.name from pokemons right join types on types.id = pokemons.secondary_type where types.name = "Poison";

# All primary types & count of pokemons of each type
select types.name, count(pokemons.primary_type) from pokemons right join types on types.id = pokemons.primary_type group by types.name;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
# do not display trainer
select trainers.trainerID, count(*) AS pokemons_at_100 from trainers right join pokemon_trainer on trainers.trainerID = pokemon_trainer.trainerID where pokemon_trainer.pokelevel = 100 group by pokemon_trainer.trainerID having count(*) > 1;

# How many pokemon belong to only one trainer
select pokemons.name from pokemons join pokemon_trainer on pokemons.id = pokemon_trainer.pokemon_id group by pokemon_trainer.pokemon_id having count(*) = 1;
