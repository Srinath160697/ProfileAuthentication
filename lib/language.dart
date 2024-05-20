import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:profile_app/localisation/locales.dart';
import 'package:profile_app/phonenumber.dart';

class MylanguageScreen extends StatefulWidget {
  const MylanguageScreen({super.key});

  @override
  State<MylanguageScreen> createState() => _MylanguageScreenState();
}

class _MylanguageScreenState extends State<MylanguageScreen> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    configureLocalization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      home: const Mylanguage(),
    );
  }

  void configureLocalization() {
    localization.init(mapLocales: LOCALES, initLanguageCode: "en");
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  void onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }
}

class Mylanguage extends StatefulWidget {
  const Mylanguage({super.key});

  @override
  State<Mylanguage> createState() => _MylanguageState();
}

class _MylanguageState extends State<Mylanguage> {
  late FlutterLocalization _flutterLocalization;

  late String _currentLocale;
  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFBDFCE5),
            Color(0xFFE8F5E9),
            Color.fromARGB(255, 247, 247, 247),
            Color(0xFFE8F5E9),
            Color(0xFFBDFCE5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Chimertech_logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    LocaleData.title.getString(context),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 300,
                      height: 50,
                      child: DropdownButton(
                        value: _currentLocale,
                        items: const [
                          DropdownMenuItem(
                            value: "en",
                            child: Text("English"),
                          ),
                          DropdownMenuItem(
                            value: "ta",
                            child: Text("தமிழ்"),
                          ),
                          DropdownMenuItem(
                            value: "hi",
                            child: Text("हिंदी"),
                          ),
                        ],
                        onChanged: (value) {
                          _setLocale(value);
                        },
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Myphonenumber()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        LocaleData.btn1.getString(context),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _setLocale(String? value) {
    if (value == null) return;
    if (value == "en") {
      _flutterLocalization.translate("en");
    } else if (value == "ta") {
      _flutterLocalization.translate("ta");
    } else if (value == "hi") {
      _flutterLocalization.translate("hi");
    } else {
      return;
    }
    setState(() {
      _currentLocale = value;
    });
  }
}
