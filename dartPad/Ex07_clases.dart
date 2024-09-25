void main() {
  final wolverine = Hero("Logan", "Regeneración");
  final xmen = Team("X-Men", "Heroes");
  
   print(wolverine);
   print(wolverine.name);
   print(wolverine.power);
   print("---------------------------------------------");
   print(xmen);
   print(xmen.name);
   print(xmen.type);
  }

class Hero{
  String name;
  String power;
  Hero(String pName, String pPower)
    : name= pName, power= pPower;
}

class Team{
  String name;
  String type;
  
  Team(this.name, this.type);
}