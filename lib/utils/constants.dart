import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/person.dart';

// Constants for persons and their locations
final List<Person> persons = [
  Person(
    name: 'John Doe',
    imagePath: 'assets/person1.png',
    locations: [
      LatLng(28.948457, 79.905233),
      LatLng(28.939879, 79.899726),
      LatLng(28.931441, 79.932740),
      LatLng(28.972021, 79.927961),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Karan Aujla',
    imagePath: 'assets/person2.png',
    locations: [
      LatLng(28.946411, 79.920734),
      LatLng(28.932961, 79.926703),
      LatLng(28.955327, 79.933427),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Honey Singh',
    imagePath: 'assets/person3.png',
    locations: [
      LatLng(28.945799, 79.913506),
      // Add more LatLng points as needed
    ],
  ),
  Person(
    name: 'Badshah',
    imagePath: 'assets/person4.png',
    locations: [
      LatLng(28.955221, 79.908820),
      LatLng(29.001264, 79.927685),
      // Add more LatLng points as needed
    ],
  ),
  // Add more Person instances as needed
];
