import 'package:application1/pages/sidebar.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
       
        centerTitle: true,
        actions: <Widget>[
        ],
         backgroundColor:   Color.fromARGB(255, 248, 255, 248),
          leading: IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => const SideBar())); 
          }, icon: Icon(Icons.menu),color: Colors.black,iconSize: 40),
      ),
      backgroundColor: const Color.fromARGB(255, 248, 255, 248),
      body: SingleChildScrollView(
        // Scrollable container to handle content overflow
        child: Column(
          children: [
            // Container for the image with "How can we help you?" text overlay
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/faq.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ],
              ),
            ),
            // Text "How can we help you?" placed below the image
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "How can we help you?",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 19, 80, 26),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Form container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                 // color: const Color.fromARGB(255, 230, 255, 230),
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [const Color(0xFFFFFFFF).withOpacity(0.35),const Color(0XFF268E02).withOpacity(0.35)]
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFormFieldWithLabel("Name:", "Type your name"),
                    const SizedBox(height: 16),
                    _buildFormFieldWithLabel("Email:", "abc@gmail.com"),
                    const SizedBox(height: 16),
                    _buildFormFieldWithLabel(
                      "Message:",
                      "Type your message",
                      maxLines: 3,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            // Row of Submit and Cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CurvedButton(
                  text: "Submit",
                  onPressed: () {
                    // Handle submit action here
                  },
                  color: const Color(0xFF217D00).withOpacity(0.8),
                ),
                CurvedButton(
                  text: "Cancel",
                  onPressed: () {
                    // Handle cancel action here
                  },
                  color: const Color(0xFF217D00).withOpacity(0.8),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
          ],
        ),
      ),
    );
  }

  // Helper method to build form fields with labels
  Widget _buildFormFieldWithLabel(String label, String hintText,
      {int maxLines = 1}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormFieldContainer(
            label: hintText,
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}

// Helper widget for text form field
class TextFormFieldContainer extends StatelessWidget {
  final String label;
  final int maxLines;

  const TextFormFieldContainer({
    Key? key,
    required this.label,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: label,
        border: InputBorder.none,
      ),
    );
  }
}

// Helper widget for curved buttons
class CurvedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CurvedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Text(text),
    );
  }
}
