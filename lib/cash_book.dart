
import 'package:cash_book_app/RegistrationScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'LoginScreen.dart';


class CashBookScreen extends StatefulWidget {
  @override
  State<CashBookScreen> createState() => _CashBookScreenState();
}


class _CashBookScreenState extends State<CashBookScreen> {
  // LoginScreen({required Key key}) : super(key: key);

  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,


        body:

      Form(
          key: loginFormKey,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),

                          child: (
                              Container(
                                  width: 200,
                                  height: 180,




                                  child: Image.asset('assets/images/ais.png'))
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        const Align(
                            alignment: Alignment.topCenter,

                            child: Text(
                              'Cash Book',
                              style:
                              TextStyle(fontSize: 40, color: Color(0xFFF8A91B),fontWeight: FontWeight.bold,),
                            )),

                        SizedBox(
                          height: 15.h,
                        ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),

                    child: (
                        Container(
                            width: 200,
                            height: 150,




                            child: Image.asset('assets/images/splashillustration.png'))
                    ),
                  ),

                  SizedBox(
                    height: 43.h,
                  ),


                                      Align(
                                        alignment: Alignment.center,

                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xFFF8A91B),
                                              onPrimary: Colors.white,
                                              elevation: 3,

                                              minimumSize: const Size(300, 50),
                                              maximumSize: const Size(300, 50),

                                            ),
                                            child:
                                            Text('Registration',
                                                style:
                                                TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                                            ),

                                            onPressed: () {

                                              Navigator.of(context).push(MaterialPageRoute(
                                                  builder: (context) => RegistrationScreen()));



                                            },
                                          ),
                                        ),

                                      ),

                  SizedBox(
                    height: 23.h,
                  ),


                  Align(
                    alignment: Alignment.center,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF8A91B),
                          onPrimary: Colors.white,
                          elevation: 3,

                          minimumSize: const Size(300, 50),
                          maximumSize: const Size(300, 50),

                        ),
                        child:
                        Text('Login',
                            style:
                            TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                        ),

                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));


                        },
                      ),
                    ),

                  )





                ],)])))));




  }
}