import 'package:application1/pages/business_lectures.dart';
import 'package:application1/pages/computing_lectures.dart';
import 'package:application1/pages/engineering_lectures.dart';
import 'package:application1/pages/map.dart';
import 'package:application1/pages/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Faculty extends StatelessWidget {
  const Faculty({super.key});

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: PreferredSize(
          preferredSize:  Size.fromHeight(size.height/5), 
            
            child: Container(
              decoration:  BoxDecoration(color: HexColor('BDFAC0'),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SideBar()));
                    }, icon: const Icon(Icons.menu,size:40,))),
                 Center(
                    child: Text("SEARCH FACULTY",
                    style: TextStyle(fontSize: 24, fontFamily: "JotiOne",color: HexColor('0B720F')),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: size.width/12, right: size.width/12),
                    child: TextField(
                                controller: SearchController(),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Search Faculty',
                                  contentPadding: EdgeInsets.zero,
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0)),
                                )),
                  ),   
                ]
              ),
            ),
          ) , 
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height/20,
                ),
                Center(
                  child: Container(
                  height: size.height/4,
                  width: size.width/10*8,
                    decoration:   BoxDecoration(
                   image: DecorationImage(
                    image: AssetImage("assets/computing.png"),
                   fit: BoxFit.cover
                   ),
                ),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => const Computing())); 
                            },
                            child: const Text(
                              "Faculty of Computing",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                          ),
                        ),
                      ),
                      
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10,right:10),
                      child: ElevatedButton(
                         
                           style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.white,
                            minimumSize: const Size(70, 40,), 
                            shape: 
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                           ),   
                          onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyMap()));
                         }, 
                         child:  Text(
                          "Map",
                          style: TextStyle(color: HexColor('0B720F'),fontSize: 20, ),
                        ),
                        ),
                    ),
                  ) ,
                    ],
                   ),
                  ),
                ),
                SizedBox(
                  height: size.height/20,
                ),
                Center(
                  child: Container(
                  height: size.height/4,
                  width: size.width/10*8,
                    decoration:  const BoxDecoration(
                   image: DecorationImage(
                    image: AssetImage("assets/business.png"),
                   fit: BoxFit.cover
                   ),
                ),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => const Business())); 
                            },
                            child: const Text(
                              "Faculty of Business",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                          ),
                        ),
                      ),
                      
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10,right:10),
                      child: ElevatedButton(
                         
                           style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.white,
                            minimumSize: const Size(70, 40,), 
                            shape: 
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                           ),   
                          onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyMap()));
                         }, 
                         child:  Text(
                          "Map",
                          style: TextStyle(color: HexColor('0B720F'),fontSize: 20, ),
                        ),
                        ),
                    ),
                  ) ,
                    ],
                   ),
                  ),
                ),
                SizedBox(
                  height: size.height/20,
                ),
                Center(
                  child: Container(
                  height: size.height/4,
                  width: size.width/10*8,
                    decoration:  const BoxDecoration(
                   image: DecorationImage(
                    image: AssetImage("assets/engineering.png"),
                   fit: BoxFit.cover
                   ),
                ),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Engineering())); 
                            },
                            child: const Text(
                              "Faculty of Engineering",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                          ),
                        ),
                      ),
                      
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10,right:10),
                      child: ElevatedButton(
                         
                           style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.white,
                            minimumSize: const Size(70, 40,), 
                            shape: 
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                           ),   
                          onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyMap()));
                         }, 
                         child:  Text(
                          "Map",
                          style: TextStyle(color: HexColor('0B720F'),fontSize: 20, ),
                        ),
                        ),
                    ),
                  ) ,
                    ],
                   ),
                  ),
                ),
                SizedBox(
                  height: size.height/20,
                ),
                Center(
                  child: Container(
                  height: size.height/4,
                  width: size.width/10*8,
                    decoration:  const BoxDecoration(
                   image: DecorationImage(
                    image: AssetImage("assets/computing.png"),
                   fit: BoxFit.cover
                   ),
                ),
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const Register())); 
                            },
                            child: const Text(
                              "Admin",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                          ),
                        ),
                      ),
                      
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10,right:10),
                      child: ElevatedButton(
                         
                           style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.white,
                            minimumSize: const Size(70, 40,), 
                            shape: 
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                           ),   
                          onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyMap()));
                         }, 
                         child:  Text(
                          "Map",
                          style: TextStyle(color: HexColor('0B720F'),fontSize: 20, ),
                        ),
                        ),
                    ),
                  ) ,
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