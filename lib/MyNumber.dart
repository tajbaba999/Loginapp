import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/MyProfile.dart';
import 'package:loginapp/MyVerify.dart';
// import 'dart:js';

class MyNumber extends StatefulWidget {
  const MyNumber({super.key});

  static String verify = "";

  @override
  State<MyNumber> createState() => _MyNumberState();
}

class _MyNumberState extends State<MyNumber> {
  TextEditingController countryCode = TextEditingController();


  var phone="";

  @override
  void initState() {
    // TODO: implement initState
    countryCode.text = "+91";
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Please enter your mobile number",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10.0),
            const Text(
              "You'll receive a 4-digit code",
              style: TextStyle(fontSize: 16.0,color: Colors.grey),
            ),
            const Text(
              "to verify next",
              style: TextStyle(fontSize: 16.0,color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/indian_flag.png',
                        width: 30.0,
                        height: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      const Text(
                        "+91",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    onChanged: (value){
                      phone=value;
                    },
                    // controller: _mobileNumberController,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      hintText: "Enter your mobile number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: ()  async{

                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '${countryCode.text + phone}',
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {},
                  codeSent: (String verificationId, int? resendToken) {
                    MyNumber.verify=verificationId;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyVerify(mobileNumber: "${phone}")),
                    );
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );

                // Handle button press


                // _navigateToOtpPage();
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Remove round edges
                ),
                primary: Colors.blue[900],
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
