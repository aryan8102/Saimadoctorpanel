import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2023/11/18/16/09/pears-8396722_1280.jpg'), // Replace with your image
                ),
                SizedBox(height: 10),
                Text(
                  'Your Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.book_online),
            title: Text('Medical Record'),
            onTap: () {
              // Handle item 2 tap
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecord()));
            },
          ),
          ListTile(
            leading: Icon(Icons.medication),
            title: Text('LabTest'),
            onTap: () {
              // Handle item 1 tap
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>LabTest()));
            },
          ),
          ListTile(
            leading: Icon(Icons.chat_rounded),
            title: Text('Online Consultation'),
            onTap: () {
              // Handle item 1 tap
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorOnlineConsultation()));
            },
          ),

          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Communication'),
            onTap: () {
              // Handle item 1 tap

              //Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorCommunication()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Refer Patient'),
            onTap: () {
              // Handle item 1 tap
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorCommunication()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('set Date/Time'),
            onTap: () {
              // Handle item 1 tap

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorReferEarn()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person_off),
            title: Text('Profile'),
            onTap: () {
              // Handle item 1 tap

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorProfile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment'),
            onTap: () {
              // Handle item 1 tap
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorPayment()));
            },
          ),
          ListTile(
            leading: Icon(Icons.search_off),
            title: Text('Refer&Earn'),
            onTap: () {
              // Handle item 1 tap

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferEarn()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle item 1 tap
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorSettings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              // Handle item 1 tap
            },
          ),
        ],
      ),
    );
  }
}