import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            appbar(),
            Column(
              children: [
                Text('Update Password',style: TextStyle(fontSize: 25,color: Colors.blue),),
                SizedBox(
                  height: 80,
                ),
               Text('Old Password',style: TextStyle(fontSize: 25,color: Colors.blue),),
                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 300,
                  height: 35,
                  child: TextFormField(
                    maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    )
                  ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('New Password',style: TextStyle(fontSize: 25,color: Colors.blue),),
                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 300,
                  height: 35,
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock), // Prefix icon
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Confirm Password',style: TextStyle(fontSize: 25,color: Colors.blue),),
                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 300,
                  height: 35,
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock), // Prefix icon
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                     image: DecorationImage(image: CachedNetworkImageProvider(
                         'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a'),
                         fit: BoxFit.cover
                     )
                    ),
                    child: Center(child: Text('Summit',style: TextStyle(fontSize: 12,color: Colors.white),)))
              ],
            )
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
