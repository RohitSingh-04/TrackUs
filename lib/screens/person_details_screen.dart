import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/person.dart';

class PersonDetailsScreen extends StatelessWidget {
  final Person person;

  PersonDetailsScreen({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${person.name}\'s History'),
        backgroundColor: Color.fromARGB(255, 106, 13, 182),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Map section, occupying half of the screen height
          Expanded(
            flex: 1,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: person.locations.isNotEmpty ? person.locations[0] : LatLng(0, 0), // Only showing the first location
                zoom: 12,
              ),
              markers: person.locations.isNotEmpty
                  ? {
                      Marker(
                        markerId: MarkerId('${person.name}_0'),
                        position: person.locations[0], // Only first location on the map
                        infoWindow: InfoWindow(title: person.name),
                      ),
                    }
                  : {},
            ),
          ),
          // ListView for location history, occupying the other half of the screen height
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200], // Background color for the list view section
              child: ListView.builder(
                itemCount: person.locations.length,
                itemBuilder: (context, index) {
                  final location = person.locations[index];
                  return ListTile(
                    leading: Icon(Icons.location_on, color: Colors.purple),
                    title: Text('Location ${index + 1}'),
                    subtitle: Text('Lat: ${location.latitude}, Lng: ${location.longitude}'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
