import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar.dart';
import '../custom/custom.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/payment%2Fimage%2013.png?alt=media&token=ca6f6d9a-d855-4b6a-9c5b-fe6e78f2ab1a',
                placeholder: (context, url) =>
                    CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Text('No Payment Yet!',style: TextStyle(color: Colors.blue,fontSize: 25),),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text('Payment Details'))
          ],
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}

