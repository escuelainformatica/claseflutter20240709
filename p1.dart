// quiero hacer un sistema para el futbol.

// jugadores, equipos, paises
class Pais {
  // para los campos se usa "final" para indicar una constante
  // para los constructores se usa "const" para indicar una constante
  final int numPais; // final es constante.
  final String nombre;
  const Pais(this.numPais,this.nombre); // si tengo campos constantes puedo (opcionalmente) dejar el constructor constante
  const Pais.cons2({required this.numPais,required this.nombre});
}
class Equipo {
  int numEquipo;
  String nombre;
  String direccion;
  String telefono;
  Jugador capitan;
  Pais pais;
  List<Jugador> jugadores;
  Equipo(this.numEquipo,this.nombre,this.pais,this.jugadores,this.direccion,this.telefono,this.capitan);
  Equipo.nom({required this.numEquipo,
            required this.nombre,
            required this.pais,
            required this.jugadores,
            required this.direccion,
            required this.telefono,
            required this.capitan
            }); 
}
class Jugador {
  int numJugador;
  String nombre;
  String apellido;
  Jugador(this.numJugador,this.nombre,this.apellido);
}
void main() {
  // 1 equipo con 2 jugadores de un pais.
  var jug1=Jugador(1,"john","doe");
  var jug2=Jugador(2,"anna","smith");
  var capitan=Jugador(3,"peter","r");
  var pais=Pais(56,"Chile");  
  var everton=Equipo(1,"Everton",pais,[jug1,jug2],"Sunset blv #33","5654543",capitan);
  // otra forma
  var colocolo=Equipo(
    2,
    "ColoColo",
    Pais(56,"Chile"),
    [
      Jugador(1,"john","doe"),
      Jugador(2,"anna","Smith")
    ],
    "Sunset blv #33",
    "2222552",
    Jugador(3,"capitan","apellido")
  );
  var uchile=Equipo.nom(
    numEquipo:3,
    nombre:"Universidad de Chile",
    pais:Pais(56,"Chile"),
    direccion:"Beauchef Santiago",
    telefono:"64334344343",
    capitan:Jugador(3,"capitan","apellido"),
    jugadores:[
      Jugador(1,"john","doe"),
      Jugador(2,"anna","smith")
    ]
  );
  
  Map<String,dynamic> uChileMapa={
    "numEquipo":3,
    "nombre":"Universidad de Chile",
    "pais":{"numPais":56,"nombre":"Chile"},
    "direccion":"Beauchef Santiago",
    "telefono":"66444444",
    "capitan":{"numJugador":3,"nombre":"capitan","apellido":"apellido"},
    "jugadores":[
      {"numJugador":1,"nombre":"john","apellido":"doe"},
      {"numJugador":2,"nombre":"anna","apellido":"smith"}
    ]
  };

}