import 'package:flutter/material.dart';
import 'package:login_page/screens/registration_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profileEdition_screen.dart';


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
        '/entrar': (context) => const ProfileScreen(),
        '/registration': (context) => const RegistrationScreen(),
        
      },
    );
  }
}

//home: LoginScreen()