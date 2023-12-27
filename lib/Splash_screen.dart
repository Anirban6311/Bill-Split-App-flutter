import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()), // Replace YourNextScreen with the actual screen you want to navigate to
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://example.com/your_image.png'),
            child: ClipOval(
              child: SizedBox(
                width: 641, // Adjust to your image's width
                height: 409, // Adjust to your image's height
                child: Image.network(
                  'https://example.com/your_image.png',
                  fit: BoxFit.cover, // Optional: fit image within circle
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
