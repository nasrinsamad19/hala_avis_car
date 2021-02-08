import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.34,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.red,
                                    width: MediaQuery.of(context).size.width * 0.03,
                                    height: MediaQuery.of(context).size.height * 0.05,),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('My Car01', style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                      Text('3690JBA', style: TextStyle(
                                          color: Colors.black)),
                                    ],
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child:  Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        color: Colors.grey,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.check_circle,color: Colors.green,size: 15,),
                                            Text('Active',style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                            ),)
                                          ],
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height * 0.14,),
                              padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:  AssetImage('assets/car1.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Type',style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                        Container(
                                            height: MediaQuery.of(context).size.height * 0.001
                                        ),
                                        Text('Rented',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Return on',style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                        Container(
                                            height: MediaQuery.of(context).size.height * 0.001
                                        ),
                                        Text('31-Dec-2021',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text('Manage',style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                                        Icon(Icons.arrow_forward,color: Colors.red,)
                                      ],
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
                         Container(
                           padding: EdgeInsets.all(20),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                             child: Container(
                               padding: EdgeInsets.all(5),
                               color: Colors.red,
                               child: Column(
                                 children: [
                                   DottedBorder(
                                       color: Colors.white,
                                       borderType: BorderType.RRect,
                                       padding: EdgeInsets.all(10),
                                       radius:Radius.circular(10),
                                       child: Row(
                                         children: [
                                           Image(image: AssetImage('assets/car1.jpg',),height: 100,width: 100,),
                                           Container(
                                             width: MediaQuery.of(context).size.width * 0.1,
                                           ),
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text('Rent a',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                               Text('New Car',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                                             ],
                                           ),
                                           Container(
                                             width: MediaQuery.of(context).size.width * 0.1,
                                           ),
                                           Icon(Icons.arrow_forward,size: 30,)
                                         ],
                                       )
                                   ),
                                 ],
                               ),
                             ),
                           ) ,
                         ),
                          ],
                        ),
        ),
    );
  }
}
