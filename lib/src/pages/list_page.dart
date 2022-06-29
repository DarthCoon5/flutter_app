import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _InfiniteListPageState();
}

class _InfiniteListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black45,
        child: const Center(
          child: Text('RAIN',
              style: TextStyle(
                  color: Colors.blue, backgroundColor: Colors.indigo)),
        ));
  }
}
