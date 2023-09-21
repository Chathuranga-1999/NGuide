
import 'package:application1/pages/FormContainerWidget.dart';
import 'package:application1/pages/bottom_nav_bar.dart';
import 'package:application1/pages/faculty_search.dart';
import 'package:application1/pages/faq.dart';
import 'package:application1/pages/password.dart';
import 'package:application1/pages/register.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             const Padding(
              padding: EdgeInsets.only(top: 53, left: 35),
              child: Text(
              "Login",
              style: TextStyle(
                color: Color(0XFF0B720F),
                fontFamily: "JotiOne",
                fontSize: 28,
              ),
              ),
             
             ),
             const SizedBox(
              height: 1,
            ),
            Center(
              child: Image.asset(
                "assets/login.png",
                 height: size.height/5*2,
                 width:double.infinity,
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "UserName",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
           FormContainerWidget(
              hintText: "username",
              isPasswordField: false,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
             FormContainerWidget(
              hintText: "password",
              isPasswordField: true,
            ),
           
            Center(
              child: Container(
                height: 37,
                width: 145,
                decoration: BoxDecoration(
                 color: const Color(0xCC217D00),
                 borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNav()));
                    },
                    child: const Text(
                      "Log In",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           Center(
             child: GestureDetector(
              child:  const Text(
                "Are you Forget Password?",
                 style: TextStyle( color: Color(0xFF0B720F),fontSize: 15),
               ),
               onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Password()));
               },
             ),
           ),
           const SizedBox(
              height: 20,
            ),
            Center(
             child: Wrap(
              children:[
              const Text(
                "Are you still not Sign Up Please ",
                style: TextStyle( color: Color(0xFF217D00),fontSize: 18),
              ),
              GestureDetector(
                onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Register())); 
                },
                child: const Text(
                " Sign Up?",
                style: TextStyle( color: Color(0xFF217D77),fontSize: 18),
              ),
              )
              ]
              ),
           ),
            const SizedBox(
              height: 20,
            ),
          SizedBox(
            width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Faq()));
              },
              child: Image.asset(
                  alignment: Alignment.bottomRight,
                  "assets/messege.png",
                       height: 73,
                       width:75,
                 ),
            ),
          ),
          )
          ],
          ),
        ),
    );
  }
}