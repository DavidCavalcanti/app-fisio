import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';

class paciente_4 extends StatefulWidget {
  const paciente_4({Key? key}) : super(key: key);   
    @override
  State<paciente_4> createState() => _paciente_4State();
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
              'Marcos Vinicius Ramos',
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
              '074.448.074-47',
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
              'Rua do Amor',
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
              '(31)98442-5643',
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
              '(31)98414-1173',
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
              'Rivotril',
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
 


class _paciente_4State extends State<paciente_4> {
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
                        "Marcos Vinicius Ramos",
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
