import 'package:application2/pages/login.dart';
import 'package:application2/pages/register.dart';
import 'package:application2/pages/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future main() async 
{

 WidgetsFlutterBinding.ensureInitialized();
 if(kIsWeb){
  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyD7l69pKSh08WZQKdJMLtCOYP3yf7lKIuA", appId: "1:308798808597:web:541f102dab2f2e91efe41c", messagingSenderId: "308798808597", projectId: "registerexample-5f50e"));
 }
 await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown 
    ]);
 runApp(
 DevicePreview(
    enabled: !kReleaseMode,
   builder: (context) => 
    const MyApp(), // Wrap your app
 ),
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return  ScreenUtilInit(
       builder: (context, child) =>  const MaterialApp(
        debugShowCheckedModeBanner: false,
       home: HomeScreen(),
       ), 
       designSize: const Size(430, 932),   
    );
  }
}