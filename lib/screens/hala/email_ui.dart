
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hala_avis_car/common/app_constants_or_strings/string_or_constants.dart';
import 'package:hala_avis_car/screens/I18nSample/app_localizations.dart';

class EmailUi extends StatefulWidget {
  @override
  _EmailUiState createState() => _EmailUiState();
}

class _EmailUiState extends State<EmailUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(image: AssetImage('assets/email_ui/email (7).png'),height: MediaQuery.of(context).size.height*0.07,),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Text(AppLocalizations.of(context).translate('title'),style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: ColorNames().black,
                fontSize: 20,
              ),textAlign: TextAlign.center,),
              Container(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Container(
                child: Center(
                  child: RichText(text: TextSpan(
                      text: AppLocalizations.of(context).translate('message1'),style: GoogleFonts.lato(
                      fontSize: 16,
                    color: ColorNames().grey,
                  ),
                      children: <TextSpan>[
                        TextSpan(
                            text: AppLocalizations.of(context).translate('message2'),style: TextStyle(fontWeight: FontWeight.bold,color: ColorNames().black,)
                        ),
                      ]
                  ),textAlign: TextAlign.center,),
                ),
              ),


              Container(
              height: MediaQuery.of(context).size.height*0.03,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back,color: ColorNames().maroon),
                    Text(AppLocalizations.of(context).translate('backKey'),style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: ColorNames().maroon
                    )),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
