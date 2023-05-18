import 'package:custom_theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';


late SharedPreferences sharedPref ;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: sharedPref.get('Mode')==null ? lightTheme : sharedPref.get('Mode')=='dark'? darkTheme :lightTheme,
      home:  HomePage(),
    );
  }
}

