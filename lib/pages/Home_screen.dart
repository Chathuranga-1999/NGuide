import 'package:application1/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  void initState(){
    Future.delayed(
      const Duration(seconds: 4),() {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Login()), (route) => false);
      },
    );
   super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
     body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: HexColor("FFFFFA"),
                width: double.infinity,
              child: Center(
                child: Image.asset("assets/home.PNG",
                width:size.width/3*2 ,
                ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                
             decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 34, 215, 40)],
            ),
          ),
              ))
          ],
        
          ),
    
      
    );
  }
}