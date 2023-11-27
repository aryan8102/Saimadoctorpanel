import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/appbar/appbar.dart';

import '../Doctor/doctor_dashbord.dart';
import '../custom/custom.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({super.key});

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  appbar(),
                  Container(
                    width: 300,
                    height: 400,
                    child: CachedNetworkImage(
                      imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/medical_record%2Fimage%2015.png?alt=media&token=8f42d3f8-f3c4-4548-8330-0190be25f117',
                      placeholder: (context, url) =>
                          CircularProgressIndicator(
                            strokeWidth: 5.0,
                          ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        drawerEdgeDragWidth: 0,
        endDrawer: CustomDrawer()
    );
  }
}

