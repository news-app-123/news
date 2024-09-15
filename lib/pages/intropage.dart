
import 'package:flutter/material.dart';
import 'package:newsapp/pages/sign_in.dart'; 

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignIn()), 
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 3, 3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            const Icon(Icons.tv, size: 72, color: Colors.white),
            
            const SizedBox(height: 10),
          
            const Text(
              "Intellicast",
              style: TextStyle(color: Color.fromARGB(255, 253, 253, 253), fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
