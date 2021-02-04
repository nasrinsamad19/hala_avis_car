
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.26,
          child:ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,

            child: Card(
              elevation: 2,

              child: Column(

                mainAxisSize: MainAxisSize.min,

                children: <Widget>[
                  Row(
                    children: [
              Container(color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.03,
                height: MediaQuery.of(context).size.height * 0.07,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('My Car01', style: TextStyle(
                              color: Colors.red)),
                          Text('3690JBA', style: TextStyle(
                              color: Colors.black)),
                        ],
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.05,
                        //    bbpadding: EdgeInsets.all(30),
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Text('Active',style: TextStyle(
                              color: Colors.black
                            ),)
                          ],
                        ),

                      )
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height * 0.1,),
                    padding: EdgeInsets.only(left: 16.0,bottom: 8.0,right: 16.0),
                    decoration: BoxDecoration(
                        boxShadow:[
                          BoxShadow(color: Colors.black,
                              blurRadius: 4)
                        ],
                        image: DecorationImage(
                            image:  AssetImage('assets/car.jpg'),
                            fit: BoxFit.cover
                        )
                    ),

                  ),

                ],
              ),
            ),
          );
        }

),
        ),
      ),
    );
  }
}
