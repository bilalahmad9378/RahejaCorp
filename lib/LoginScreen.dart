import 'package:flutter/material.dart';
import 'package:rahejacorp/MainScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Assets/images/rahejalogo.png'),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 120),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Divider(
                  color: Color.fromARGB(255, 177, 137, 17),
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        // labelText: 'Email or Mobile No ',
                        label: Row(
                          children: const [
                            Text(
                              'Email or Mobile No ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        hintText: 'Enter Email or Mobile No',
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                        // labelText: 'Password',
                        label: Row(
                          children: const [
                            Text(
                              'Password ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(Icons.mail_lock_outlined),
                        Text(
                          'Containue as guest ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      'By Clicking LOG IN you are accepting our Privacy Policy \n',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text(
                    '& agree to the Terms & Conditions',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 226, 171, 7),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 44,
                  width: 350,
                  child: OutlinedButton(
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.amber),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
