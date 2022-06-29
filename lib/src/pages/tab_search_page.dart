import 'package:flutter/material.dart';
import 'package:flutter_app/src/shared/constants.dart';

class TabSearchPage extends StatefulWidget {
  const TabSearchPage({Key? key}) : super(key: key);

  @override
  State<TabSearchPage> createState() => _TabSearchPageState();
}

class _TabSearchPageState extends State<TabSearchPage> {
  @override
  Widget build(BuildContext context) {
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
      body: const Center(
        child: Icon(
          Icons.search,
          color: kDefaultIconColor,
          size: 40.0,
        ),
      ),
    );
  }
}
