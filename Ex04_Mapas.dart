void main()
{
  final pokemon = {
    'Name': 'Pikachu',
    'HP': 100, 
    'isAlive': true,
    'abilities': ['Impact Trueno', 'Cola de hierro', 'Rápido'],
    'sprites': 
    {
      1: "pikachu/front.png",
      2: "pikachu/back.png",
    }
  };

  final Map<String, dynamic>trainer = {
    'Name': 'Ash Ketchup',
    'Gender': 'Male',
    'Age': 12,
    'isGymnasiumLeader': false
  };

  final pokemons=
  {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot"
  };
  

  print(""" 
  Los datos del pokemon usando el Mapa son:
  -------------------------------------------------
  Pokemon= $pokemon
  Trainer = $trainer
  Pokemons= $pokemons
  """);
  
  print("********************************************************************");
  print(""" 
  Accediendo a las propiedades del pokemon usando los braquets/corchetes []:
  ----------------------------------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  ------------------------------------------------------------------------------------------
  Front: ${pokemon['sprites']}
  Back: ${pokemon['sprites']}
  """);
  //Dado que la solucion ya esta obsoleta lo que queda es crear una nueva variable con el objeto
  // destructurar las imagenes para acceder a ellas
  
  final tpm_sprites = pokemon['sprites'] as Map<int, String>;
  
  print(""" Accediendo a las propiedades del pokemon usando los braquets/corchetes [ ]);
  ------------------------------------------------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  --------------------------------------------------------------------------------------------
  Front: ${tpm_sprites[1]}
  Back: ${tpm_sprites[2]}
  """);
}