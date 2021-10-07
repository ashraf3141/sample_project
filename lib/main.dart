import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/Health.dart';
import 'package:sample_project/Personal%20Health%20Medapps.dart';
import 'package:sample_project/apipage.dart';
import 'package:sample_project/cardpage.dart';
import 'package:sample_project/editprofile.dart';
import 'package:sample_project/formpage.dart';
import 'package:sample_project/gridview.dart';
import 'package:sample_project/homescreen.dart';
import 'package:sample_project/hospicare.dart';
import 'package:sample_project/login.dart';
import 'package:sample_project/model/doctorpage.dart';
import 'package:sample_project/model/listContainer.dart';
import 'package:sample_project/model/medapp%20user%20%20webview.dart';
import 'package:sample_project/model/medapp%20user%20popup.dart';
import 'package:sample_project/model/medappuser%20summary.dart';
import 'package:sample_project/model/medappuser%20treatmentpage.dart';
import 'package:sample_project/model/workdemo1.dart';
import 'package:sample_project/otp%20page.dart';
import 'package:sample_project/otppage.dart';
import 'package:sample_project/patient.dart';
import 'package:sample_project/profile%20page.dart';
import 'package:sample_project/register.dart';
import 'package:sample_project/splashscreen.dart';
import 'package:sample_project/workpage.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Otppage(),
    );
  }
}
