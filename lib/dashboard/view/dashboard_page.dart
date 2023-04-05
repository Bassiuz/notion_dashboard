import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, @PathParam('notionApiKey') this.notionApiKey});

  final String? notionApiKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(notionApiKey ?? 'Hello World'));
  }
}
