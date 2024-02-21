import 'package:flutter/material.dart';

import 'router/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: false),
      // routerConfig: AppRoute.instance.view,
      /// route의 정보를 전달
      routeInformationProvider: AppRoute.instance.view.routeInformationProvider,

      /// URI 등 go router에서 사용할 수 있는 형태로 파싱 해주는 함수
      routeInformationParser: AppRoute.instance.view.routeInformationParser,

      /// 위에서 파싱된 값으로 어떤 페이지를 보여줄지 정하는 함수
      routerDelegate: AppRoute.instance.view.routerDelegate,
    );
  }
}
