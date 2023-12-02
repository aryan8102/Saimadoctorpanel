import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/appbar/appbar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            Padding(
              padding: EdgeInsets.only(left: 150,right: 150),
              child: Row(
                children: [
                  Container(
                    child: Text('All'),
                  ),
                  Spacer(),
                  Container(
                    child: Text('Compleate'),
                  ),
                  Spacer(),
                  Container(
                    child: Text('Date'),
                  ),
                  Spacer(),
                  Container(
                    child: Text('English'),
                  ),
                  Spacer(),
                  Icon(Icons.notifications),

                ],
              ),
            )
            // Container(),
            // Container(),
            // Container(),
            // Container(),
            // Container(),
            // Icon(Icons.notifications),

          ],
        ),
      ),
    );
  }
}
