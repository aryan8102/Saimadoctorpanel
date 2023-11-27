import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/settings/settings.dart';

import 'Doctor/doctor_dashbord.dart';
import 'LabTest/lab_test.dart';
import 'MedicalRecord/medical_record.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Settings(),
    );
  }
}

