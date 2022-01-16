import 'package:flutter/material.dart';
import 'package:practice/screens/discover/discover.dart';
import 'package:practice/screens/explore/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Nested Tab Navigation Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Explore',
                ),
                Tab(
                  text: 'Discover',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Explore(),
              Discover(),
            ],
          )),
    );
  }
}
