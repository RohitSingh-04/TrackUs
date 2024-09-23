import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/person.dart';

// Constants for persons and their locations
final List<Person> persons = [
  Person(
    name: 'John Doe',
    imagePath: 'assets/person1.png',
    locations: [
      LatLng(39.42796133580664, -110.085749655962),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Karan Aujla',
    imagePath: 'assets/person2.png',
    locations: [
      LatLng(100.42796133580664, -120.085749655962),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Honey Singh',
    imagePath: 'assets/person3.png',
    locations: [
      LatLng(37.42796133580664, -122.085749655962),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Badshah',
    imagePath: 'assets/person4.png',
    locations: [
      LatLng(37.42796133580664, -122.085749655962),
      // Add more LatLng points as needed
    ],
  ),
  // Add more Person instances as needed
];
