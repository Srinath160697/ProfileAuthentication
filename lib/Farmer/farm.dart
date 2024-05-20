import 'package:flutter/material.dart';
import 'package:profile_app/Farmer/addcattle.dart';

class MyFarm extends StatefulWidget {
  const MyFarm({super.key});

  @override
  State<MyFarm> createState() => _MyFarmState();
}

class _MyFarmState extends State<MyFarm> {
  // String _selectedval = "";
  // String _selectedequ = "";

  // final List<String> _productsizelist = ['Organic', 'Natural', 'A1', 'A2'];
  // final List<String> _equipmentlist = [
  //   'Chaff Cutter',
  //   'Portable Milking Machine',
  //   'Vaccum Milking Machine'
  // ];
  String _selectedAnimal = 'Cow'; // Default value

  final List<DropdownMenuItem<String>> _animalDropdownItems = <String>[
    'Cow',
    'Bull',
    'Buffalo',
    'Calf'
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  final TextEditingController _farmNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _villageController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _noOfAnimalController = TextEditingController();
  final TextEditingController _noOfEmployeeController = TextEditingController();

  @override
  void dispose() {
    _farmNameController.dispose();
    _addressController.dispose();
    _stateController.dispose();
    _districtController.dispose();
    _villageController.dispose();
    _pincodeController.dispose();
    _mobileController.dispose();
    _noOfAnimalController.dispose();
    _noOfEmployeeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm Information'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
        child: Column(
          children: [
            _buildTextField(
                controller: _farmNameController, labelText: 'Farm Name'),
            const SizedBox(height: 15),
            _buildTextField(
                controller: _addressController, labelText: 'Address'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _stateController, labelText: 'State'),
                ),
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _districtController, labelText: 'District'),
                ),
              ],
            ),
            const SizedBox(height: 15),
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
                      controller: _pincodeController,
                      labelText: 'Pincode',
                      keyboardType: TextInputType.number),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _mobileController,
                      labelText: 'Mobile Number',
                      keyboardType: TextInputType.number),
                ),
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _noOfEmployeeController,
                      labelText: 'No of Employee',
                      keyboardType: TextInputType.number),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  child: _buildTextField(
                      controller: _noOfAnimalController,
                      labelText: 'No of Animal',
                      keyboardType: TextInputType.number),
                ),
                DropdownButton<String>(
                  value: _selectedAnimal,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedAnimal = newValue!;
                    });
                  },
                  items: _animalDropdownItems,
                )
              ],
            ),
            const SizedBox(height: 25),

            const SizedBox(height: 25),

            const SizedBox(height: 15),
            // _buildTextField(
            //     controller: _addressController, labelText: 'Farm Location'),
            // const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  if (_farmNameController.text.isEmpty ||
                      _addressController.text.isEmpty ||
                      _stateController.text.isEmpty ||
                      _districtController.text.isEmpty ||
                      _villageController.text.isEmpty ||
                      _pincodeController.text.isEmpty ||
                      _mobileController.text.isEmpty ||
                      _noOfAnimalController.text.isEmpty ||
                      _noOfEmployeeController.text.isEmpty) {
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
                      MaterialPageRoute(builder: (context) => const Addcattle()),
                    ).then((_) {
                      _farmNameController.clear();
                      _addressController.clear();
                      _stateController.clear();
                      _districtController.clear();
                      _villageController.clear();
                      _pincodeController.clear();
                      _mobileController.clear();
                      _noOfAnimalController.clear();
                      _noOfEmployeeController.clear();
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff06234B),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  "Add Cattle",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
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
