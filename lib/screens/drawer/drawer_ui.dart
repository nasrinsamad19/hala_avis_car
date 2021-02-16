import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class  DrawerUi extends StatefulWidget{
  State<StatefulWidget> createState()=> new _State();
}

class _State extends State<DrawerUi>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avis Saudi'),
        ),
      drawer: Drawer(
        child:Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children:<Widget> [
              IconButton(icon: Icon(Icons.close), onPressed: null,iconSize: 30,alignment: Alignment.topLeft,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50,right: 20),
                child: Row(
                  children: [
                    Icon(Icons.account_circle,color: Colors.black,size: 75,),
                    Container(
                      width: MediaQuery.of(context).size.width  * 0.01,

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("User Name",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,

                        ),
                        Text("Product designer",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:10
                        ),),

                      ],
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 19,),

                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ListTile(
                hoverColor: Colors.red,
                leading: Icon(Icons.home),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('Home'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('My Cars'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('My Chauffeurs'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.directions_car),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('Book a Car'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.location_on),

                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('Rental Locations'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('Settings'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Transform(transform: Matrix4.translationValues(-28, 0.0, 0.0),
                  child: Text('Log Out'),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null,iconSize: 15,),
                onTap: (){
                },
              ),
              Container(
                padding: EdgeInsets.only(left: 35,right: 20),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child:Container(
                    height: 1.0,
                    width: 370.0,
                    color: Colors.black,
                  ),),
              ),
            ],
          ),
        ),

      ),
    );
  }
}