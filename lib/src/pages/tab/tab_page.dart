import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/tab/sun_tab_page.dart';
import 'package:flutter_app/src/pages/tab/tab_search_page.dart';
import 'package:flutter_app/src/shared/constants.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
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
            actions: <Widget>[
              IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: kDefaultIconColor,
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const TabSearchPage(essence: 'Cupertino Page Route')))),
              IconButton(
                icon: const Icon(
                  Icons.calculate,
                  color: kDefaultIconColor,
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabSearchPage(essence: 'Material Page Route'))),
              )
            ],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.cloud_outlined),
                  text: 'tab1',
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                  text: 'tab2',
                ),
                Tab(
                  icon: Icon(Icons.brightness_5_sharp),
                  text: 'tab3',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("It's cloudy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              SunTabPage()
            ],
          ),
        ));
  }
}
