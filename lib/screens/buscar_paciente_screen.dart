import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/services.dart';

class BuscarPaciente extends StatefulWidget {
  const BuscarPaciente({Key? key}) : super(key: key);

  @override
  State<BuscarPaciente> createState() => _BuscarPacienteState();
}

Widget buscarPacienteButton() {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: const Color.fromARGB(255, 0, 0, 0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text("Nome"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

Widget exibirPacientes() {
  return Center(
    child: Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.all(12),
      color: const Color.fromARGB(255, 39, 49, 51),
    ),
  );
}

class _BuscarPacienteState extends State<BuscarPaciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff0d8aa6),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      const Text(
                        "Buscar Paciente",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      buscarPacienteButton(),
                      const SizedBox(height: 40),
                      for (var i = 0; i < 10; i++) exibirPacientes(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//teste