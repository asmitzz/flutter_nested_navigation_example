import 'package:flutter/material.dart';

class ExploreItem1 extends StatelessWidget {
  const ExploreItem1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
       body: const Center(child: Text("Explore Item 1"),),
    );
  }
}