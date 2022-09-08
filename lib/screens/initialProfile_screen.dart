import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitialProfile extends StatefulWidget {
  const InitialProfile({Key? key}) : super(key: key);

  @override
  State<InitialProfile> createState() => _InitialProfile();
}

// Icon Profile
Widget buildProfile(BuildContext context) {
  return Center(
    child: SizedBox(
      height: 280,
      child: Stack(
        children: [
          const Icon(Icons.account_circle, color: Colors.white, size: 150),
          Positioned(
              right: 05,
              top: 25,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/editar perfil');
                },
                icon: const Icon(
                  Icons.mode_edit_outline_rounded,
                  size: 30,
                ),
              )),
          const Text(
            "Dr(a). Fulano(a)",
            style: TextStyle(
                height: 15,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),

          // Positioned(
          //   top: 220,
          //   child: Text(
          //     "Dr(a). Fulano(a)",
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold),
          //   ),
          // )
        ],
      ),
    ),
  );
}

// Form Nome
Widget cadastrarPaciente(BuildContext context) {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: TextButton(
                style: TextButton.styleFrom(
                  //padding: const EdgeInsets.all(),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 10),
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 15),
                    Icon(Icons.account_circle_outlined,
                        color: Colors.black, size: 70),
                    Text("Cadastrar Paciente"),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastrar paciente');
                },
                //child: const Text("Cadastrar Paciente"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

// Form E-mail
Widget buscarPaciente(BuildContext context) {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: TextButton(
                style: TextButton.styleFrom(
                  //padding: const EdgeInsets.all(),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 10),
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 15),
                    Icon(Icons.search_rounded, color: Colors.black, size: 70),
                    Text("Buscar Paciente"),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/buscar paciente');
                },
                //child: const Text("Cadastrar Paciente"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}
// Form Telefon

class _InitialProfile extends State<InitialProfile> {
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
                      const SizedBox(height: 60),
                      const Text(
                        "Bem vindo(a)!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 55),
                      buildProfile(context),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          cadastrarPaciente(context),
                          const SizedBox(
                            width: 70,
                          ),
                          buscarPaciente(context),
                        ],
                      ),
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
