import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rahejacorp/Apartmentinfo.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> images = [
    'Assets/images/bg.PNG',
    'Assets/images/bg.PNG',
    'Assets/images/bg.PNG',
    'Assets/images/bg.PNG',
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.apps),
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          title: const Image(
            image: AssetImage(
              'Assets/images/raheja.PNG',
            ),
            height: 100,
            width: 100,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              // ignore: prefer_const_constructors
              ListTile(
                isThreeLine: true,
                title: const Text('Virat Khatri'),
                subtitle: Text('Khatri@krc.com  \n 987654321'),
                leading: const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('Assets/images/virat.jpg'),
                ),
              ),
              const ListTile(
                title: Text(
                  ' My Unit ',
                  style: TextStyle(fontSize: 17),
                  selectionColor: Colors.black,
                ),
              ), //DrawerHeader
              ListTile(
                leading: const Icon(
                  Icons.book_online,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My Bookings '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.man,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.workspace_premium,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My Tickets '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.video_label,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My Demands '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My Receipts '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.3,
              ),
              const ListTile(
                title: Text(
                  ' Complex ',
                  style: TextStyle(fontSize: 17),
                  selectionColor: Colors.black,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.book_online,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' Contact Us '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.man,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' My FAQs '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications_active_outlined,
                  color: Color.fromARGB(255, 239, 188, 6),
                ),
                title: const Text(' Notifications '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.video_label,
                  color: Color.fromARGB(255, 231, 178, 19),
                ),
                title: const Text(' Upcoming Projects '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => information()));
                  },
                  child: Image.asset('Assets/images/mp1.jpg')),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ' Raheja Sterling, Pune \n',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          '2 & 3 Bed Luxury Homes in Pune, NIBM-Raheja Sterling',
                          style: TextStyle(color: Colors.black),
                        ),
                        const Text(
                          'Pune, NIBM- Raheja',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                      height: 300,
                      padding: EdgeInsets.all(12.0),
                      child: GridView.builder(
                        itemCount: images.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.0,
                                mainAxisSpacing: 20.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Image.asset(
                              images[index],
                              width: 40,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      )),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.amber,
          // ignore: prefer_const_literals_to_create_immutables
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Quick Pay'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.dry_cleaning), label: ' Service Ticket'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: ' Contact Us'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.receipt), label: '  My Project'),
          ],
        ));
  }
}
