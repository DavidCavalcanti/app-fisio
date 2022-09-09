import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class paciente_3 extends StatefulWidget {
  const paciente_3({Key? key}) : super(key: key);   
    @override
  State<paciente_3> createState() => _paciente_3State();
}
  Widget pacintenome(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              'Daniel Yago Junior',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}

  Widget CPFj(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              '055.407.910-01',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}

  Widget EnderecoJ(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              'Rua Pernambuco',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}


  Widget TelefoneJ(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              '(74)98888-7043',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}
 
   Widget ETelefoneJ(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              '(74)98402-3773',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
  );
}
 
    Widget AlergiaJ(){
  return Center(
    child: Container(
          width: 240.0,
          height: 42.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              'Pimenta',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
            
          ),
        ),
  );
}
 


class _paciente_3State extends State<paciente_3> {
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

                      const SizedBox(height: 40),
                       const SizedBox(height: 50),
                       pacintenome(),
                      const SizedBox(height: 20),
                      CPFj(),
                      const SizedBox(height: 20),
                      EnderecoJ(),
                      const SizedBox(height: 20),
                    TelefoneJ(),
                      const SizedBox(height: 20),
                      ETelefoneJ(),
                      const SizedBox(height: 20),
                      AlergiaJ(),                      
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
