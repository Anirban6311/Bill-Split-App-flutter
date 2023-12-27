import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LinearGradient myGradient = LinearGradient(
    colors: [Color(0xfffffacd), Color(0xFFfffff0)],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: myGradient.colors[0],
        appBar: AppBar(
          title: Center(child: Text("Dashboard")),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text("Welcome, XYZ 👋"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  height: 180,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: GradientColors
                                  .purple, // Change GradientColors.purple to [Colors.purple, Colors.pink] for simplicity
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 12,
                          child: Icon(
                            Icons.add_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 17,
                          child: Text(
                            "Add New Bill",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  height: 180,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: GradientColors
                                  .glassWater, // Change GradientColors.purple to [Colors.purple, Colors.pink] for simplicity
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 10,
                          child: Icon(
                            Icons.pending_actions,
                            size: 50,
                            color: Colors.purple,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 12,
                          child: Text(
                            "Pending Dues",
                            style: TextStyle(
                                fontSize: 18.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 13, right: 13),
                  height: 130,
                  width: 334,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: GradientColors
                                  .happyUnicorn, // Change GradientColors.purple to [Colors.purple, Colors.pink] for simplicity
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 10,
                          child: Icon(
                            Icons.history_sharp,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 12,
                          child: Text(
                            "Transaction History",
                            style: TextStyle(
                                fontSize: 18.5,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 160,
                  width: 334,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: GradientColors.glassWater,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
