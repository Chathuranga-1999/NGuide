import 'package:application1/pages/Home_screen.dart';
import 'package:application1/pages/login.dart';
import 'package:application1/pages/register.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() 
{
 WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown 
    ]);
 runApp(
 // DevicePreview(
   // enabled: !kReleaseMode,
   //builder: (context) => 
   const MyApp(), // Wrap your app
 //),
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return  ScreenUtilInit(
       builder: (context, child) =>const  MaterialApp(
        debugShowCheckedModeBanner: false,
       home: HomeScreen(),
       ), 
       designSize: const Size(430, 932),   
    );
  }
}