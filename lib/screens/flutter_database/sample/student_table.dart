class Student{
  int id;
  String fname;
  String lname;
  String address;

  Student(this.id,this.fname,this.lname,this.address);

  Map<String,dynamic>toMap(){
    var map=<String,dynamic>{
      'id':id,
      'fname':fname,
      'lname':lname,
      'address':address,
    };
    return map;
  }

  Student.fromMap(Map<String , dynamic>map){
    id=map['id'];
    fname=map['fname'];
    lname=map['lname'];
    address=map['address'];

  }
}