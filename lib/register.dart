import 'package:exercise_1/dashboard.dart';
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
  final repasswordController = TextEditingController();

  final emailController = TextEditingController();

  bool passTogle = true;
  bool repassTogle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
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
              key: _formKey,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/image/pokemon_logo.png'),
                        radius: 40,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: const TextSpan(
                          text: "Register",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(
                            text: "Name",
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
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Name';
                                }
                                else if(value.length < 6){
                        return "Name must be atleast 6 characters";
                                }
                              })
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(
                            text: "Email",
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
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Your Email';
                                }
                                final bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value);
                                if (!emailValid) {
                                  return "Please  enter valid email";
                                }
                              })
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
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
                    child: TextFormField(
                      key: Key('passwordField'),
                      controller: passwordController,
                        obscureText: passTogle,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              passTogle
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if(value!.isEmpty)
                      {
                        return 'Please a Enter Password';
                      }
                      else if (value.length < 6) {
                        return "Password must be atleast 6 characters";
                      }
                      return null;
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(
                            text: "Re-Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: repasswordController,
                      obscureText: repassTogle,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffix: InkWell(
                          onTap: _toggleRePasswordView,
                          child: Icon(
                            repassTogle
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please re-enter password';
                        }
                        print(passwordController.text);

                        
                        print(repasswordController.text);
                        if (passwordController.text != repasswordController.text) {
                          return "Password does not match";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _sendDataToSecondScreen(context);
                          } else {}
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
                ],
              )),
        )));
  }

  void _togglePasswordView() {
    setState(() {
      passTogle = !passTogle;
    });
  }

  void _toggleRePasswordView() {
    setState(() {
      repassTogle = !repassTogle;
    });
  }
  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = namaController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => dashboard (text: textToSend,),
        ));
  }
}
