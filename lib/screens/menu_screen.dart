import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATTENDANCE'),
        backgroundColor: Color.fromARGB(255, 106, 13, 182),
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 106, 13, 182),
              ),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Timer'),
              onTap: () {
                // Navigate to Timer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Attendance'),
              onTap: () {
                // Navigate to Attendance Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Activity'),
              onTap: () {
                // Navigate to Activity Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Timesheet'),
              onTap: () {
                // Navigate to Timesheet Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Report'),
              onTap: () {
                // Navigate to Report Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Job site'),
              onTap: () {
                // Navigate to Job site Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Team'),
              onTap: () {
                // Navigate to Team Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Time off'),
              onTap: () {
                // Navigate to Time off Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Schedules'),
              onTap: () {
                // Navigate to Schedules Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Request to join orgainsation'),
              onTap: () {
                // Navigate to Request to join orgainsation Screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Navigate to Logout Screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('bas map hii to lagana hai!'),
      ),
    );
  }
}
