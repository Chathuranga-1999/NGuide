

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verificationpassword extends StatelessWidget {
  const Verificationpassword ({super.key});

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: Container(
        child: Stack(
          children: [
            Image.asset("assets/img.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            ),
            Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 1,sigmaY: 1),
            child: Container(color: Colors.white.withOpacity(0.5),),
            )),
            Center(
              child: Container(
                height: size.height/5*2.5,
                width: size.width/5*4,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                  boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height/20,
                    ),
                    Text("Verification Code",
                    style: TextStyle(fontSize: 30,color: HexColor("206500")),
                    ),
                      SizedBox(
                      height: size.height/25,
                    ),
                    PinCodeTextField(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      appContext: context,
                     length: 6,
                     onChanged: (value) {},
                     pinTheme: PinTheme(
                      activeColor: HexColor("206500"),
                      inactiveColor: HexColor("206500"),
                      selectedColor:  HexColor("206500"), 
                     ),
                     cursorColor: HexColor('000000'),
                    ),
                      SizedBox(
                      height: size.height/10,
                    ),
                    ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: HexColor('CAF9CC'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                     ),
                     child:Text(
                      "Ok",
                      style: TextStyle(fontSize: 26, color: HexColor('206500'),
                      ),
                     ),
                     ),
                  ],
                ),
              ),
            )
          ],
        ),
       ),
    );
  }
}