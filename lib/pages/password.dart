import 'package:application1/pages/login.dart';
import 'package:application1/pages/verification_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';



class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 46.h,
            ),
            Center(
              child: Text("Forget Password?",
              style: TextStyle(
                fontSize:30.sp,
                color: HexColor('0B720F'),
                 ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Text("Restore Your password",
              style: TextStyle(
                fontSize:22.sp,
                color: HexColor('828282'),
                 ),
              ),
            ),
            Center(
              child: Image.asset("assets/password.png",
               height: 314.h,
               width: 314.w,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 49.w),
              child: Text(
              "Email",
              style: TextStyle(fontSize: 22.sp,color: HexColor("206500")),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 33.w),
              child: TextFormField(
                       decoration:  InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: const Color(0x26244614),fontSize: 20.sp),
                        filled: true,
                        fillColor: HexColor('DFECDF'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100.r),
                          ),
                       ),
                      ),
            ),
             SizedBox(
              height: 22.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 49.w),
              child: Text(
              "Create new password",
              style: TextStyle(fontSize: 22.sp,color: HexColor("206500")),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 33.w),
              child: TextFormField(
                       decoration:  InputDecoration(
                        hintText: "",
                        hintStyle: TextStyle(color: const Color(0x26244614),fontSize: 20.sp),
                        filled: true,
                        fillColor: HexColor('DFECDF'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100.r),
                          ),
                       ),
                      ),
            ),
             SizedBox(
              height: 22.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 49.w),
              child: Text(
              "Confirm new password",
              style: TextStyle(fontSize: 22.sp,color: HexColor("206500")),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 33.w),
              child: TextFormField(
                       decoration:  InputDecoration(
                        hintText: "",
                        hintStyle: TextStyle(color: const Color(0x26244614),fontSize: 20.sp),
                        filled: true,
                        fillColor: HexColor('DFECDF'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100.r),
                          ),
                       ),
                      ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 166.w),
              child: SizedBox(
               
                width:99.w,
                child: ElevatedButton(
                  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Verificationpassword()));
                  },
                      style: ButtonStyle(
                        
                        backgroundColor: MaterialStateProperty.all(HexColor('217D00')),
                        shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.r)
                        ),
                        ), 
                      ),
                   child: Text(
                    "Ok",
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: HexColor('FFFFFF')
                      ),
                      ),
                  ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Wrap(
                children:[ 
                  Text("Back to",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: HexColor('206500')
                ),
                ),
                 GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())); 
                  },
                child: Text(" Login",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: HexColor('206500')
                ),
                ),
                 ),
                ]
              ),
            ),
           
           
        Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                       height: 73.h,
                       width: 73.w,
                      "assets/messege.png",                
                      ),
                ),
        ),
            
          ],
        ),
        
      ),
    ),
     
   // bottomNavigationBar: const BottomAppBar(
      
      //child: Icon(Icons.home)),
    );
  }
}