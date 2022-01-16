import 'package:flutter/material.dart';
import 'package:practice/screens/discover/discover_page.dart';
import 'package:practice/screens/discover/pages/discover_details.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'discover',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'discover':
            builder = (BuildContext _) => const DiscoverPage();
            break;
          case 'discover-details':
            builder = (BuildContext _) => const DiscoveryDetails();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
