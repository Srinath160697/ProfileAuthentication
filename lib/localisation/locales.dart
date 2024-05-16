import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("ta", LocaleData.TA),
  MapLocale("hi", LocaleData.HI),
];

mixin LocaleData {
  static const String title = 'title';
  static const String title1 = 'title1';
  static const String btn1 = 'btn1';

  static const Map<String, dynamic> EN = {
    title: 'Welcome to iHerd',
    btn1: 'Continue',
    title1: 'Registration %a'
  };

  static const Map<String, dynamic> TA = {
    title: 'iHerd க்கு வரவேற்கிறோம்',
    btn1: 'தொடரவும்',
    title1: 'பதிவு %a'
  };

  static const Map<String, dynamic> HI = {
    title: 'आईहर्ड में आपका स्वागत है',
    btn1: 'जारी रखना',
    title1: 'पंजीकरण %a'
  };
}
