
import 'package:shelf_router/shelf_router.dart';
import '../services/auth_service.dart';
import '../services/job_service.dart';
import '../services/application_service.dart';

class AppRoutes {
  Handler get handler {
    final router = Router();

    router.mount('/auth/', AuthService().router);
    router.mount('/jobs/', JobService().router);
    router.mount('/applications/', ApplicationService().router);

    return router;
  }
}
