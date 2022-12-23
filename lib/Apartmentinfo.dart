import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rahejacorp/MainScreen.dart';

class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //widget tree
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 10),
              child: Text(
                'Booking Details',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            )
          ],
          leading: Row(children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Text(
              'Back',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xffE8F3D6)),
                height: 530,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      // foregroundColor: Colors.yellow,
                      backgroundColor: Color.fromARGB(238, 230, 181, 5),
                      child: Center(
                        child: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Apartment Infomation',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'The following are the property information',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.build_circle),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text('Building No. \n 1299'),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.build_circle),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          'Apartment  No. \n Not Avaiable'),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: const [
                                    Icon(Icons.build_circle),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child:
                                          Text('View Facing \n Not Avaiable'),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: const [
                                    Icon(Icons.park_outlined),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          'Type of Parking \n Not Avaiable'),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.build_circle),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          'Exclusive Area(Private Garden) \n Not Avaiable'),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.nature_people_outlined),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          'Number of Parking Spaces \n Not Avaiable'),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: const [
                                    Icon(Icons.build_circle),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                          'Agreement Value. \n 2,50,000,000'),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 160, top: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.expand_less,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.build_circle),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text('Building No. \n 1299'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.build_circle),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3),
                                    child: Text('Building No. \n 1299'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.build_circle),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3),
                                    child: Text('Building No. \n 1299'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.build_circle),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3),
                                    child: Text('Building No. \n 1299'),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    color: Color((0xffE8F3D6)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 170),
                      child: Column(
                        children: [
                          Text(
                            'Get Billing Details View',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(
                                        ' know about all the bring\n  to your Properties. '),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 1),
                                child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 200, 150, 10)),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'View Detail',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 200,
                      top: 30,
                      child: Icon(
                        Icons.pages,
                        size: 150,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
