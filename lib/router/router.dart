import 'package:go_router/go_router.dart';
import 'package:transqr/view/home_view.dart';
import 'package:transqr/view/scan_view.dart';
import 'package:transqr/view/send_view.dart';

final router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => Main()),
  GoRoute(path: "/scan", builder: (context, state) => const ScanView()),
  GoRoute(path: "/send", builder: (context, state) => const SendView())
]);
