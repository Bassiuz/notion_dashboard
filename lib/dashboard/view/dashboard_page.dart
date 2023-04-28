import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notion_dashboard/notion/notion_client.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, @PathParam('notionApiKey') this.notionApiKey});

  final String? notionApiKey;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late NotionClient _notionClient;
  String result = 'nothing loaded yet';

  @override
  void initState() {
    super.initState();
    _notionClient = NotionClient.instance;
    _notionClient.init(widget.notionApiKey ?? '');

    _notionClient.databases.queryDatabase(databaseId: '975397aaa1d54289a46d053a24aeaaa0', filter: '{}').then((value) {
      print(value);

      setState(() {
        result = value.body.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.notionApiKey ?? 'Hello World'),
          Text(result),
        ],
      ),
    );
  }
}
