import 'package:application1/pages/FormContainerWidget.dart';
import 'package:application1/pages/faq.dart';
import 'package:application1/pages/login.dart';
import 'package:application1/pages/verification_register.dart';
//import 'package:application1/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 53, left: 35),
                child: Text(
                "Register",
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
                  "assets/register.png",
                   height: size.height/5*2,
                   width:double.infinity,
                  ),
              ),
               const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Student Name",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
           
            FormContainerWidget(
              hintText: "student name",
              isPasswordField: false,
            ) ,
           
             const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Student Email",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
            FormContainerWidget(
              hintText: "email",
              isPasswordField: false,
            ),
             const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Faculty",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
             FormContainerWidget(
              hintText: "",
              isPasswordField: false,
            ),
             const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Batch",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
             FormContainerWidget(
              hintText: "",
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
              hintText: "",
              isPasswordField: true,
            ),
            
             const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "Re-enter Password",
                style: TextStyle(
                  color: Color(0xFF217D00),
                  fontSize: 20,    
                ),
              ),
            ),
           FormContainerWidget(
              hintText: "",
              isPasswordField: true,
            ),
            Center(
                  child:ElevatedButton(
                    //style: ElevatedButton.styleFrom(primary:  const Color(0xCC217D00),minimumSize: const Size(282, 44,)  ),
                     style: ElevatedButton.styleFrom(
                      backgroundColor:const Color(0xCC217D00),
                      minimumSize: const Size(282, 44,), 
                      shape: 
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                     ),   
                    onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Verificationregister()));
                   }, 
                   child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white,fontSize: 20, ),
                  ),
                  ) ,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
             child: Wrap(
              children:[
                const Text(
                "Do you have already an account? ",
                style: TextStyle( color:Colors.black,fontSize: 16),
                ),
                 GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child:  const Text(
                " Sign In",
                style: TextStyle( color:Colors.black,fontSize: 16),
                ),
                 ),
              ]
              ),
           ),
            const SizedBox(
              height: 10,
            ),
             const Center(
               child:  Text(
                  "Terms & Condition",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0XFF011B02),
                    fontFamily: "Lato",
                    fontSize: 15,
                  ),
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
              splashColor: Colors.black26,
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