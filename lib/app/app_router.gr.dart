// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DashboardRouteArgs>(
          orElse: () => DashboardRouteArgs(
              notionApiKey: pathParams.optString('notionApiKey')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DashboardPage(
          key: args.key,
          notionApiKey: args.notionApiKey,
        ),
      );
    }
  };
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    Key? key,
    String? notionApiKey,
    List<PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(
            key: key,
            notionApiKey: notionApiKey,
          ),
          rawPathParams: {'notionApiKey': notionApiKey},
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<DashboardRouteArgs> page =
      PageInfo<DashboardRouteArgs>(name);
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    this.key,
    this.notionApiKey,
  });

  final Key? key;

  final String? notionApiKey;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key, notionApiKey: $notionApiKey}';
  }
}
