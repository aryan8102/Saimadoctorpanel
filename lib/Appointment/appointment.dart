import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            appbar(),
            Container(
              width: 300,
              height: 400,
              child: CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/Appointment%2Fimage%208.png?alt=media&token=81812271-57fa-44c6-b37d-14feb664fe64',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('No Appointment Yet',style: TextStyle(color: Colors.blue,fontSize: 25),),
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
