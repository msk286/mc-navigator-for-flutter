library;

import 'package:flutter/widgets.dart';
import 'package:mc_navigator/src/interfaces/page_route_contract.dart';
import 'package:mc_navigator/src/navigator_actions.dart';

import 'src/interfaces/nav_short_method_contract.dart';
import 'src/models/mc_page_route.dart';

export 'src/models/dialog_route_model.dart';

mixin NavMixin implements NavShortMethodContract, PageRouteContract {
  @override
  NavigatorActions navBy(BuildContext context, {ValueChanged<dynamic>? onPop}) {
    return NavigatorActions.byRoot(context, this, onPop);
  }

  @override
  NavigatorActions navByToRoot(BuildContext context, {ValueChanged<dynamic>? onPop}) {
    return NavigatorActions.noneRoot(context, this, onPop);
  }
}

base class McNavigationRoutes extends McPageRoute {
  const McNavigationRoutes(super.routeSlug, [super.routeDialog]);
}
