import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'routes/app_routes.dart';

void main() async {
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(AppRoutes().handler);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Server running on localhost:\${server.port}');
}
