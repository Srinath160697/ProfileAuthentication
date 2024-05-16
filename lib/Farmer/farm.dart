import 'package:flutter/material.dart';

class MyFarm extends StatefulWidget {
  const MyFarm({super.key});

  @override
  State<MyFarm> createState() => _MyFarmState();
}

class _MyFarmState extends State<MyFarm> {
  String _selectedval = "";
  String _selectedequ = "";
  final List<String> _productsizelist = ['Organic', 'Natural', 'A1', 'A2'];
  final List<String> _equipmentlist = [
    'Chaff Cutter',
    'Portable Milking Machine',
    'Vaccum Milking Machine'
  ];

  @override
  void initState() {
    super.initState();
    _selectedval = _productsizelist[0];
    _selectedequ = _equipmentlist[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Farm Name',
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
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Address',
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'State',
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
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'District',
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
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Village',
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
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Taluk',
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
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Pincode',
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
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Postoffice',
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
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Animal',
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
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'No of Animal ',
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
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
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
              const SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'No of Employee',
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
              const SizedBox(
                height: 15,
              ),
              DropdownButtonFormField(
                value: _selectedequ,
                items: _equipmentlist
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(e),
                          ),
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedequ = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Color(0xff06234B),
                ),
                dropdownColor: Colors.blueGrey.shade50,
                decoration: const InputDecoration(
                  labelText: 'Farm Equipments',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DropdownButtonFormField(
                value: _selectedval,
                items: _productsizelist
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(e),
                          ),
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedval = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: Color(0xff06234B),
                ),
                dropdownColor: Colors.blueGrey.shade50,
                decoration: const InputDecoration(
                  labelText: 'Farm Technique',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Farm Location',
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
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff06234B),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                  child: const Text(
                    "Add Cattle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
