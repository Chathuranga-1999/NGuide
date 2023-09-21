import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
       
        centerTitle: true,
        actions: const <Widget>
        [
        ],
         backgroundColor:   Color.fromARGB(237, 221, 218, 218),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.black,iconSize:40),
          ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          //student pro box
           Positioned(
               top:48,
               left:9,
              child: Container(
                width: 376,
                height:220,
                decoration:  BoxDecoration
                (
                  boxShadow: const <BoxShadow>[
            BoxShadow
            (
                 color: Color.fromARGB(255, 155, 155, 155),
                 offset: Offset(0, 8), 
                 blurRadius: 5),
             
             
          ],
                 gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(237, 221, 218, 218),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
                  borderRadius: BorderRadius.circular(20),

                )
                
              )
              ),
              Positioned(
                top:20,
                left:120,
                child: Container
                (
                  height: 145,
                  width: 145,
                  decoration:  BoxDecoration(
                    color: const Color.fromARGB(160, 217, 217, 217),
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image: AssetImage("assets/stu_pic.png"),
                      
                      
                    ),
                    
                  ),
                ),
                ),

                Positioned(
                top:210,
                left:320,
                child: Container
                (
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/outlook.jpg"),
                      
                      
                    ),
                    
                  ),
                ),
                ),
     
             const Stack(
                children: 
                [    
                 
                  Positioned(
                   top:200,
                    left: 125,
                    child: Text("BTMSADB Rathnayake"),
                  ),

                  Positioned(
                   top: 220,
                    left: 160,
                    child: Text("STUDENT"),
                  ),

                
                ],
              ),
    
              
             Padding(
               padding: const EdgeInsets.only(top:280),
               child: Container(
                   height: 370,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image.png"),
                        fit: BoxFit.cover,
                      ),
                      
                    ),
                 
                  ),
             ),
            
              Center(
                child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Column(
                  children: [

                    const SizedBox(
                      width: 300,
                      height: 20,
                      child: Row(
                        children: [
                          Text(
                            "Degree",
                            style: TextStyle(
                              color: Color.fromARGB(255, 32, 101, 0),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    const SizedBox(
                      //keeping space
                      height: 10,
                      width: 250,
                    ),
              
                    // Degree Field
                    Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 32, 101, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const SizedBox(
                        width: 300,
                        height: 49,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "   Bsc(Hons) Software Engineering",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            //
                          ],
                        ),
                      ),
                    ),
                const SizedBox(
                      //keeping space
                      height: 35,
                      width: 250,
                    ),
                    
                 const SizedBox(
                        width: 300,
                        height: 20,
                        child: Row(
                          children: [
                            Text(
                              "Batch",
                              style: TextStyle(
                                color: Color.fromARGB(255, 32, 101, 0),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
              
                    const SizedBox(
                      //keeping space
                      height: 10,
                      width: 250,
                    ),
              
                    // Degree Field
                    Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 32, 101, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const SizedBox(
                        width: 300,
                        height: 49,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: 
                              Text(
                                "   21.1 ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            //
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      //keeping space
                      height: 35,
                      width: 250,
                    ),
              
                    
                    const SizedBox(
                        width: 300,
                        height: 20,
                        child: Row(
                          children: [
                            Text(
                              "Faculty",
                              style: TextStyle(
                                color: Color.fromARGB(255, 32, 101, 0),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    
              
                    const SizedBox(
                      //keeping space
                      height: 10,
                      width: 250,
                    ),
              
                    // Degree Field
                    Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 32, 101, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const SizedBox(
                        width: 300,
                        height: 49,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "   Faculty Of Computing",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),

                            
                            //
                          ],
                        ),
                      ),
                    ),

                     
                    const SizedBox(
                      //keeping space
                      height: 35,
                      width: 250,
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
