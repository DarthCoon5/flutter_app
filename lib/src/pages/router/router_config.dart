class AppRouteConfig {
  final int? id;
  final String? selectedItem;
  final String? selectedRoute;
  final bool show404;

  AppRouteConfig.list()
      : selectedRoute = null,
        selectedItem = null,
        show404 = false,
        id = null;

  AppRouteConfig.newRoute(this.selectedRoute)
      : selectedItem = null,
        id = null,
        show404 = false;

  AppRouteConfig.nestedItemRoute(this.selectedRoute, this.selectedItem, this.id)
      : show404 = false;

  AppRouteConfig.details(this.selectedItem, this.id)
      : selectedRoute = null,
        show404 = false;

  AppRouteConfig.error()
      : selectedRoute = null,
        selectedItem = null,
        show404 = true,
        id = null;


  bool get isListPage => selectedItem == null && selectedRoute == null;

  bool get isDetailsPage => selectedItem != null && selectedRoute == null;

  bool get isNewPage => selectedRoute != null && selectedItem == null;

  bool get isNestedPage => selectedRoute != null && selectedItem != null;
}
