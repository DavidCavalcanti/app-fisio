import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileEdition();
}

// Icon Profile
Widget buildProfile() {
  return Center(
    child: SizedBox(
      height: 180,
      child: Stack(
        children: [
          const Icon(Icons.account_circle, color: Colors.white, size: 150),
          Positioned(
              right: 05,
              top: 90,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo,
                  size: 25,
                ),
              ))
        ],
      ),
    ),
  );
}

// Form Nome
Widget buildName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
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

// Form E-mail
Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
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

// Form Telefone
Widget buildPhone() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
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
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.call, color: Colors.black87),
              hintText: 'Telefone',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}

Widget buildSalvar(BuildContext context) {
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
                  Navigator.pop(context);
                },
                child: const Text("Salvar"),
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

class _ProfileEdition extends State<ProfileScreen> {
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
                        "Perfil",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 25),
                      buildProfile(),
                      const SizedBox(height: 20),
                      buildName(),
                      const SizedBox(height: 20),
                      buildEmail(),
                      const SizedBox(height: 20),
                      buildPhone(),
                      const SizedBox(height: 25),
                      buildSalvar(context)
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
