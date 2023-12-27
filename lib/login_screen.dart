import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login Page",
              style: TextStyle(fontSize: 20.00),
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          decoration: BoxDecoration(),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://e0.pxfuel.com/wallpapers/612/285/desktop-wallpaper-purple-night-purple-city-mkb-purple-aesthetic-background-purple-skyline.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ClipOval(
                      child: Image.network(
                        "https://cms-assets.tutsplus.com/uploads/users/34/syllabuses/816/preview_image/tutsplus-icon.png",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 100, top: 60, right: 100),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Username",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                    width: 200,
                    height: 30,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Password",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                    width: 200,
                    height: 30,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('New User? SignUp'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}