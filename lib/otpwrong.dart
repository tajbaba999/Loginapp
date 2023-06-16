import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Otpworng extends StatefulWidget {
  const Otpworng({super.key});

  @override
  State<Otpworng> createState() => _OtpworngState();
}

class _OtpworngState extends State<Otpworng> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text("Wrong "),
      ),
    );
  }
}
