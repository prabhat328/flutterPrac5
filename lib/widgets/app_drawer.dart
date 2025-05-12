import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const AppDrawer({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage('https://mca.spit.ac.in/wp-content/uploads/2022/12/cropped-logo-removebg-preview-1.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'MCA Department',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Faculty Information'),
            selected: currentIndex == 0,
            onTap: () {
              onItemTapped(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.visibility),
            title: const Text('Vision & Mission'),
            selected: currentIndex == 1,
            onTap: () {
              onItemTapped(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            selected: currentIndex == 2,
            onTap: () {
              onItemTapped(2);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('Department Website'),
            selected: currentIndex == 3,
            onTap: () {
              onItemTapped(3);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Feedback Form'),
            selected: currentIndex == 4,
            onTap: () {
              onItemTapped(4);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
