import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notion_dashboard/dashboard/view/dashboard_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    /// routes go here
    AutoRoute(page: DashboardRoute.page),

    AutoRoute(page: DashboardRoute.page, path: '/dashboard/:notionApiKey'),
  ];
}
