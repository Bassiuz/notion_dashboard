// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'databases_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DatabasesService extends DatabasesService {
  _$DatabasesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DatabasesService;

  @override
  Future<Response<dynamic>> queryDatabase({
    required String databaseId,
    required String filter,
  }) {
    final Uri $url = Uri.parse('/databases/${databaseId}/query');
    final Map<String, dynamic> $params = <String, dynamic>{'filter': filter};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
