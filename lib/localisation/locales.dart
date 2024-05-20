import "package:flutter_localization/flutter_localization.dart";

List<MapLocale> LOCALES = [
  const MapLocale("en", LocaleData.EN),
  const MapLocale("ta", LocaleData.TA),
  const MapLocale("hi", LocaleData.HI),
];
mixin LocaleData {
  //page 1
  //for Language.dart
  static const String title = 'title';
  static const String btn1 = 'btn1';
  //page 2
  //for phonenumber.dart
  static const String title1 = 'title1';
  static const String content1 = 'content1';
  static const String btn2 = 'btn2';
  //page 3
  //for otp.dart
  static const String title2 = 'title2';
  static const String content2 = 'content2';
  static const String btn3 = 'btn3';
  static const String textbtn1 = 'textbtn1';
  static const String textbtn2 = 'textbtn2';

  static const Map<String, dynamic> EN = {
    //page 1
    //for Language.dart
    title: 'Welcome to iHerd',
    btn1: 'Continue',

    //page 2
    //for phonenumber.dart
    title1: 'Registration ',
    content1:
        "Add your phone number. We'll send a verification code so we know you are real!",
    btn2: 'Send the code',

    //page 3
    //for otp.dart
    title2: "Phone Verification",
    content2: "Enter your otp code number",
    btn3: "Verify Phone Number",
    textbtn1: "Login with Email",
    textbtn2: "Resend New Code",
  };

  static const Map<String, dynamic> TA = {
    //page 1
    //for Language.dart
    title: 'iHerd க்கு வரவேற்கிறோம்',
    btn1: 'தொடரவும்',

    //page 2
    //for phonenumber.dart
    title1: 'பதிவு ',
    content1:
        "உங்கள் தொலைபேசி எண்ணைச் சேர்க்கவும். சரிபார்ப்புக் குறியீட்டை அனுப்புவோம், எனவே நீங்கள் உண்மையானவர் என்பதை நாங்கள் அறிவோம்!",
    btn2: 'குறியீட்டை அனுப்பவும்',

    //page 3
    //for otp.dart
    title2: "தொலைபேசி சரிபார்ப்பு",
    content2: "உங்கள் otp குறியீட்டு எண்ணை உள்ளிடவும்",
    btn3: "தொலைபேசி எண்ணைச் சரிபார்க்கவும்",
    textbtn1: "மின்னஞ்சல் மூலம் உள்நுழைக",
    textbtn2: "புதிய குறியீட்டை மீண்டும் அனுப்பவும்",
  };

  static const Map<String, dynamic> HI = {
    //page 1
    //for Language.dart
    title: 'आईहर्ड में आपका स्वागत है',
    btn1: 'जारी रखना',

    //page 2
    //for phonenumber.dart
    title1: 'पंजीकरण ',
    content1:
        "अपना फ़ोन नंबर जोड़ें. हम एक सत्यापन कोड भेजेंगे ताकि हम जान सकें कि आप असली हैं!",
    btn2: 'कोड भेजें',

    //page 3
    //for otp.dart
    title2: "फ़ोन सत्यापन",
    content2: "अपना ओटीपी कोड नंबर दर्ज करें",
    btn3: "फ़ोन नंबर सत्यापित करें",
    textbtn1: "ईमेल से लॉगिन करें",
    textbtn2: "नया कोड पुनः भेजें",
  };
}


// mixin LocaleData {
//   static late Map<String, dynamic> EN;
//   static late Map<String, dynamic> TA;
//   static late Map<String, dynamic> HI;

//   static Future<void> initialize() async {
//     String enJson =
//         await rootBundle.loadString('packages/profile_app/language/en.json');
//     EN = json.decode(enJson);

//     String taJson =
//         await rootBundle.loadString('packages/profile_app/language/ta.json');
//     TA = json.decode(taJson);

//     String hiJson =
//         await rootBundle.loadString('packages/profile_app/language/hi.json');
//     HI = json.decode(hiJson);
//   }
// }