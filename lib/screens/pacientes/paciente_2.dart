import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class paciente_2 extends StatefulWidget {
  const paciente_2({Key? key}) : super(key: key);   
    @override
  State<paciente_2> createState() => _paciente_2State();
}
  Widget dm(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Diagnóstico Médico',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}

  Widget df(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Diagnóstico Funcional',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}

  Widget dfo(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Diagnóstico Fisoterapêutico',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}


  Widget ec(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Estrutura Corporal',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}
 
   Widget ap(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Atividade e Participação',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}
 
    Widget dc(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          // ignore: prefer_const_constructors
          child: Center(
            child: const Text(
              'Descrição Conduta',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
            
          ),
        ),
  );
}


Widget botaoExportar(BuildContext context) {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff020122),
                ),
              ),
            ),
            SizedBox(
              width: 155,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //Navigator.pop(context);
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Exportar'),
                      content: const Text('Selecione o meio de exportação: '),  
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('WhatsApp')),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('PDF'),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Email'),
                      ),
                    ]),
                  );
                },
                child: const Text("Exportar"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

class _paciente_2State extends State<paciente_2> {
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
                        "Daniel Yago Junior",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "CPF: 222.967.863-54",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 40),
                      dm(),
                      const SizedBox(height: 20),
                      df(),
                      const SizedBox(height: 20),
                      dfo(),
                      const SizedBox(height: 20),
                      ec(),
                      const SizedBox(height: 20),
                      ap(),
                      const SizedBox(height: 20),
                      dc(),
                      const SizedBox(height: 20),
                      botaoExportar(context),                      
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
