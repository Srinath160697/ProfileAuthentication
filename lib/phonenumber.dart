import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:profile_app/otp.dart';
import 'package:profile_app/localisation/locales.dart';

class Myphonenumber extends StatefulWidget {
  const Myphonenumber({super.key});

  @override
  State<Myphonenumber> createState() => _MyphonenumberState();
}

class _MyphonenumberState extends State<Myphonenumber> {
  late FlutterLocalization _flutterLocalization;

  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back))),
      body: Container(
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 15,
              right: 15,
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
                const SizedBox(
                  height: 15,
                ),
                Text(
                  LocaleData.title1.getString(context),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "Add your phone number. We'll send a verification code so we know you are real!",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 49,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 45,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                          child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 49,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Myotp()));
                      },
                      child: const Text(
                        "Send the code",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
