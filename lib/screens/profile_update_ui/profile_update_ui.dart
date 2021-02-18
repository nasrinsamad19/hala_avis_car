
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hala_avis_car/common/app_constants_or_strings/colors.dart';
import 'package:hala_avis_car/screens/I18nSample/app_localizations.dart';
import 'package:intl/intl.dart';

class ProfileUpdateUI extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<ProfileUpdateUI> {
  bool nupload= true;
  bool upload= false;
  bool _validate= false;
  DateTime selectedDate = DateTime.now();
  final _form= GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();
  var myformat = DateFormat('dd-mm-yyyy').format(DateTime.now());

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
        builder :(BuildContext context, Widget child){
      return Theme(
          data: ThemeData.light().copyWith(
            primaryColor:  ColorNames().maroon,
            accentColor: ColorNames().maroon,
          ), child: child
      ) ;
    };

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text= myformat.toString();
      });
  }

   upload_data() {
    setState(() {
      nupload= !nupload;
      upload = !upload;
    });
  }

  void _saveForm() {
    final isValid =_form.currentState.validate();
    if(!isValid){
      return;
    }
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _form,
          child:  SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment:Alignment.center,
                    child: Text(AppLocalizations.of(context).translate('title'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: ColorNames().maroon,
                    )),
                  ),
                  Container(
                    alignment:Alignment.center,
                    child: Text(AppLocalizations.of(context).translate('subtitle'),style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: ColorNames().darkGrey

                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.054,
                  ),

                  Text(AppLocalizations.of(context).translate('NationalIdKey'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorNames().black
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(AppLocalizations.of(context).translate('NationalIdKeyHint'),style: GoogleFonts.lato(
                      fontSize: 12,
                      color: ColorNames().grey
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  TextFormField(
                    textAlign: TextAlign.center,
                    validator: (text){
                      if(text.isEmpty){
                        return AppLocalizations.of(context).translate('errorText');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'ABCD1234',
                        hintStyle: TextStyle(
                          color: ColorNames().grey,
                        ),
                        errorText: _validate? 'Value can\'t Be Empty':null,
                        border: OutlineInputBorder()
                    ),

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ButtonTheme(
                    height: MediaQuery.of(context).size.height*0.06,
                    minWidth: MediaQuery.of(context).size.width*0.5,
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: ColorNames().maroon)
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              nupload? Text(AppLocalizations.of(context).translate('UploadNationalIdKey1'),style: GoogleFonts.lato(
                                  color: ColorNames().maroon,
                                  fontSize: 11
                              ),) : Text(AppLocalizations.of(context).translate('UploadNationalIdKey2') ,style: GoogleFonts.lato(
                                  color: ColorNames().maroon,
                                  fontSize: 11
                              ),),
                              Spacer(),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  //padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: ColorNames().maroon),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: nupload?Icon(Icons.arrow_upward,size: 15,color: ColorNames().maroon):Icon(Icons.close,size: 15,color: ColorNames().maroon) ),
                            ],
                          ),
                        ),
                        onPressed: (){
                          upload_data();
                        }),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  DottedLine(
                    dashColor: Colors.grey,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(AppLocalizations.of(context).translate('DrivingLicenceKey'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorNames().black
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(AppLocalizations.of(context).translate('LicenseNumberKey'),style: GoogleFonts.lato(
                      fontSize: 12,
                      color: ColorNames().darkGrey
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  TextFormField(
                    textAlign: TextAlign.center,
                    validator: (text){
                      if(text.isEmpty){
                        return AppLocalizations.of(context).translate('errorText');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: '1287759494949',
                      hintStyle: TextStyle(
                        color: ColorNames().grey,
                      ),
                      border: OutlineInputBorder(),
                      alignLabelWithHint: true,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ButtonTheme(
                    height: MediaQuery.of(context).size.height*0.06,
                    minWidth: MediaQuery.of(context).size.width*0.5,
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: ColorNames().maroon)
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              Text(AppLocalizations.of(context).translate('UploadDrivingLicensekey'),style: GoogleFonts.lato(
                                  color: ColorNames().maroon,
                                  fontSize: 11
                              ),),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.all(5),
                                //padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: ColorNames().maroon),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(Icons.arrow_upward,size: 15,color: ColorNames().maroon),),

                            ],
                          ),
                        ),
                        onPressed: (){}),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  DottedLine(
                    dashColor: ColorNames().grey,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(AppLocalizations.of(context).translate('PlateNo'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorNames().darkGrey
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    validator: (text){
                      if(text.isEmpty){
                        return AppLocalizations.of(context).translate('errorText');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: '1234ABC',
                        hintStyle: TextStyle(
                            color: ColorNames().grey
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(AppLocalizations.of(context).translate('MobileNo'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorNames().darkGrey
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    validator: (text){
                      if(text.isEmpty){
                        return AppLocalizations.of(context).translate('errorText');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: '9876543210',
                        hintStyle: TextStyle(
                            color: ColorNames().grey
                        ),
                        border: OutlineInputBorder()
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(AppLocalizations.of(context).translate('DOB'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: ColorNames().darkGrey
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    controller: dateController,
                    validator: (text){
                      if(text.isEmpty){
                        return AppLocalizations.of(context).translate('errorText');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "${selectedDate.day.toString()}-${selectedDate.month.toString().padLeft(2,'0')}-${selectedDate.year.toString().padLeft(2,'0')}".split(' ')[0],
                      suffixIcon: IconButton(icon:Image.asset('assets/profile/Icon feather-calendar.png',height:MediaQuery.of(context).size.height * 0.03 ,),
                          onPressed:()=>_selectDate(context)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 5,
                      height: MediaQuery.of(context).size.height * 0.06,
                      color: ColorNames().maroon,
                      child: Text(AppLocalizations.of(context).translate('Login'),style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: ColorNames().white
                      )),
                      onPressed: ()=>_saveForm())
                ],
              ),
            ),
          ),
        )

      ),
    );
  }
}
