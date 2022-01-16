import 'package:flutter/material.dart';
import 'package:practice/screens/explore/explore_page.dart';
import 'package:practice/screens/explore/pages/explore_item1.dart';
import 'package:practice/screens/explore/pages/explore_item2.dart';
import 'package:practice/screens/explore/pages/explore_item3.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'explore',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'explore':
            builder = (BuildContext _) => const ExplorePage();
            break;
          case 'exploreItem1':
            builder = (BuildContext _) => const ExploreItem1();
            break;
          case 'exploreItem2':
            builder = (BuildContext _) => const ExploreItem2();
            break;
          case 'exploreItem3':
            builder = (BuildContext _) => const ExploreItem3();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}