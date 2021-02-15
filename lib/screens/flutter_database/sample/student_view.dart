import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala_avis_car/screens/flutter_database/sample/student_dbhelper.dart';
import 'package:hala_avis_car/screens/flutter_database/sample/student_table.dart';

class StudentHome extends StatefulWidget{
  final String title;
  StudentHome({Key key ,this.title}): super(key:key);

  @override
  State<StatefulWidget> createState(){
    return _State();
  }

}
class _State extends State<StudentHome>{

  Future<List<Student>> students;

  TextEditingController fnameController= TextEditingController();
  TextEditingController lnameController= TextEditingController();
  TextEditingController addressController= TextEditingController();

  String fname;
  String lname;
  String address;
  int id;

  final formKey= new GlobalKey<FormState>();
  var dBHelper;
  bool isUpdating;

  @override
  void initState() {
    super.initState();
    dBHelper=DBHelperStudent();
    isUpdating=false;
    refreshList();
  }

  refreshList(){
    setState(() {
      students= dBHelper.getStudents();
    });
  }

  clearField(){
    fnameController.text="";
    lnameController.text="";
    addressController.text="";

  }

  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      if (isUpdating) {
        Student s = Student(id,fname,lname,address);
        dBHelper.update(s);
        setState(() {
          isUpdating = false;
        });
      } else {
        Student s = Student(null, fname,lname,address);
        dBHelper.save(s);
      }
      clearField();
      refreshList();
    }
  }

  form(){
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          verticalDirection:VerticalDirection.down,
          children:<Widget> [
            TextFormField(
              controller: fnameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'First Name'),
              validator: (val) => val.length == 0 ? 'Enter First Name' : null,
              onSaved: (val) => fname = val,
            ),
            TextFormField(
              controller: lnameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Last Name'),
              validator: (val) => val.length == 0 ? 'Enter Last Name' : null,
              onSaved: (val) => lname = val,
            ),
            TextFormField(
              controller: addressController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Address'),
              validator: (val) => val.length == 0 ?'Enter Address':null,
              onSaved: (val)=>address= val,
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: validate,
                  child: Text(isUpdating? 'Update':'Add'),
                ),
                FlatButton(
                  onPressed: (){
                    setState(() {
                      isUpdating=false;
                    });
                    clearField();
                  },
                  child: Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView dataTable(List<Student> students) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text('NAME'),
          ),
          DataColumn(
            label: Text('ADDRESS'),
          ),
          DataColumn(
            label: Text('DELETE'),
          )
        ],
        rows: students.map((student) => DataRow(cells: [
          DataCell(
            Text(student.fname+" "+student.lname),
            onTap: () {
              setState(() {
                isUpdating = true;
                id = student.id;
              });
              fnameController.text = student.fname;
              lnameController.text=student.lname;
              addressController.text=student.address;
            },
          ),
          DataCell(
            Text(student.address),
          ),
          DataCell(IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              dBHelper.delete(student.id);
              refreshList();
            },
          )),
        ]),
        )
            .toList(),
      ),
    );
  }

  list() {
    return Expanded(
      child: FutureBuilder(
        future: students,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return dataTable(snapshot.data);
          }
          if (null == snapshot.data || snapshot.data.length == 0) {
            return Text("No Data Found");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Data'),
      ),
      body: Container(
        child: Column(
          children:<Widget> [
            form(),
            list(),
          ],
        ),
      ),
    );
  }
}