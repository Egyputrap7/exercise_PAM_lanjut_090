import 'package:exercise_1/register.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final namaController = TextEditingController();
  final passwordController = TextEditingController();

  bool passTogle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              // key: _formField,
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/image/pokemontext.png',
                  height: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Let's get Started.",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "There's No Sense In Going Out Of",
                        style: TextStyle(fontSize: 18, color: Colors.black45))),
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "Your way TO Get Somebody TO Like You",
                        style: TextStyle(fontSize: 18, color: Colors.black45))),
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
              Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text: "Password",
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
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value == '') {
                              return 'Please Enter Your Password';
                            }
                          }),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: TextButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){

                      }else{}
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.5,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 120),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)))),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow)),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
