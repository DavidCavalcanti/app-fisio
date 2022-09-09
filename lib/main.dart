import 'package:flutter/material.dart';
import 'package:login_page/screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profileEdition_screen.dart';
import 'screens/patient_register.dart';
import 'screens/initialProfile_screen.dart';
import 'screens/pacientes/paciente_1.dart';
import 'screens/pacientes/paciente_2.dart';
import 'screens/pacientes/paciente_3.dart';
import 'screens/search_paciente.dart';

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
        '/buscar paciente':(context) => const BuscarPaciente(),
        '/joao':(context) => const paciente_1(),
        '/daniel':(context) => const paciente_2(),
       '/marcos':(context) => const paciente_3(),
      },
    );
  }
}

//home: LoginScreen()