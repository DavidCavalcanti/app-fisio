import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

/* WIDGETS */
/*
Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Email",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Colors.black87),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}
*/
/*
Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Senha",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: const TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock, color: Colors.black87),
              hintText: 'Senha',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}
*/
/*
Widget entrarButton(BuildContext context) {
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
                  Navigator.pushNamed(context, '/entrar');
                },
                child: const Text("Entrar"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}
*/

Widget cadastrarButton(BuildContext context) {
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
                  Navigator.pushNamed(context, '/registration');
                },
                child: const Text("Cadastrar"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

Widget buildForgetPassword() {
  return Center(
      child: TextButton(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      primary: Colors.white,
    ),
    onPressed: () {},
    child: const Text(
      "Esqueceu sua senha?",
    ),
  ));
}

/*
class Fisioterapeuta {
  String nome, crefito, email, telefone, senha;
  int id;

  Fisioterapeuta(
      {required this.nome,
      required this.crefito,
      required this.email,
      required this.telefone,
      required this.senha,
      required this.id});

  get emailTeste {
    return email;
  }
}
*/

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();

  String emailController = "";

  Map emails = {"1": "usuario1@email.com", "2": "usuario2@email.com"};
  Map senhas = {"1": "123", "2": "321"};

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
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        /* PRA SE DAR MERDA */
                        child: Icon(Icons.account_circle,
                            color: Colors.white, size: 132),
                      ),
                      const Text(
                        "Fisioterapeuta",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      //EMAIL
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            height: 60,
                            child: TextField(
                              controller: _emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.black87),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 14),
                                  prefixIcon:
                                      Icon(Icons.email, color: Colors.black87),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.black38)),
                            ),
                          )
                        ],
                      ),
                      //FIM DO EMAIL
                      const SizedBox(height: 20),
                      //SENHA
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Senha",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            height: 60,
                            child: TextField(
                              controller: _passwordEditingController,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(color: Colors.black87),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 14),
                                  prefixIcon:
                                      Icon(Icons.lock, color: Colors.black87),
                                  hintText: 'Senha',
                                  hintStyle: TextStyle(color: Colors.black38)),
                            ),
                          )
                        ],
                      ),
                      //FIM DA SENHA
                      const SizedBox(height: 25),
                      //ENTRAR
                      Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: <
                                Widget>[
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
                                      String emailController =
                                          _emailEditingController.text;
                                      String passwordController =
                                          _passwordEditingController.text;

                                      if (emails
                                          .containsValue(emailController)) {
                                        var key1 = emails.keys.firstWhere(
                                            (k) => emails[k] == emailController,
                                            orElse: () => null);

                                        if (key1 != null) {
                                          if (senhas[key1] ==
                                              passwordController) {
                                            Navigator.pushNamed(
                                                context, '/entrar');
                                          }
                                        }
                                      } else {
                                        print("Email e senha errados!");
                                        print(emailController);
                                        print(passwordController);
                                      }
                                    },
                                    child: const Text("Entrar"),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      //FIM ENTRAR
                      //entrarButton(context),
                      const SizedBox(height: 20),
                      cadastrarButton(context),
                      const SizedBox(height: 20),
                      buildForgetPassword()
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
