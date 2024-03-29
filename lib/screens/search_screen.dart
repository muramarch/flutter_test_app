import 'package:flutter/material.dart';
import 'package:test_app/widgets/textFields.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Search',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            LoginTextField(
              innerText: 'Search all photos',
              controller: _searchController,
            ),
          ],
        ),
      ),
    );
  }
}
