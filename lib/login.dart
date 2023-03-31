import 'package:flutter/material.dart';


void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100),
          alignment: Alignment.topCenter,
          child: Image.asset('assets/image/pokemontext.png'),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              text: "Let's get Started.",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.yellow
              )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          alignment: Alignment.center,
          child: RichText(text: TextSpan(
            text: "There's No Sense In Going Out Of",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45
            )
          )
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: RichText(text: TextSpan(
            text: "Your way TO Get Somebody TO Like You",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45
            )
          )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30, left: 20),
          alignment: Alignment.centerLeft,
          child: RichText(text: TextSpan(
            text: "Nama",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            )
          )
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 10,left: 15),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(icon: Icon(Icons.person)),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Please Enter Your Name';
                  }else{
                    return null;
                  }
                }
              )
            ],
          )
        )



       ]

        ),
      ),
    );
  }
}


