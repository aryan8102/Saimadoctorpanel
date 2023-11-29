import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saimadoctorpanal/appbar/appbar.dart';
import 'package:saimadoctorpanal/doctor_communication/doctor_communication_two.dart';

class DoctorCommunication extends StatefulWidget {
  const DoctorCommunication({super.key});

  @override
  State<DoctorCommunication> createState() => _DoctorCommunicationState();
}

class _DoctorCommunicationState extends State<DoctorCommunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorCommunicationTwo()));
              },
              child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/Communication%2FGroup%202757.png?alt=media&token=b050f248-01de-476d-8394-3347e0533c53',
                    placeholder: (context, url) =>
                        CircularProgressIndicator(
                          strokeWidth: 1.0,
                        ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Offset (horizontal, vertical)
                    ),
                  ],
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                    image: CachedNetworkImageProvider(
                      'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a',
        
                      // placeholder: (context, url) =>
                      //     CircularProgressIndicator(
                      //       strokeWidth: 1.0,
                      //     ),
                      // errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                ),
        
                ),
                child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 20,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset (horizontal, vertical)
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                        color: Colors.green
                      ),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Center(child: Text('Healthier tips for Stomach',style: TextStyle(color: Colors.white),))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry standard dummytext ever since the 1500s... more',style: TextStyle(fontSize: 25,color: Colors.white),),
                    )
                  ],
                )
              ),
            ),
            SizedBox(
              height: 18,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset (horizontal, vertical)
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: CachedNetworkImageProvider(
                        'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a',
        
                        // placeholder: (context, url) =>
                        //     CircularProgressIndicator(
                        //       strokeWidth: 1.0,
                        //     ),
                        // errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
        
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 3), // Offset (horizontal, vertical)
                              ),
                            ],
                            color: Colors.green
                        ),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Center(child: Text('Healthier tips for Liver',style: TextStyle(color: Colors.white),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry standard dummytext ever since the 1500s... more',style: TextStyle(fontSize: 25,color: Colors.white),),
                      ),

                    ],
                  )
              ),
            ),
            SizedBox(
              height: 18,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset (horizontal, vertical)
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: CachedNetworkImageProvider(
                        'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a',

                        // placeholder: (context, url) =>
                        //     CircularProgressIndicator(
                        //       strokeWidth: 1.0,
                        //     ),
                        // errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),

                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 3), // Offset (horizontal, vertical)
                              ),
                            ],
                            color: Colors.green
                        ),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Center(child: Text('Healthier tips for Eye',style: TextStyle(color: Colors.white),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry standard dummytext ever since the 1500s... more',style: TextStyle(fontSize: 25,color: Colors.white),),
                      ),

                    ],
                  )
              ),
            ),
            SizedBox(
              height: 18,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset (horizontal, vertical)
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: CachedNetworkImageProvider(
                        'https://firebasestorage.googleapis.com/v0/b/docsearchweb-780db.appspot.com/o/doctor_dashboard%2Fbackgroundcolour.png?alt=media&token=c56903ec-1e56-4928-8a66-343bf3ab538a',

                        // placeholder: (context, url) =>
                        //     CircularProgressIndicator(
                        //       strokeWidth: 1.0,
                        //     ),
                        // errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),

                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 3), // Offset (horizontal, vertical)
                              ),
                            ],
                            color: Colors.green
                        ),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Center(child: Text('Healthier tips for Hearts',style: TextStyle(color: Colors.white),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry standard dummytext ever since the 1500s... more',style: TextStyle(fontSize: 25,color: Colors.white),),
                      ),

                    ],
                  )
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
