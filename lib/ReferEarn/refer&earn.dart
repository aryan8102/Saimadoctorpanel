import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class ReferEarn extends StatefulWidget {
  const ReferEarn({super.key});

  @override
  State<ReferEarn> createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
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
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/ReferandEarn%2FGroup%202623%20(1).png?alt=media&token=1a10fd52-81e8-4a98-9817-19b878117856',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
