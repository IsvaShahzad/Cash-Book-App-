import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cleaning_services),
        onPressed: () {

          print("Floating button was pressed.");
          otpController.clear();

          // otpController.set(['2', '3', '5', '5', '7']);
          // otpController.setValue('3', 0);
          // otpController.setFocus(1);
        },
      ),
      body:

    Form(

    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

    SizedBox(
    height: 140.h,
    ),

    const Align(
    alignment: Alignment.topLeft,


    child: Text(
    'Verify OTP',
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
    child: Text('One-Time Password has been sent to your mobile number',
    style:
    TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold,)

    ),
    ),




      SizedBox(
        height: 70.h,
      ),



      Center(
        child: OTPTextField(
            controller: otpController,
            length: 5,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: TextStyle(fontSize: 17),
            onChanged: (pin) {
              print("Changed: " + pin);
            },
            onCompleted: (pin) {
              print("Completed: " + pin);
            }),
      ),
      SizedBox(
        height: 40.h,
      ),

       Column(
        children: [
          Align(
              alignment: Alignment.center),
          Text('You can resend OTP in'),
          TextButton(
              child: Text('30 seconds',),

              style: TextButton.styleFrom(
                primary: Color(0xFFF8A91B), // Text Color
              ),
              onPressed: () {

                null;
              }

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


          // Text('and'),
          //
          // TextButton(
          //     child: Text('Privacy Policy'),
          //     style: TextButton.styleFrom(
          //       primary: Color(0xFFF8A91B), // Text Color
          //     ),
          //     onPressed: () {
          //       null;
          //     })
          //

        ],
      ),
    ]))])))));
    }
}
