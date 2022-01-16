import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed("exploreItem1");
          },
          child: const Text(
            "explore Item 1",
            style: TextStyle(color: Colors.black),
          ),
        )),
        Flexible(
            child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed("exploreItem2");
          },
          child: const Text(
            "explore Item 2",
            style: TextStyle(color: Colors.black),
          ),
        )),
        Flexible(
            child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed("exploreItem3");
          },
          child: const Text(
            "explore Item 3",
            style: TextStyle(color: Colors.black),
          ),
        )),
      ],
    );
  }
}

