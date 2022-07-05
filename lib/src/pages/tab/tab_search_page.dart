import 'package:flutter/material.dart';
import 'package:flutter_app/src/shared/constants.dart';

class TabSearchPage extends StatefulWidget {
  const TabSearchPage({Key? key, this.essence}) : super(key: key);

  final String? essence;

  @override
  State<TabSearchPage> createState() => _TabSearchPageState();
}

class _TabSearchPageState extends State<TabSearchPage> {
  @override
  Widget build(BuildContext context) {
    var essence = widget.essence ?? "";

    return Scaffold(
      backgroundColor: kDarkBrandColor,
      appBar: AppBar(
        title: const Text('TabBar Page'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kDefaultIconColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Icon(
                Icons.search,
                color: kDefaultIconColor,
                size: 40.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            child: Text(
              widget.essence ?? "",
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
