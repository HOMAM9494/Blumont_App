import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'information_usre.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child: Lottie.asset(
                    'assets/login/a4.json',
                  )),
              Form(
                  key: _formKey,
                  child: Container(
                    color: Colors.teal,
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                    child: Container(
                      child: Column(
                        children: [
                          Container(decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(25),
                            color: Colors.white,
                          ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Email Address ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType: TextInputType.emailAddress,
                              controller: email,
                              style: const TextStyle(color: Colors.black,),
                              decoration: InputDecoration(
                                labelText: 'Email addres',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,
                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: 'user@gmail.com',
                                suffixIcon: const Icon(Icons.email_outlined),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(25),
                            color: Colors.white,
                          ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Password ';
                                }
                                return null;
                              },
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              controller: password,
                              style: const TextStyle(color: Colors.black,),
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                hoverColor: Colors.blue,

                                hintStyle: const TextStyle(color: Colors.black),
                                hintText: 'Password',
                                suffixIcon: const Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                              ),
                            ),
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
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                builder: (context) => const UserInformation()));
                          }
                        },
                        child: const Text('Login',style: TextStyle(fontSize: 24),),
                      ),

                    ],
                  ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               const Text("Don't have any Account ?",style: TextStyle(fontSize: 18),),
                                const SizedBox(width: 5,),
                                TextButton(
                                  onPressed: () {
                                  },
                                  child: const Text('SingUp ',style: TextStyle(fontSize: 18),),
                                ),
                              ],
                            ),),
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
}
