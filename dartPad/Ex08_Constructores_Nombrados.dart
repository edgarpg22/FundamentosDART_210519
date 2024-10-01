void main (){
  //Constructores nombrados
  //Caso de prueba 1 -- Enviando todos
  final edgarPerez = Person(
    ID: 22,
    cortesyTitle: "Ing.",
    name: "Edgar",
    firstLastName: "Pérez",
    secondLastName: "Garrido",
    gender: "Hombre",
    bloodGroup: "B+",
    photoURL: "images/clients/250.png",
    curp: "PEGE020217HPLRRDA2",
    birthdate: DateTime(2002,02,17),
    isActive: true,
    createdAt: DateTime(2024,09,2024,11,05,16)
  );
  print (edgarPerez);

  //Caso de prueba 2 -- Enviando solo los datos requeridos (obligatorios)
final amePerez = Person(
    ID: 21,
    cortesyTitle: "Ing.",
    name: "Ameli",
    firstLastName: "Pérez",
    secondLastName: "Garrido",
    gender: "Mujer",
    bloodGroup: "O-",
    birthdate: DateTime(2003,07,01));
    
    print(amePerez);
}

class Person{
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastName;
  String? secondLastName;
  String gender;
  String bloodGroup;
  String? photoURL;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updateAt;

  Person(
    {
      required this.ID,
      this.cortesyTitle,
      required this.name,
      required this.firstLastName,
      this.secondLastName,
      required this. gender,
      required this.bloodGroup,
      this.photoURL,
      this.curp,
      required this.birthdate,
      this.isActive = true,
      DateTime? createdAt,
      this.updateAt})
      : createdAt = createdAt ?? DateTime.now();

      @override
      String toString(){
        final String formatedBirthDate =
        "${birthdate.day.toString().padLeft(2,'0')}/"+
          "${birthdate.month.toString().padLeft(2,'0')}/${birthdate.year}";

        final String formatedCreatedDate =
          "${createdAt.day.toString().padLeft(2,'0')}/" +
            "${createdAt.month.toString().padLeft(2, '0')}/${createdAt.year}:${createdAt.hour.toString().padLeft(2,'0')} ${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2,'0')}:${createdAt.second.toString().padLeft(2,'0')}";

              curp ??= "No registrado";
              if(curp == "")curp = "No registrado";

              String status = "Sin definir";
              if(isActive)
                status = "Activo";
              else
                status = "Inactivo";

              return """
              --------------------------------------------------------------
              DATOS DE LA PERSONA
              --------------------------------------------------------------
              ID: $ID,
              Nombre: $name $firstLastName $secondLastName
              Género: $gender,
              Grupo sanguineo: $bloodGroup,
              Fecha de Nacimiento: $formatedBirthDate
              Foto: $photoURL
              CURP: $curp
              Estatus: $status
              Fecha de Registro: $formatedCreatedDate
              ----------------------------------------------------------------
              """;
      
      }
}