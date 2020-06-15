import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    print("created");
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("data"),);
  }
}
