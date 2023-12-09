import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  String selectDistrict = 'D1';
  String selectBlock = 'B01';
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownCallback(selectDistrict);
    dropdownCallback1(selectBlock);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('LOGIN'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.teal,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                  key: _formKey,
                  child: Container(
                    color: Colors.teal,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(25),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Name ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType: TextInputType.text,
                              controller: email,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,
                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: 'Name of Refugee',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(25),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter number of family ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType: TextInputType.emailAddress,
                              controller: email,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Number of family',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,
                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: 'Number of family',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(25),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Number of UNHCR ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType: TextInputType.emailAddress,
                              controller: email,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Number of UNHCR',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,
                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: '***-**C*****',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(25),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Individual Number ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true),
                              controller: email,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Individual Number',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,
                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: 'Individual Number',
                                suffixIcon: const Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                'District : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: Colors.white,
                                ),
                                child: DropdownButton(
                                  value: selectDistrict,
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'D1',
                                      child: Text('D1'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D2',
                                      child: Text('D2'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D3',
                                      child: Text('D3'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D4',
                                      child: Text('D4'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D5',
                                      child: Text('D5'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D6',
                                      child: Text('D6'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D7',
                                      child: Text('D7'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D8',
                                      child: Text('D8'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D9',
                                      child: Text('D9'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D10',
                                      child: Text('D10'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D11',
                                      child: Text('D11'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'D12',
                                      child: Text('D12'),
                                    ),
                                  ],
                                  onChanged: dropdownCallback,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Block : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: DropdownButton(
                                    value: selectBlock,
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'B01',
                                        child: Text('B01'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B02',
                                        child: Text('B02'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B03',
                                        child: Text('B03'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B04',
                                        child: Text('B04'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B05',
                                        child: Text('B05'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B06',
                                        child: Text('B06'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B07',
                                        child: Text('B07'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B08',
                                        child: Text('B08'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B09',
                                        child: Text('B09'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B10',
                                        child: Text('B10'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B11',
                                        child: Text('B11'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B12',
                                        child: Text('B12'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B13',
                                        child: Text('B13'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B14',
                                        child: Text('B14'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B15',
                                        child: Text('B15'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B16',
                                        child: Text('B16'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B17',
                                        child: Text('B17'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B18',
                                        child: Text('B18'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B19',
                                        child: Text('B19'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B20',
                                        child: Text('B20'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B21',
                                        child: Text('B21'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B22',
                                        child: Text('B22'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B23',
                                        child: Text('B23'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'B24',
                                        child: Text('B24'),
                                      ),
                                    ],
                                    onChanged: dropdownCallback1,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                'House : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadiusDirectional.circular(25),
                                    color: Colors.white,
                                  ),
                                  child:TextFormField(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    keyboardType:TextInputType.number,
                                    controller: email,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: 'House Number',
                                      labelStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hoverColor: Colors.blue,
                                      hintStyle: const TextStyle(color: Colors.black),
                                      hintText: 'House Number',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Validate returns true if the form is valid, or false otherwise.
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, display a snackbar. In the real world,
                                      // you'd often call a server or save the information in a database.
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            'Processing Data',
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    'Send Data',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        selectDistrict = selectedValue;
      });
    }
  }

  void dropdownCallback1(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        selectBlock = selectedValue;
      });
    }
  }
}
