import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/Appointment/appointment.dart';
import 'package:saimadoctorpanal/LabTest/lab_test.dart';

import '../RoundButton/round_button.dart';
import '../utils.dart';

class appbar extends StatefulWidget {
  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  bool loading = false;
  bool isButtonEnabled = false;
  final phoneNumberController = TextEditingController();
  final verificationCodeController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Card(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a'),
                fit: BoxFit.cover
            )
        ),
        child: Row(
          children: [
            Image(image: CachedNetworkImageProvider(
                'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fdocserchlogo.png?alt=media&token=9b4a3939-e945-4e58-872e-c3a51aea3dea')),
            Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Appointment()));
              },
              child: Text('Appointment', style: TextStyle(color: Colors
                  .white, fontSize: 20),),
            ),
            Spacer(),
            Text('Medicines', style: TextStyle(color: Colors
                .white, fontSize: 20),),
            Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LabTest()));
              },
              child: Text('LabTest', style: TextStyle(color: Colors.white,
                  fontSize: 20),),
            ),
            Spacer(),
            Text('Hospital', style: TextStyle(color: Colors.white,
                fontSize: 20),),
            Spacer(),
            GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/11/03/18/26/man-2915187_1280.jpg'),
                  ),
                )),
            isButtonEnabled == true ? SizedBox() :ElevatedButton(
                onPressed: () async{
                  await showDialog<void>(
                      context: context,

                      builder: (context) {
                        late String vId;
                        int myToken;
                        return AlertDialog(
                          content: Stack(
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              Positioned(
                                right: -40,
                                top: -40,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: Icon(Icons.close),
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: TextFormField(
                                        controller: nameController,
                                        decoration: const InputDecoration(
                                            hintText: 'Name',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black, // Border color
                                                width: 2.0, // Border width
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: TextFormField(
                                        controller: addressController,
                                        decoration: const InputDecoration(
                                            hintText: 'Address',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black, // Border color
                                                width: 2.0, // Border width
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: TextFormField(
                                        controller: mobileController,
                                        decoration: const InputDecoration(
                                            hintText: 'Mobile Number',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black, // Border color
                                                width: 2.0, // Border width
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: 'Verify Otp',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black, // Border color
                                                width: 2.0, // Border width
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        width: 100,
                                        child:RoundButton(title: 'Get Otp',loading: loading, onTap: (){
                                          // setState(() {
                                          //   loading = true;
                                          // });
                                          //
                                          // auth.verifyPhoneNumber(
                                          //     phoneNumber: "+91${mobileController.text.toString()}",
                                          //     verificationCompleted: (_){
                                          //       setState(() {
                                          //         loading = false;
                                          //       });
                                          //     },
                                          //     verificationFailed: (e){
                                          //       utilss().toastMessage(e.toString());
                                          //     },
                                          //     codeSent: (String verificationId ,int? token){
                                          //       vId =  verificationId;
                                          //       myToken = token!;
                                          //       setState(() {
                                          //         loading = false;
                                          //         // Navigator.push(context,
                                          //         //     MaterialPageRoute(
                                          //         //         builder: (context)=>VerifyCodeScreen(verificartionId2:verificationId)));
                                          //       });
                                          //     },
                                          //     codeAutoRetrievalTimeout: (e){
                                          //       utilss().toastMessage(e.toString());
                                          //       setState(() {
                                          //         loading = false;
                                          //       });
                                          //     });
                                        }),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child:   SizedBox(
                                        width: 500,
                                        // child: RoundButton(
                                        //   title: 'Submit',
                                        //   loading: loading,
                                        //   onTap: (){
                                        //    setState(() {
                                        //      loading = true;
                                        //
                                        //    });
                                        //    String id = DateTime.now().millisecondsSinceEpoch.toString();
                                        //    fireStore.doc(id).set({
                                        //      'title1':nameController.text.toString(),
                                        //      'title2':addressController.text.toString(),
                                        //      'title2':mobileController.text.toString(),
                                        //      'id' :id
                                        //    }).then((value) {
                                        //
                                        //    }).onError((error, stackTrace) {
                                        //      utilss().toastMessage(error.toString());
                                        //    });
                                        //   },
                                        // )
                                        child: RoundButton(

                                            title: 'submit', loading: loading, onTap: () {
                                       setState(() {
                                         isButtonEnabled = true;
                                       });
                                       Navigator.pop(context);
                                          // setState(() {
                                          //   loading = true;
                                          // });
                                          //
                                          // final crendital = PhoneAuthProvider.credential(
                                          //     verificationId: vId,
                                          //     smsCode: verificationCodeController.text.toString());
                                          //
                                          // try {
                                          //   await auth.signInWithCredential(crendital);
                                          //   // Navigator.push(context,
                                          //   //     MaterialPageRoute(builder: (context) => SlidingWebPage(verificartionId: vId)));
                                          // } catch (e) {
                                          //   setState(() {
                                          //     loading = true;
                                          //   });
                                          //   utilss().toastMessage(e.toString());
                                          // }
                                        }
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );});
                },
                child: Text('Register')
            )
          ],
        ),
      ),
    );
  }
}