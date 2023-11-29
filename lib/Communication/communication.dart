import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
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
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/Communication%2Fimage%2069.png?alt=media&token=550a49fc-225f-4e8b-9598-f82f0c1c5e2c',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('No Communication Yet',style: TextStyle(color: Colors.blue,fontSize: 25),),
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
