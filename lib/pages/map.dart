import 'package:application1/pages/sidebar.dart';
import 'package:flutter/material.dart';

class FacultyMap extends StatelessWidget {
  const FacultyMap({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //page appbar
     appBar: AppBar(
        toolbarHeight: 70,
        title: Text("Map",
        style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 102, 0),
                  ),
        ),
        centerTitle: true,
        actions: <Widget>[
        ],
         backgroundColor:   Color.fromARGB(255, 255, 255, 248),
         //side bar icon
          leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SideBar()));
          }, icon: Icon(Icons.menu),color: Colors.black,iconSize: 40),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 248),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
          children: [
            SizedBox(
              height: 20,
            ),
             
            

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search faculty',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the topic
              child: Text(
                'Faculty of Computing',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 102, 0), // Dark green color (RGB: 0, 102, 0)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add left and right padding
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
               ),
                child: InteractiveViewer(
                  child: Image.asset(
                    "assets/foc.jpg",
                    fit: BoxFit.contain,
                  ),
                  minScale: 0.5, // Set minimum scale for zoom out
                  maxScale: 3.0, // Set maximum scale for zoom in
                ),
              ),
            ),
            const SizedBox(height: 10), // Adjust space
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0), // Adjust right padding
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Make the Row take minimum space
                  children: [
                    IconButton(
                      icon: Icon(Icons.zoom_in),
                      onPressed: () {
                        // Implement zoom in functionality
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.zoom_out),
                      onPressed: () {
                        // Implement zoom out functionality
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add left and right padding
              child: Image.asset(
                "assets/focmap.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the topic
              child: Text(
                'Faculty of Business',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 102, 0), // Dark green color (RGB: 0, 102, 0)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add left and right padding
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: InteractiveViewer(
                  child: Image.asset(
                    "assets/FOB1.jpg",
                    fit: BoxFit.contain,
                  ),
                  minScale: 0.5, // Set minimum scale for zoom out
                  maxScale: 3.0, // Set maximum scale for zoom in
                ),
              ),
            ),
            const SizedBox(height: 10), // Adjust space
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0), // Adjust right padding
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Make the Row take minimum space
                  children: [
                    IconButton(
                      icon: Icon(Icons.zoom_in),
                      onPressed: () {
                        // Implement zoom in functionality
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.zoom_out),
                      onPressed: () {
                        // Implement zoom out functionality
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add left and right padding
              child: Image.asset(
                "assets/FOBMAP.jpg",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
