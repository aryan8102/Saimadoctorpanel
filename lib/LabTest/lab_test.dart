import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/appbar/appbar.dart';

import '../custom/custom.dart';

class LabTest extends StatefulWidget {
  const LabTest({super.key});

  @override
  State<LabTest> createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {

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
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/LabTest%2FGroup%202772.png?alt=media&token=e673a294-7da9-4e1d-8a02-facf501efc0f',
              placeholder: (context, url) =>
                  CircularProgressIndicator(
                    strokeWidth: 1.0,
                  ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text('No Lab Test Yet',style: TextStyle(color: Colors.blue,fontSize: 25),),
        ],
      ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}
