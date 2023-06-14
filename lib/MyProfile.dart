import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Padding(
         padding: const EdgeInsets.fromLTRB(20, 125, 12, 12),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Please Select Your Profile",
                       style: TextStyle(
                             fontSize: 22.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                       ),),
                        ),
                   Container(
                     height: 150,
                     width: 350,
                     padding: const EdgeInsets.all(16.0),
                     decoration: BoxDecoration(
                       border: Border.all(
                         width: 5,
                       ),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(
                           Icons.radio_button_off,
                           size: 25,
                           color: Colors.black,
                         ),
                         Icon(
                           Icons.house_siding_outlined,
                           size: 70,
                           color: Colors.black,
                         ),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Shipper",
                             style: TextStyle(
                                 fontSize: 22.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black
                             )),
                             Text("Lorem ipsum dolor sit amet,\n consectetur adipiscing",
                             style: TextStyle(fontSize: 15.0,
                                 fontWeight: FontWeight.normal,
                                 color: Colors.black),),
                           ],
                         )
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 40.0),
                     child: Container(
                       height: 150,
                       width: 350,
                       padding: const EdgeInsets.all(16.0),
                       decoration: BoxDecoration(
                         border: Border.all(
                           width: 5,
                         ),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(
                             Icons.radio_button_off,
                             size: 25,
                             color: Colors.black,
                           ),
                           Icon(
                             Icons.fire_truck_sharp,
                             size: 70,
                             color: Colors.black,
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Transporter",
                                   style: TextStyle(
                                       fontSize: 22.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.black
                                   )),
                               Text("Lorem ipsum dolor sit amet,\n consectetur adipiscing",
                                 style: TextStyle(fontSize: 15.0,
                                     fontWeight: FontWeight.normal,
                                     color: Colors.black),),
                             ],
                           )
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 40),
                     child: ElevatedButton(
                       onPressed:() {


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
                           "CONTINUE",
                           style: TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
           ),
       )
       );
  }
}
