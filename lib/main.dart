import 'package:device_preview_community/device_preview_community.dart';
import 'package:evently/Screens/DataForm/DataForm.dart';
import 'package:evently/Screens/Navigation/Navigation.dart';
import 'package:evently/Screens/SignIN/SignIn.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'Screens/SignUP/SignUp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        
        routes: {
          '/SignUp': (context) => SignUp(),
          '/SignIn': (context) => SignIn(),
          '/Navigation': (context) => Navigation(),
          '/DataForm': (context) => DataForm(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Evently',
        theme: ThemeData(
            fontFamily: GoogleFonts.chivo().fontFamily,
            scaffoldBackgroundColor: kBackgroundColor),
        home: SignIn(),
      ),
    );
  }
}
