import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ledi/authentication.dart';
import 'package:ledi/main.dart';
import 'package:ledi/root_page.dart';
//import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
BaseAuth auth=new Auth();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ledi App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff8731DC),
          bottomAppBarColor: Color(0xff120023),
          dividerColor:Color(0xffE7CFFF),
          buttonTheme:ButtonThemeData(
              buttonColor: Color(0xff8731DC)),
          textTheme:TextTheme(
//            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          ),

        ),
        home: new RootPage(auth: new Auth())
    );
  }
}


