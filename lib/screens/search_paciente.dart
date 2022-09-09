import 'dart:js';

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

Widget cadastrarNome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // const Text(
      //   "Nome",
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 16,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        width: 300,
        decoration: BoxDecoration(color: Colors.white,
            // borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 50,
        child: const TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.account_circle, color: Colors.black87),
              hintText: 'Nome',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      ),
    ],
  );
  
}




// Widget exibirPacientes() {
//   return Center(
//     child: Container(
//       width: 80,
//       height: 80,
//       margin: const EdgeInsets.all(12),
//       color: const Color.fromARGB(255, 39, 49, 51),
//     ),
//   );
// }

Widget paciente1(context) {
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
                  textStyle: const TextStyle(fontSize: 24),
                ),
                onPressed: () {
                Navigator.pushNamed(context, '/daniel');
                },
                child: const Text("Daniel Yago Junior"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}



Widget paciente2(context) {
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
                  textStyle: const TextStyle(fontSize: 24),
                ),
                onPressed: () {
                 Navigator.pushNamed(context, '/joao');
                },
                child: const Text("Joao Aroldo Tigre"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

Widget paciente3(context) {
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
                  textStyle: const TextStyle(fontSize: 24),
                ),
                onPressed: () {
                Navigator.pushNamed(context, '/marcos');
                },
                child: const Text("Marcos Vinicius Ramos"),
              ),
            ),
          ],
        ),
      )
    ]),
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
                       const SizedBox(height: 50),
                      const SizedBox(height: 20),
                      paciente1(context),
                      const SizedBox(height: 20),
                      paciente2(context),
                      const SizedBox(height: 20),
                      paciente3(context),


                       
                     
                  
                     /* for (var i = 0; i < 10; i++)
                      cadastrarNome() //exibirPacientes(),*/
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
      
     
        /* body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text('username $index'),
          ),
        ),
      ),*/
    );

  }



  
}