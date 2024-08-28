import 'package:go_router/go_router.dart';
import 'package:transqr/view/home_view.dart';

final router =
    GoRouter(routes: [GoRoute(path: "/", builder: (context, state) => Main())]);
