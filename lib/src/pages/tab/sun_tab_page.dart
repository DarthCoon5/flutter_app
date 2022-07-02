import 'package:flutter/material.dart';

class SunTabPage extends StatefulWidget {
  const SunTabPage({Key? key}) : super(key: key);

  @override
  State<SunTabPage> createState() => _InfiniteListPageState();
}

class _InfiniteListPageState extends State<SunTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amberAccent,
        child: const Center(
          child: Text('SUNNY',
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w800)),
        ));
  }
}
