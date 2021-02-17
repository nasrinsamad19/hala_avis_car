import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCar extends StatefulWidget {
  @override
  _MyCarState createState() => _MyCarState();
}

class _MyCarState extends State<MyCar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){},color: Colors.white,),
          title: Text('My Car'),
          actions: [
            IconButton(icon: Icon(Icons.account_circle), onPressed: (){},color: Colors.white,),
            IconButton(icon: Icon(Icons.notifications_none), onPressed: (){},color: Colors.white,),
            IconButton(icon: Icon(Icons.help_outline), onPressed: (){},color: Colors.white,),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
           child: Column(
             children: [
               Container(
                 color: Colors.red,
                 child: Image(image: AssetImage('assets/car.jpg')),
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 child:Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('My Car 01',style: TextStyle(
                           fontSize: 27,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('1234 ABC',style: TextStyle(
                             fontSize: 15,fontWeight:FontWeight.w300
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Return On',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('28-09-7896',style: TextStyle(
                             fontSize: 15,
                         ),)
                       ],
                     ),

                   ],
                 ),
               ),
               
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 child:Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Type',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Rented',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Status',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Active',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Rate',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('1250 SAR',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all( 10),
                 child: Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Make and Model',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Izuzu D-Max',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('MVPI Date',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('21-98-9087',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all( 10),
                 child: Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Make',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Izuzu ',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Variant',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('D-Max',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Year',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('2021',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Transmission',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Automatic',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all( 10),
                 child: Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Fuel',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Petrol',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('VIN',style: TextStyle(
                     fontSize: 12,fontWeight: FontWeight.bold
                     ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('21XC989087',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Color',style: TextStyle(
                     fontSize: 12,fontWeight: FontWeight.bold
                     ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('White',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all( 10),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Long Description',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('fjkdfnkwdfqjkjjkm lefEfehgwbgsmvlsdnvdm',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 padding: EdgeInsets.all( 10),
                 child: Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Seats',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('5',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Doors',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('4',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Body Type',style: TextStyle(
                     fontSize: 12,fontWeight: FontWeight.bold
                     ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('Sedan',style: TextStyle(
                             fontSize: 15,
                         ),)
                       ],
                     ),
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                 alignment: Alignment.center,
                 padding: EdgeInsets.only(top: 15),
                 child: Text('Pick Up',style: TextStyle(
                   fontSize: 18,fontWeight: FontWeight.bold
                 ),)
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Date',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('20-3-2021',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width * 0.2,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Time',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('11:30',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),

                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Al Hanafi',style: TextStyle(
                         fontSize: 12,fontWeight: FontWeight.bold
                     ),),
                     Container(
                       height: MediaQuery.of(context).size.height * 0.01,
                     ),
                     Text('112K, abc Street, City - 3124',style: TextStyle(
                       fontSize: 15,
                     ),)
                   ],
                 ),

               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.only(top: 15),
                   child: Text('Drop Off',style: TextStyle(
                       fontSize: 18,fontWeight: FontWeight.bold
                   ),)
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Date',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('20-3-2021',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width * 0.2,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Time',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('11:30',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),

                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(10),

                 child:Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Al Hanafi',style: TextStyle(
                             fontSize: 12,fontWeight: FontWeight.bold
                         ),),
                         Container(
                           height: MediaQuery.of(context).size.height * 0.01,
                         ),
                         Text('112K, abc Street, City - 3124',style: TextStyle(
                           fontSize: 15,
                         ),)
                       ],
                     ),
                     Spacer(),
                     MaterialButton(
                       onPressed: (){},
                       color: Colors.black,
                       child: Row(
                         children: [
                           Text('Get Direction',style: TextStyle(
                             color: Colors.white,fontSize: 12,
                           ),),
                           Icon(Icons.location_on,color: Colors.white,size: 13,)
                         ],
                       ),
                     )
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),
               Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.only(top: 15),
                   child:Column(
                     children: [
                       Text('Duration',style: TextStyle(
                           fontSize: 18,fontWeight: FontWeight.bold
                       ),),
                       Text('8 days',style: TextStyle(
                           fontSize: 15,
                       ),)
                     ],
                   ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child:Container(
                     height: MediaQuery.of(context).size.height * 0.001,
                     width: MediaQuery.of(context).size.width * 2,
                     color: Colors.black,
                   ),),
               ),

               Container(
                 padding: EdgeInsets.all(10),
                 alignment: Alignment.topLeft,
                 child: Text('Documents & Authorization',style: TextStyle(
                     fontSize: 15,fontWeight: FontWeight.bold
                 ),),
               ),
               Container(
                 height: MediaQuery.of(context).size.height * 0.04,
               ),
               Container(

                 child: Row(
                   children: [
                     MaterialButton(
                         onPressed: (){},
                         color: Colors.black12,
                         child:Container(
                           padding: EdgeInsets.only(top: 10,bottom: 10),
                           child: Row(
                             children: [
                               Icon(Icons.insert_drive_file),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('View Vehicle'),
                                   Text('Documents')
                                 ],
                               )
                             ],
                           ),
                         )
                     ),
                     Spacer(),
                     
                     MaterialButton(
                       onPressed: (){},
                       color: Colors.black12,
                       child:Container(
                         padding: EdgeInsets.only(top: 10,bottom: 10),
                         child: Row(
                           children: [
                             Icon(Icons.insert_drive_file),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('View/Request'),
                                 Text('Authorization')
                               ],
                             )
                           ],
                         ),
                       ) 
                     ),
                   ],
                 ),
               )

             ],
           ),
          ),
        ),
      ),
    );
  }
}
