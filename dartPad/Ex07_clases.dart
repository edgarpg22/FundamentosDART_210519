void main() {
  //clase con parametros posicionales los parametros deben respetar su orden para ser asignados en la propiedad
  final wolverine = Hero("Logan", "Regeneración");
  //clases con parametros no posicionales , los puedo mandar en desorden
  final xmen = Team(type:"Heroes", name:"X-Men");
  final brotherhood = Team(name:"The brotherhood of Evil Mutans");
  
   print(wolverine);
   print(wolverine.name);
   print(wolverine.power);
   print("---------------------------------------------");
   print(xmen);
   print(xmen.name);
   print(xmen.type);
   //Invoccando al metodo rescrito con @override
   print(xmen.toString());
   print("---------------------------------------------");
   print(brotherhood);
   print(brotherhood.name);
   print(brotherhood.type);
   //Invoccando al metodo rescrito con @override
   print(brotherhood.toString());
  }

class Hero{
  
  String name;
  String power;
  
  Hero(String pName, String pPower)
    : name= pName, 
      power= pPower;
}

class Team{
  String name;
  String type;
  
  Team({required this.name, this.type="No definido"});
  
  @override
  String toString(){
    return "Grupo: $name, Tipo: $type";
  }
}