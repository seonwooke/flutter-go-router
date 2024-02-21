import 'package:go_router/go_router.dart';

import '../view/home_view.dart';
import '../view/example1_view.dart';
import '../view/example2_view.dart';
import '../view/example3_view.dart';
import 'app_path.dart';

class AppRoute {
  AppRoute._privateConstructor();
  static final AppRoute _instance = AppRoute._privateConstructor();
  static AppRoute get instance => _instance;

  final GoRouter view = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
        routes: [
          GoRoute(
            path: AppPath.instance.example1Path,
            name: AppPath.instance.example1Path,
            builder: (context, state) => const Example1View(),
          ),
          GoRoute(
            path: AppPath.instance.example2Path,
            name: AppPath.instance.example2Path,
            builder: (context, state) => const Example2View(),
            routes: [
              GoRoute(
                path: AppPath.instance.example3Path,
                name: AppPath.instance.example3Path,
                builder: (context, state) => const Example3View(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
