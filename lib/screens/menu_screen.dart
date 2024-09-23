import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'member_screen.dart';
import '../utils/constants.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool showMemberBar = true;
  late GoogleMapController mapController;

  // List of locations (latitude, longitude, and image path)
  final List<Map<String, dynamic>> locations = persons
    .map((person) {
      if (person.locations.isNotEmpty) {
        return {
          'lat': person.locations[0].latitude,
          'lng': person.locations[0].longitude,
          'image': person.imagePath,
        };
      }
      return null; // Handle the case where no locations exist
    })
    .whereType<Map<String, dynamic>>() // Filter out null values
    .toList();

  final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _loadMarkers();
  }

  // Load markers for the map
  void _loadMarkers() {
    setState(() {
      for (var location in locations) {
        _markers.add(
          Marker(
            markerId: MarkerId(location['lat'].toString()),
            position: LatLng(location['lat'], location['lng']),
            icon: BitmapDescriptor.defaultMarker, // Custom marker can be used
            onTap: () {
              // Handle marker tap if needed
            },
          ),
        );
      }
    });
  }

  // On map created
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

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
      body: Column(
        children: [
          // Conditional rendering for the "Members" bar
          if (showMemberBar)
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.group, color: Colors.black),
                  const SizedBox(width: 10),
                  const Text(
                    'Members',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      // Navigate to MemberScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MemberScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          // Map Widget
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.7749, -122.4194), // Initial map center
                zoom: 10,
              ),
              markers: _markers,
            ),
          ),
          // Bottom bar with text
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'abhi yaha kuch aayga',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
