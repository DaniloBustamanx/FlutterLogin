
import 'package:flutter/material.dart';
class LoginClass extends StatefulWidget {
  const LoginClass({super.key});

  @override
  State<LoginClass> createState() => _LoginClassState();
}

class _LoginClassState extends State<LoginClass> {

  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 154, 154),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 90.0
          ),
          children: <Widget> [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/1.png'),
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'DeliciousHandrawn',
                    fontSize: 50.0
                  ),
                  ),
                   const Divider(
                  height: 30.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    hintText: "Ingresa tu nombre de usuario",
                    labelText: "Nombre",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                    suffixIcon: const Icon(
                      Icons.verified_user
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                  onSubmitted: (valor){
                    _nombre = valor;
                    print('El nombre $_nombre');
                  },
                ),
                const Divider(
                  height: 30.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Ingresa tus credenciales',
                    labelText: 'Contraseña',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                    suffixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  onSubmitted: (valor){
                    _password = valor;
                    print('La constraseña es $_password');
                  },
                ),
                const Divider(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/design');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 154, 154), // Cambiar el color de fondo del botón
                    onPrimary: Colors.black, // Cambiar el color del texto del botón
                    side: const BorderSide(width: 2.0, color: Colors.pink),
                  ),
                  child: const Text('Iniciar sesión')
                  )
              ],
            )
          ],
        ),
      );
  }
}
