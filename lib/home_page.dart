import 'package:custom_theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title:  Text('Home Page'),
        leading:  InkWell(
          onTap: () {

              if(Get.isDarkMode){
                Get.changeTheme(lightTheme);
                sharedPref.setString('Mode', 'light');

              }else{
                Get.changeTheme(darkTheme);
                sharedPref.setString('Mode', 'dark');
              }

          },
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.wb_sunny,
                size: 35, color: Colors.orangeAccent),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [

        ],
      )
      ),
    );
  }
}
