import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hala_avis_car/screens/I18nSample/AppLanguage.dart';
import 'package:hala_avis_car/screens/I18nSample/app_localizations.dart';
import 'package:hala_avis_car/screens/car_details/my_car.dart';
import 'package:hala_avis_car/screens/drawer/drawer_ui.dart';
import 'package:hala_avis_car/screens/flutter_database/sample/student_view.dart';
import 'package:hala_avis_car/screens/flutter_database/sampleui.dart';
import 'package:hala_avis_car/screens/hala/email_ui.dart';
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
          home: EmailUi(),
        );
      }),
    );
  }
}