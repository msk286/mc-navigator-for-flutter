import 'package:recase/recase.dart';

import 'dialog_route_model.dart';

base class McPageRoute {
  final String _routeSlug;
  final DialogRouteModel? routeDialog;

  const McPageRoute(String routeSlug, [this.routeDialog]) : _routeSlug = routeSlug;

  String get routeSlug => _routeSlug;

  String get title => _routeSlug.titleCase;

  bool get isFullscreenDialog => routeDialog?.isFullscreenDialog ?? false;

  bool get isDismissible => routeDialog?.isDismissible ?? false;

  static McPageRoute root = McPageRoute('/');
}
