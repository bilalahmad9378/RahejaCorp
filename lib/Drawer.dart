import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            ListTile(
              isThreeLine: true,
              title: Text('Virat Khatri'),
              subtitle: Text('Khatri@krc.com  \n 987654321'),
              leading: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/virat.jpg'),
              ),
            ),
            ListTile(
              title: const Text(
                ' My Unit ',
                selectionColor: Colors.black,
              ),
              leading: Icon(
                Icons.circle,
                size: 10,
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
              leading: Icon(Icons.man),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My Tickets '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' My Demands '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' My Receipts '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
            Row(
              children: [
                Text(
                  'Complex',
                )
              ],
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
              leading: Icon(Icons.man),
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
              leading: const Icon(Icons.video_label),
              title: const Text(' Upcoming Projects '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ); //Deawer
  }
}
