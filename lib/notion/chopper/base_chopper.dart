import 'package:chopper/chopper.dart';
import 'package:notion_dashboard/notion/chopper/databases_service.dart';

class BaseChopper {
  ChopperClient? client;

  void init(String apiKey) {
    client = ChopperClient(
      baseUrl: Uri.tryParse('https://api.notion.com/v1'),
      services: [
        // Create and pass an instance of the generated service to the client
        DatabasesService.create()
      ],
    );
  }
}
