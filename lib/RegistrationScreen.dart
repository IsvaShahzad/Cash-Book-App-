
import 'package:cash_book_app/SecondRegistration.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/services.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {
  // LoginScreen({required Key key}) : super(key: key);
  bool _isObscure = true;
  final loginFormKey = GlobalKey<FormState>();
  var confirmPass;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController controller = TextEditingController();


  final TextEditingController passwordController = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

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
                              'Welcome!',
                              style:
                              TextStyle(fontSize: 35, color: Color(0xFFF8A91B),fontWeight: FontWeight.bold,),
                            )),



                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),


                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top:20.0),
                                  child: Text('Login to auto backup your data securely',
                                      style:
                                      TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold,)

                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 40),


                                  child: InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);

                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                    selectorConfig: SelectorConfig(
                                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                    ),
                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle: TextStyle(color: Colors.black),
                                    initialValue: number,
                                    textFieldController: controller,
                                    formatInput: false,
                                    keyboardType:
                                    TextInputType.numberWithOptions(signed: true, decimal: true),
                                    inputBorder: OutlineInputBorder(),
                                    onSaved: (PhoneNumber number) {
                                      print('On Saved: $number');
                                    },
                                  ),
                                ),






                                SizedBox(
                                  height: 20.h,
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
                                      Text('Submit',
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                                      ),

                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => SecondRegistrationScreen()));

                                      },
                                    ),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),

                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.center),
                                      Text('By creating an account you agree to our'),
                                      TextButton(
                                          child: Text('Terms of Service',),

                                          style: TextButton.styleFrom(
                                            primary: Color(0xFFF8A91B), // Text Color
                                          ),
                                          onPressed: () {

                                            null;
                                          }

                                          ),


                                      Text('and'),

                                      TextButton(
                                          child: Text('Privacy Policy'),
                                          style: TextButton.styleFrom(
                                            primary: Color(0xFFF8A91B), // Text Color
                                          ),
                                          onPressed: () {
                                            null;
                                          })


                                    ],
                                  ),
                                )

                              ],)),


                      ])))),
    );
  }
}
