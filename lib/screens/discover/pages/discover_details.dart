import 'package:flutter/material.dart';
import 'package:practice/screens/discover/discover_page.dart';
import 'package:practice/screens/discover/model/discovery_model.dart';

class DiscoveryDetails extends StatefulWidget {
  const DiscoveryDetails({Key? key}) : super(key: key);

  @override
  _DiscoveryDetailsState createState() => _DiscoveryDetailsState();
}

class _DiscoveryDetailsState extends State<DiscoveryDetails> {
  late DiscoveryDetailsArguments arguments;
  DiscoveryModel? discover;

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      arguments = ModalRoute.of(context)?.settings.arguments
          as DiscoveryDetailsArguments;
      Future.delayed(const Duration(seconds: 1), () {
        discover =
            discoveryData.firstWhere((element) => element.id == arguments.id);
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(),
            body: Center(
              child: discover == null ? const CircularProgressIndicator() : Text(
                discover?.title ?? "",
                style: const TextStyle(fontSize: 30),
              ),
            ),
          );
  }
}
