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
      appBar: AppBar(

      ),
    );
  }
}