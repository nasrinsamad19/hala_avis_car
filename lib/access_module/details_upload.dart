import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hala_avis_car/common_app_constants/colors.dart';
import 'package:hala_avis_car/i18n/app_localization.dart';

enum FileType {
  any,
  media,
  image,
  video,
  audio,
  custom,
}

enum FilePickerStatus {
  picking,
  done,
}


class DetailsUpload extends StatefulWidget {
  @override
  _DetailsUploadState createState() => _DetailsUploadState();
}

class _DetailsUploadState extends State<DetailsUpload> {
  @override


  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorNames().maroon
    ));
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child:Container(

             padding: EdgeInsets.all(30),
              child: Column(

                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ButtonTheme(
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
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image(image: AssetImage('asset/Icon feather-image.png',),height: MediaQuery.of(context).size.height * 0.03,)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text(AppLocalizations.of(context).translate('buttonKey'),style: GoogleFonts.lato(
                                        color: ColorNames().maroon,
                                        fontSize: 11
                                    ),),
                                    Text(AppLocalizations.of(context).translate('message'),style: GoogleFonts.lato(
                                        color: ColorNames().grey,
                                        fontSize: 11
                                    ),),
                                  ],
                                ),

                                Spacer(),
                                Container(

                                  child: Icon(Icons.arrow_forward,size: 20,color: ColorNames().maroon),),
                              ],
                            ),
                          ),
                          onPressed: (){}),
                    ),
                  ),

                ],
              )

            ),
          ),

        ),
    );
  }
}
