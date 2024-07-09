void main() {
  // si c# linq.
  var paises=["Chile","Argentina","Peru"]; // List<String> o List<dynamic>
  print(paises[0].toUpperCase());
  Map<String,String> cliente={"nombre":"john","apellido":"doe"}; // Map<dynamic,dynamic>,Map<String,String>
  var numeros=[10,20,30,40,50,60,70,80,90,100];
  print(numeros);
  for(var num in numeros) {
    print(num);
  }
  for(int i=0;i<10;i++) {
    print(i);
  }
  numeros.forEach(print); // para cada uno de los valores, llama a print
  print(numeros.map((num)=>num*3));
  print(numeros.map((num)=>num*3).toList());

  print(numeros.where((num)=>num>30).toList());
  print(numeros.where(filtrar).toList());



}
bool filtrar(num) {
  return num>30;
}