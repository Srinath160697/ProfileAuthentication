import 'package:flutter/material.dart';
import 'package:profile_app/Farmer/farmer.dart';
import 'package:profile_app/Seller/user.dart';
import 'package:profile_app/Veterinarians/doctorprofile.dart';

class Myloginpages extends StatefulWidget {
  const Myloginpages({super.key});

  @override
  State<Myloginpages> createState() => _MyloginpagesState();
}

class _MyloginpagesState extends State<Myloginpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
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
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ProfessionCard(
                  assetimage: 'assets/farmer.jpg',
                  professionName: 'Farmer',
                  professionDescription:
                      'Works on the farm, cultivating crops.',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Myfarmer()));
                  },
                );
              } else if (index == 1) {
                return ProfessionCard(
                  assetimage: 'assets/veterinariandoctor.jpg',
                  professionName: 'Veterinarians',
                  professionDescription: 'Treats patients and saves lives.',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Myprofile()));
                  },
                );
              } else {
                return ProfessionCard(
                  assetimage: 'assets/seller.jpg',
                  professionName: 'Seller',
                  professionDescription:
                      'Sells products or services to customers.',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Myuser()));
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class ProfessionCard extends StatelessWidget {
  final String assetimage;
  final String professionName;
  final String professionDescription;
  final VoidCallback onTap;

  const ProfessionCard({super.key, 
    required this.assetimage,
    required this.professionName,
    required this.professionDescription,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 25,
        ),
        elevation: 5.0,
        child: Column(
          children: [
            Image.asset(
              assetimage,
              height: 150.0,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      professionName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      professionDescription,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
