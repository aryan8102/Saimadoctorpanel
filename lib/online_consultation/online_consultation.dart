import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class OnlineConsultation extends StatefulWidget {
  const OnlineConsultation({super.key});

  @override
  State<OnlineConsultation> createState() => _OnlineConsultationState();
}

class _OnlineConsultationState extends State<OnlineConsultation> {
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
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/onlineConsultation%2Fimage%207%20(1).png?alt=media&token=462b158b-3c14-4ab0-b001-abf33e87b22c',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('No Online Consultation Yet',style: TextStyle(color: Colors.blue,fontSize: 25),),
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );

  }
}

