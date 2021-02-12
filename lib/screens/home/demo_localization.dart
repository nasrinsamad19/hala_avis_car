import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalization1 {
  DemoLocalization1(this.locale);

  final Locale locale;
  static DemoLocalization1 of(BuildContext context) {
    return Localizations.of<DemoLocalization1>(context, DemoLocalization1);
  }

  Map<String, String> _localizedValue;

  Future<void> load() async {
    String jsonStringValues = await rootBundle.loadString('assets/home_lang/${locale.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    _localizedValue = mappedJson.map((key, value) => MapEntry(key, value.toString()));
    print(_localizedValue);



  }
  String translate(String key) {
    print(_localizedValue[key]);
    return _localizedValue[key];
  }

  static const LocalizationsDelegate<DemoLocalization1> delegate = _DemoLocalizationsDelegate();
}

class _DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalization1> {
  const _DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en','ar'].contains(locale.languageCode);
  }

  @override
  Future<DemoLocalization1> load(Locale locale) async {
    DemoLocalization1 localization = new DemoLocalization1(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<DemoLocalization1> old) => false;
}