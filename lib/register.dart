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
        floatingActionButton: SizedBox(       
          height:50,
          width:50,
          child:FloatingActionButton(        
              child: Icon(Icons.arrow_back_sharp), //child widget inside this button
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                //task to execute when this button is pressed
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
                  // floatingActionButtonLocation

                  )
            ],
          )),
        )));
  }
}
