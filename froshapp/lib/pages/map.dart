
import 'package:flutter/material.dart';

class CampusMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff8db3d7),
        body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 60.0, top: 10), // Padding between image and button
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/map.png'), // Replace with your image asset
                      fit: BoxFit.contain, // Cover the entire container
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Add your navigation logic here
                  print("Get Directions button pressed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20), // Rounded button corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                ),
                child: const Text(
                  'Get Directions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
