import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hala_avis_car/screens/I18nSample/AppLanguage.dart';
import 'package:hala_avis_car/screens/I18nSample/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {
  final AppLanguage appLanguage;

  MyApp({this.appLanguage});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      builder: (_) => appLanguage,
      child: Consumer<AppLanguage>(builder: (context, model, child) {
        return MaterialApp(
          locale: model.appLocal,
          supportedLocales: [
            Locale('en', 'US'),
            Locale('ar', ''),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],

          home: AppLang(),
        );
      }),
    );
  }
}

class AppLang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate('button'),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 25),
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Text(
                AppLocalizations.of(context).translate('title'),
                style: TextStyle(fontSize: 72),
              ),
              Container(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('message'),
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      height: 5,
                    ),
                    Text(
                      AppLocalizations.of(context).translate('Message2'),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),

              ),
              Container(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20,top: 20,right: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate('txt1'),
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),

              ),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.topLeft,
                child:TextFormField(
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context).translate('hint1')
                  ),
                ),
              ),

              Container(
                height: 50,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(AppLocalizations.of(context).translate('button'),
                  style: TextStyle(fontSize: 15),),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      appLanguage.changeLanguage(Locale("en"));
                    },
                    child: Text('English'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      appLanguage.changeLanguage(Locale("ar"));
                    },
                    child: Text('العربي'),
                  )
                ],
              ),

            ],
          ),
        ),
    );
  }
}