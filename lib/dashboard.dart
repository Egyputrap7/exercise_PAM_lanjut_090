import 'package:exercise_1/login.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {


    const dashboard({super.key, required this.text});
  final String text;

  @override
  State<dashboard> createState() => _dashboardState();
  
}

class _dashboardState extends State<dashboard> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: const TextSpan(
                          text: "Hello,Egy",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/image/Daco.png'),
                        radius: 40,
                        backgroundColor: Colors.blue,
                      )),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 12),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: const TextSpan(
                          text: "Pokedex",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                      alignment: Alignment.center,
                      child: Column(                     
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                       
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none
                              ),
                              hintText: "Search Pokemon",
                              prefixIcon: Icon(Icons.search)
                            ),
                           )
                        ],
                      )),
                     
              ],
            ),


        ))












      )
    );
  }
}
