import 'package:flutter/material.dart';
import 'package:login_page/registration_screen.dart';
import 'package:login_page/tela_cadastro_paciente.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/cadastroPaciente': (context) => const CadastroPaciente(),
      },
    );
  }
}

//home: LoginScreen()