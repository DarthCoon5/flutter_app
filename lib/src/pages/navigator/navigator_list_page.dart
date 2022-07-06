import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/router/router_delegate.dart';

class NavigatorListPage extends StatefulWidget {
  const NavigatorListPage({Key? key}) : super(key: key);

  @override
  State<NavigatorListPage> createState() => _NavigatorListPageState();
}

class _NavigatorListPageState extends State<NavigatorListPage> {
  String? _selectedItem;
  bool show404 = false;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
          key: const ValueKey('ItemListScreen'),
          child: ItemsListPage(
            onItemTapped: _handleItemTapped,
          ),
        )
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
