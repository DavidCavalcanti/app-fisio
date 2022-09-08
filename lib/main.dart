import 'package:flutter/material.dart';
import 'package:login_page/screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profileEdition_screen.dart';
import 'screens/patient_register.dart';
import 'screens/initialProfile_screen.dart';

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
        '/entrar': (context) => const InitialProfile(),
        '/registration': (context) => const RegistrationScreen(),
        '/editar perfil': (context) => const ProfileScreen(),
        '/cadastrar paciente': (context) => const CadastroPaciente(),
      },
    );
  }
}

//home: LoginScreen()