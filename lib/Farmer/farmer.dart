import 'package:flutter/material.dart';
import 'package:profile_app/Farmer/farm.dart';

class Myfarmer extends StatefulWidget {
  const Myfarmer({super.key});

  @override
  State<Myfarmer> createState() => _MyfarmerState();
}

class _MyfarmerState extends State<Myfarmer> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _villageController = TextEditingController();
  final TextEditingController _talukController = TextEditingController();
  final TextEditingController _postOfficeController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _stateController.dispose();
    _districtController.dispose();
    _villageController.dispose();
    _talukController.dispose();
    _postOfficeController.dispose();
    _pincodeController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xff06234B),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(height: 15),
            const Divider(height: 1),
            const SizedBox(height: 35),
            _buildTextField(controller: _nameController, labelText: 'Name'),
            _buildTextField(
                controller: _addressController, labelText: 'Address'),
            _buildTextField(controller: _stateController, labelText: 'State'),
            _buildTextField(
                controller: _districtController, labelText: 'District'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _villageController, labelText: 'Village'),
                ),
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _talukController, labelText: 'Taluk'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _postOfficeController,
                      labelText: 'Postoffice'),
                ),
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                    controller: _pincodeController,
                    labelText: 'Pincode',
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            _buildTextField(
              controller: _mobileController,
              labelText: 'Mobile number',
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_nameController.text.isEmpty ||
              _addressController.text.isEmpty ||
              _stateController.text.isEmpty ||
              _districtController.text.isEmpty ||
              _villageController.text.isEmpty ||
              _talukController.text.isEmpty ||
              _postOfficeController.text.isEmpty ||
              _pincodeController.text.isEmpty ||
              _mobileController.text.isEmpty) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: const Text('All fields are required.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyFarm()),
            ).then((_) {
              _nameController.clear();
              _addressController.clear();
              _stateController.clear();
              _districtController.clear();
              _villageController.clear();
              _talukController.clear();
              _postOfficeController.clear();
              _pincodeController.clear();
              _mobileController.clear();
            });
          }
        },
        backgroundColor: const Color(0xff06234B),
        elevation: 20,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller,
      required String labelText,
      TextInputType? keyboardType}) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff06234B),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
