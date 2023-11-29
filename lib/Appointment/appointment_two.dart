import 'package:flutter/material.dart';
class AppointmentPageTwo extends StatefulWidget {
  const AppointmentPageTwo({super.key});

  @override
  State<AppointmentPageTwo> createState() => _AppointmentPageTwoState();
}

class _AppointmentPageTwoState extends State<AppointmentPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60,right: 60),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                    ),
                    child: Text('All'),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                    ),
                    child: Text('Online'),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                    ),
                    child: Text('Offline'),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                    ),
                    child: Text('Date'),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                    ),
                    child: Text('English'),
                  ),
                  Spacer(),
                  Icon(Icons.notifications),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
