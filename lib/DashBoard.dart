
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'dart:io';
import 'dart:async';


class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {


  // LoginScreen({required Key key}) : super(key: key);
  String _myActivity = '';
  String _myActivityResult = '';
  String _myList = '';
  String _myFinalList = '';

  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
    _myList = '';
    _myFinalList = '';
  }

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('DashBoard',
              style: TextStyle(
                color: Color(0xFFF8A91B),
                fontWeight: FontWeight.bold,
              )),
          actions: [
            TextButton(
                child: Text('Logout',),
                style: TextButton.styleFrom(
                  primary: Color(0xFFF8A91B),

                  // Text Color
                ),
                onPressed: () {
                  null;
                })
          ],
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          
          child: ListView(padding: EdgeInsets.zero, children: [
            SizedBox(
              height: 110.h,

            ),

            Container(
              height: 130.0,
              child: DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                   ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            ListTile(
              leading: SizedBox(
                  height: 25.0,
                  width: 25.0, // fixed width and height
                  child:
                  new SvgPicture.asset('assets/images/ic_dashboard.svg')),
              title: const Text('Dashboard',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: SizedBox(
                  height: 25.0,
                  width: 25.0, // fixed width and height
                  child: new SvgPicture.asset(
                      'assets/images/ic_inspection_reports.svg')),
              title: const Text('Inspection Reports',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                null;
              },
            ),
            ListTile(
                leading: SizedBox(
                    height: 25.0,
                    width: 25.0, // fixed width and height
                    child: new SvgPicture.asset(
                        'assets/images/ic_releaseReq.svg')),
                title: const Text('Release Requests',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                 null;
                }),

            ListTile(
              leading: SizedBox(
                  height: 25.0,
                  width: 25.0, // fixed width and height
                  child:
                  new SvgPicture.asset('assets/images/ic_expenditure.svg')),
              title: const Text('Expenditure Requests',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
               null;
              },
            ),

            ListTile(
              leading: SizedBox(
                  height: 25.0,
                  width: 25.0, // fixed width and height
                  child: new SvgPicture.asset(
                      'assets/images/ic_requestStatus.svg')),
              title: const Text('Request Status',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                null;
              },
            ),

            // Populate the Drawer in the next step.
          ]),
        ),
        body: Form(
            key: loginFormKey,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60.0),
                                    child: Text('Sector',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ]))),
      ]),
    )))));
  }
}
