import 'package:flutter/material.dart';
import 'package:rahejacorp/loginscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'Assets/images/bg.PNG',
                      ),
                      fit: BoxFit.cover)),
              child: Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Positioned(
                      top: 250,
                      left: 10,
                      child: Text(
                        'Welcome To',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                  const Positioned(
                      top: 280,
                      left: 10,
                      child: Text(
                        'K Raheja Corp',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                  const Positioned(
                      top: 400,
                      left: 10,
                      child: Text(
                        'Email/Mobile',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 420,
                      left: 10,
                      right: 10,
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 350,
                        color: Colors.white,
                        // ignore: prefer_const_constructors
                        child: TextField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.mobile_friendly_sharp),
                            labelText: 'Enter email id / mobile number',
                          ),
                        ),
                      )),
                  const Positioned(
                      top: 470,
                      left: 10,
                      child: Text(
                        'OTP',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 490,
                      left: 10,
                      right: 10,
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 350,
                        color: Colors.white,
                        // ignore: prefer_const_constructors
                        child: TextField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock_clock_sharp),
                            labelText: 'Enter OTP',
                          ),
                        ),
                      )),
                  Positioned(
                      top: 535,
                      left: 10,
                      right: 10,
                      child: Container(
                          height: 30,
                          width: 350,
                          color: Colors.amber,
                          child: OutlinedButton(
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                          ))),
                  Positioned(
                      top: 576,
                      left: 10,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.people_alt_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'Containue as a guest',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          )
                        ],
                      ))
                ],
              ))),
    );
  }
}
