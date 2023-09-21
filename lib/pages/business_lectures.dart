import 'package:application1/pages/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Business extends StatefulWidget {
   const Business({super.key});

  @override
  State<Business> createState() => _HomePageState();
}

class _HomePageState extends State<Business> {
  
  
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
                    child: Text("Search Lectures",
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
                                  hintText: 'Search Lectures',
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
           children:[ 
              const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
              color: Colors.white,
                boxShadow:[ BoxShadow(blurRadius:3 ),]  
              ),
              height: size.height/14,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: HexColor('29C21C'),
                            shape: BoxShape.circle
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                         Text("Available",
                         style: TextStyle(color: HexColor('29C21C'),fontSize: 20 ),
                         ),
                      ],
                    ),
                  ),
             
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                        ),
                         const SizedBox(
                          width: 10,
                        ),
                       Text("Unavailable",
                       style: TextStyle(color: HexColor('EA6505'),fontSize: 20),
                       ) 
                      ],
                    )
                  ),
                
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ExpansionTile(title: const Text(
            "Department of management"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "Accounting and finance"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "Marketing and tourism"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "Operations and logistics"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "Economics and decision Sciences"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "Legal Studies"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           const SizedBox(
            height: 10,
           ),
           ExpansionTile(title: const Text(
            "English and modern languages"
           ),
            collapsedBackgroundColor:HexColor('DFECDF'),
            children: [
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow:const [ BoxShadow(blurRadius:3 ),]  
                  ),
                  height:size.height/5 ,
                  width: size.width/10*9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       const SizedBox(
                        width: 10
                       ),
                       Image.asset("assets/L1.png",height: size.height/6,),
                       const SizedBox(
                        width: 10
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                fontSize: 28, 
                                color: HexColor('29C21C'),
                                fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox(
                            height: 20,
                            ),
                            const Text("Dr.Rasika Ranweera",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                            ),
                            const Text("Dean",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                            const Text("Faculty of Computing",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(
                        width: 10
                       ),
                      ],
                    ),
                  ),
              ),
            )
           ],
           ),
           ]
         ),
       ),
       
    );
  }
  
}