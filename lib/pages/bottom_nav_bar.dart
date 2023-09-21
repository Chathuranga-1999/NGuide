import 'package:application1/pages/faculty_search.dart';
import 'package:application1/pages/Faq.dart';
import 'package:application1/pages/student_profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int index=0; 
  final screens =[
  Faculty(),
  Faq(),
  StudentProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
     bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14,fontWeight: FontWeight.w500)
              ),
            ),
            child: NavigationBar(
              height: 60,
              backgroundColor: Color(0xFFf1f5fb),
              labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index,
              animationDuration: Duration(seconds: 3) ,
              onDestinationSelected: (index) => 
              setState(() =>this.index=index),
                  destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
               label: 'Home'
               ),
             NavigationDestination(
              icon: Icon(Icons.help_outlined),
              selectedIcon: Icon(Icons.help),
               label: 'Help'
               ),
              NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
               label: 'User'
               ),  
                  ]
               ),
          ), 
    );
  }
}