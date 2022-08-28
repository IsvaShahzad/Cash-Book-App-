
import 'package:cash_book_app/Splash_Screen.dart';
import 'package:cash_book_app/cash_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    



    return ScreenUtilInit(
      designSize: const Size(360, 804),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {




            return MaterialApp(



          theme: ThemeData(


            inputDecorationTheme: const InputDecorationTheme(

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),

              ),
            ),
          ),





          //theme: new ThemeData(scaffoldBackgroundColor: const Color()),

          home:SplashScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}


