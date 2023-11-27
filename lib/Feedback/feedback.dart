import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class Feedbak extends StatefulWidget {
  const Feedbak({super.key});

  @override
  State<Feedbak> createState() => _FeedbakState();
}

class _FeedbakState extends State<Feedbak> {
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
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/feedback%2FGroup%202713%20(1).png?alt=media&token=1238678a-d4f3-4fd1-b424-cb2be758f1ec',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('No Feedback Yet',style: TextStyle(color: Colors.blue,fontSize: 25),),
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
