
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'DashBoard.dart';

class SecondRegistrationScreen extends StatefulWidget {
  @override
  State<SecondRegistrationScreen> createState() => _SecondRegistrationScreenState();
}


class _SecondRegistrationScreenState extends State<SecondRegistrationScreen> {
  // LoginScreen({required Key key}) : super(key: key);
  bool _isObscure = true;
  final loginFormKey = GlobalKey<FormState>();
  var confirmPass;

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
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),

                          child: (
                              Container(
                                  width: 200,
                                  height: 150,



                                  child: Image.asset('assets/images/ais.png'))
                          ),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),

                        const Align(
                            alignment: Alignment.topLeft,


                            child: Text(
                              'Registration',
                              style:
                              TextStyle(fontSize: 35, color: Color(0xFFF8A91B),fontWeight: FontWeight.bold,),
                            )),



                                SizedBox(
                                  height: 40.h,
                                ),

                                Text('UserName',
                                    style:
                                    TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.bold,)

                                ),

                                SizedBox(
                                  height: 10.h,
                                ),


                                TextFormField(
                                  controller: emailController,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.1),
                                    hintText: 'Enter',
                                    hintStyle: TextStyle(fontSize: 15),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Some Text ';
                                    }
                                    return null;
                                  },
                                ),

                                SizedBox(
                                  height: 20.h,
                                ),

                                Text('Password',
                                    style:
                                    TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.bold,)

                                ),

                                SizedBox(
                                  height: 10.h,
                                ),

                                Container(


                                  child: TextFormField(
                                    controller: passwordController,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    obscureText: _isObscure,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(

                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,),
                                      ),
                                      hintText: ' Enter',
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      confirmPass = value;
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Some Text";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),

                                SizedBox(
                                  height: 30.h,
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

                                        minimumSize: const Size(320, 50),
                                        maximumSize: const Size(320, 50),

                                      ),
                                      child:
                                      Text('Get Started',
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                                      ),

                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => DashBoardScreen()));

                                      },
                                    ),
                                  ),

                                )],)),



                      )));
  }
}
