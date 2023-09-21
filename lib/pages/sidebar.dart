import 'package:application1/pages/bottom_nav_bar.dart';
import 'package:application1/pages/faculty_search.dart';
import 'package:application1/pages/login.dart';
import 'package:application1/pages/map.dart';
import 'package:application1/pages/register.dart';
import 'package:flutter/material.dart';


class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color.fromARGB(255, 217, 217, 217),
     
      body: Stack(
        children: [
          Center(
            child: Container(
              height:650 ,  
              width:320,
             
            decoration: const BoxDecoration(
              image: DecorationImage
                    (
                     image: AssetImage("assets/sidepic.png"), 
                     fit: BoxFit.cover,
                     
                    
                    ),
            ),

            ),

          ),

          
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Column(
                children: [

                  // MAP
                  ElevatedButton( 
                    onPressed: () 
                    {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyMap())); //........................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
        
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                     
                        child: Row(
                          children: [
                             Image(image: AssetImage("assets/map.png")),
                             Text("    Map" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                     
                      
                    ),
                  ),
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),



                  // Event Calendar
                  ElevatedButton(
                    onPressed: () 
                    {
                      // .....................................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                      child: Row(
                          children: [
                             Image(image: AssetImage("assets/calendar.png")),
                             Text("    Event Calendar" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                    ),
                  ),
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),



                  // News & Alerts
                  ElevatedButton(
                    onPressed: () 
                    {
                      // ..................................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                      child: Row(
                          children: [
                             Image(image: AssetImage("assets/news.png")),
                             Text("    News & Alerts" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                    ),
                  ),
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),




                  // Terms & Condition
                  ElevatedButton(
                    onPressed: () 
                    {
                      // .......................................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                      child: Row(
                          children: [
                             Image(image: AssetImage("assets/terms.png")),
                             Text("    Terms & Conditions" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                    ),
                  ),
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),




                  //Log out
                  ElevatedButton(
                    onPressed: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())); // ........................................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                      child: Row(
                          children: [
                             Image(image: AssetImage("assets/logout.png")),
                             Text("    Log out" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                    ),
                  ),
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),




                  //Delete Account
                  ElevatedButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Register())); // .............................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 250,
                      height: 49,
                      child: Row(
                          children: [
                             Image(image: AssetImage("assets/delete.png")),
                             Text("    Delete Account" ,style:TextStyle(color:Colors.black),),
                       
                          ],
                        ),
                    ),
                  ),
                  
                  const SizedBox(//keeping space
                    height: 30,
                    width: 250,
                  ),


                  //back button
                  ElevatedButton(
                    onPressed: ()
                    {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNav()));// .............................
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: const SizedBox(
                      width: 100,
                      height: 49,
                      child: Center(
                        child: Text("Home",style:TextStyle(color:Colors.black),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
