// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/MyProfile.dart';
// import 'package:verify/phone.dart';
// import 'package:verify/profile.dart';

class MyVerify extends StatefulWidget {
  final String mobileNumber;

  const MyVerify({Key? key, required this.mobileNumber}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}


class _MyVerifyState extends State<MyVerify> {

  // final FirebaseAuth auth = FirebaseAuth.instance;

  void _navigateToProfilePage() {
    // Navigator.push(
    //   context as BuildContext,
    //   MaterialPageRoute(builder: (context) => MyProfile()),
    // );
  }

  @override
  Widget build(BuildContext context) {

    var code = "";
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Verify number",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "code is sent to ${widget.mobileNumber}",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            //boxes to add otp
            // Pinput(
            //   length :6,
            //   showCursor : true,
            //   onChanged: (value){
            //     code=value;
            //   }
            // ),
            SizedBox(height: 20.0),
            Row(

              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    "Didn't recieve the code?",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                        Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    width: 140,
                    height: 20,
                    child: const Center(
                      child: Text(
                        'Request Again?',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:() {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
                // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: code);

                // Sign the user in (or link) with the credential
                // await auth.signInWithCredential(credential);

                // Navigator.pushNamed(context, 'profile');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                primary: Colors.blue[900],
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "VERIFY AND CONTINUE",
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