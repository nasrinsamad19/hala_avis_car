import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {

  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();
  var myformat = DateFormat('dd-mm-yyyy').format(DateTime.now());

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text= myformat.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Enter Details', style:TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('National ID'),
                Container(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'ABCD1234',
                            border: OutlineInputBorder()
                          ),
                      ),),
                      Container(
                        width: 20,
                      ),
                      ButtonTheme(
                        height: MediaQuery.of(context).size.height*0.07,
                        minWidth: MediaQuery.of(context).size.width*0.07,
                        child: RaisedButton(
                            color: Colors.black,
                            child: Text('Upload National ID',style: TextStyle(
                                color: Colors.white,
                              fontSize: 12
                            ),),
                            onPressed: (){}),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                ),
                Text('Licence No'),
                Container(
                  height: 10,
                ),
                Container(
                  child:Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '1287759494949',
                              border: OutlineInputBorder()
                          ),
                        ),),
                      Container(
                        width: 20,
                      ),
                      ButtonTheme(
                        height: MediaQuery.of(context).size.height*0.07,
                        minWidth: MediaQuery.of(context).size.width*0.33,
                        child: RaisedButton(
                            color: Colors.black,
                            child: Text('Upload Licence',style: TextStyle(
                              color: Colors.white,
                                fontSize: 12
                            ),),
                            onPressed: (){}),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                ),
                Text('Mobile No'),
                Container(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: '9876543210',
                      border: OutlineInputBorder()
                  ),
                ),
                Container(
                  height: 25,
                ),
                Text('Plate No'),
                Container(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: '123ABCD',
                      border: OutlineInputBorder()
                  ),
                ),
                Container(
                  height: 25,
                ),
                Text('DOB',),
                Container(
                  height: 10,
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    hintText: "${selectedDate.day.toString()}-${selectedDate.month.toString().padLeft(2,'0')}-${selectedDate.year.toString().padLeft(2,'0')}".split(' ')[0],
                    suffixIcon: IconButton(icon:Icon(Icons.calendar_today,),
                    onPressed:()=>_selectDate(context)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
