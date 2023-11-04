import 'package:go_router/go_router.dart';
import 'package:wallet/views/home.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeView(),
  ),
]);
