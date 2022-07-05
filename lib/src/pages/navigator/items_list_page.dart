import 'package:flutter/material.dart';

class ItemsListPage extends StatefulWidget {
  final ValueChanged<String> onItemTapped;

  const ItemsListPage(
      {Key? key, required this.onItemTapped})
      : super(key: key);

  @override
  State<ItemsListPage> createState() => _ItemsListPageState();
}

class _ItemsListPageState extends State<ItemsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          onTap: () => widget.onItemTapped('Item $index'),
          title: Text('Item $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}
