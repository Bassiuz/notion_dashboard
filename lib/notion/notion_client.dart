import 'package:notion_dashboard/notion/chopper/base_chopper.dart';
import 'package:notion_dashboard/notion/chopper/databases_service.dart';

class NotionClient {
  NotionClient._();
  static final NotionClient _instance = NotionClient._();
  static NotionClient get instance => _instance;

  void init(String apiKey) {
    apiKey = apiKey;
    chopper = BaseChopper()..init(apiKey);
  }

  String? apiKey;
  BaseChopper? chopper;

  DatabasesService get databases => chopper!.client!.getService<DatabasesService>();
}
