import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) async{
  //mensaje de pedido de computadora
  print("Pide tu computadora!");
  print(await muestraLaPeticionEnPantalla());

}

//funcion que simela la espera de captar la voz del usuario.

Future<String> escuchadorDeLaPeticion() => Future.delayed(
      Duration(seconds: 3),
      () => 'Computadora Gamers',
    );

// funcion donde muestra el resultado en pantalla.
Future<String> muestraLaPeticionEnPantalla() async {
  var order = await escuchadorDeLaPeticion();
  return 'La peticion del usuario ha sido: $order';
  }