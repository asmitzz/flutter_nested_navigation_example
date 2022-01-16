import 'package:flutter/material.dart';
import 'package:practice/screens/discover/model/discovery_model.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: discoveryData.length,
        itemBuilder: (context, index) => Card(
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      discoveryData[index].title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("discover-details",
                              arguments: DiscoveryDetailsArguments(
                                  id: discoveryData[index].id));
                        },
                        child: const Text("Visit Page"))
                  ],
                ),
              ),
            ));
  }
}

class DiscoveryDetailsArguments {
  final int id;
  DiscoveryDetailsArguments({required this.id});
}
