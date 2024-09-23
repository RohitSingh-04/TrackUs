import 'package:flutter/material.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  TextEditingController searchController = TextEditingController();

  void onSearch(String query) {
    // Implement your search logic here, e.g., filter members
    print("Searching for: $query");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        backgroundColor: const Color.fromARGB(255, 106, 13, 182),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Search bar below the AppBar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Members...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onSubmitted: onSearch, // When "Enter" or "Return" is pressed
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('kuch buttons aaynge yaha par'),
            ),
          ),
        ],
      ),
    );
  }
}
