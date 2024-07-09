class Libro {
  String titulo;
  int precio;
  String genero;
  Libro(this.titulo, this.precio, this.genero);
}

void main() {
  var libros = [
    Libro("harry potter", 3000, "fantasia"),
    Libro("Libro2", 3000, "fantasia"),
    Libro("Libro3", 1500, "novela"),
    Libro("Libro4", 500, "novela"),
  ];
  // mostrarlo en la pantalla:
  print("---foreach:--------");
  libros.forEach(mostrarLibro);
  print("---where y foreach:--------");
  // filtrar los libros que son novela
  libros.where((libro) => libro.genero == "novela").forEach(mostrarLibro);
  // mostrar los titulos de los libros en mayuscula.
  print(libros.map((libro) => libro.titulo.toUpperCase()).toList());
  // reducir (toma un listado y devuelve un valor)
  mostrarLibro(libros.reduce((libroAcumular, libro) =>
      Libro("El total:", libroAcumular.precio + libro.precio, "")));
  mostrarLibro(libros.reduce(reducirFuncion));
  // sumar todos los precios de los libros novela
  mostrarLibro(
      libros.where((libro) => libro.genero == "novela").reduce(reducirFuncion));
}

void mostrarLibro(Libro libro) {
  print("${libro.titulo} ${libro.precio} ${libro.genero}");
}

Libro reducirFuncion(Libro libroAcumular, Libro libro) {
  return Libro("el total:", libroAcumular.precio + libro.precio, "sin genero");
}
