import 'package:chopper/chopper.dart';

part 'databases_service.chopper.dart';

@ChopperApi(baseUrl: '/databases')
abstract class DatabasesService extends ChopperService {
  static DatabasesService create([ChopperClient? client]) => _$DatabasesService(client);

  @Get(path: '/{databaseId}/query')
  Future<Response> queryDatabase({
    @Path('databaseId') required String databaseId,
    @Query('filter') required String filter,
  });
}
