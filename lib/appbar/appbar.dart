import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Card(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a'),
                fit: BoxFit.cover
            )
        ),
        child: Row(
          children: [
            Image(image: CachedNetworkImageProvider(
                'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fdocserchlogo.png?alt=media&token=9b4a3939-e945-4e58-872e-c3a51aea3dea')),
            Spacer(),
            Text('Appointment', style: TextStyle(color: Colors
                .white, fontSize: 20),),
            Spacer(),
            Text('Medicines', style: TextStyle(color: Colors
                .white, fontSize: 20),),
            Spacer(),
            Text('LabTest', style: TextStyle(color: Colors.white,
                fontSize: 20),),
            Spacer(),
            Text('Hospital', style: TextStyle(color: Colors.white,
                fontSize: 20),),
            Spacer(),
            GestureDetector(
                onTap: () {
                  // Scaffold.of(context).openDrawer();
                  scaffoldKey.currentState?.openEndDrawer();
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/11/03/18/26/man-2915187_1280.jpg'),
                  ),
                )),
            ElevatedButton(
                onPressed: () {}, child: Text('Register'))
            // CustomDrawer()

          ],
        ),
      ),
    );
  }
}