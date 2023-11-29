import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/appbar/appbar.dart';

class DoctorCommunicationTwo extends StatefulWidget {
  const DoctorCommunicationTwo({super.key});

  @override
  State<DoctorCommunicationTwo> createState() => _DoctorCommunicationTwoState();
}

class _DoctorCommunicationTwoState extends State<DoctorCommunicationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 800.0,
              height: 500,// Adjust the width as needed
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Optional padding
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 100, // Blur radius
                    offset: Offset(0, 3), // Offset (horizontal, vertical)
                  ),
                ],
                image: DecorationImage(
                  image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a'), // Replace with your image asset path
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white), // Set the text color
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent, // Set a transparent color to make the image visible
                  hintText: 'What’s your thought?',
                  hintStyle: TextStyle(color: Colors.white70), // Set the hint text color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none, // Hide the default border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 50, // Increased blur radius for a larger shadow
                          offset: Offset(0, 3), // Offset (horizontal, vertical)
                        ),
                      ],
                    image: DecorationImage(
                         image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a'), // Replace with your image asset path
                    fit: BoxFit.cover,
                    )
                  ),
                  child: Center(child: Text('Post',style: TextStyle(color: Colors.white,fontSize: 20),))),
            )
          ],
        ),
      ),
    );
  }
}
