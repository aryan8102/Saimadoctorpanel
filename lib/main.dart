import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/settings/settings.dart';

import 'Appointment/appointment_two.dart';
import 'Doctor/doctor_dashbord.dart';
import 'Feedback/feedback.dart';
import 'LabTest/lab_test.dart';
import 'MedicalRecord/medical_record.dart';
import 'Payment/payment_page.dart';
import 'Payment/payment_page_two.dart';
import 'doctor_communication/doctor_communication.dart';
import 'doctor_communication/doctor_communication_two.dart';
import 'firebase_options.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
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
      // home:Settings(),
      home:PaymentPage(),
    );
  }
}

