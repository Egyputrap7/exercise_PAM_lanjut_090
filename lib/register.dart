import 'package:exercise_1/login.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _formKey = GlobalKey<FormState>();
  final namaController = TextEditingController();
  final passwordController = TextEditingController();

  bool passTogle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: FloatingActionButton(
            child: Icon(Icons.arrow_back_sharp),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 12),
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/image/pokemon_logo.png'),
                    radius: 60,
                  )),
              Container(
                margin: EdgeInsets.only(top: 12),
                alignment: Alignment.topCenter,
                child: RichText(
                  text: const TextSpan(
                      text: "Register",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text: "Nama",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold))),
              ),
              Container(
                  margin: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                          keyboardType: TextInputType.name,
                          controller: namaController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value == '') {
                              return 'Please Enter Your Name';
                            }
                          })
                    ],
                  )),
            ],
          )),
        )));
  }
}
