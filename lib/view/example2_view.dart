import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_path.dart';

class Example2View extends StatelessWidget {
  const Example2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GoRouter.of(context).routeInformationProvider.value.uri.toString(),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            context.goNamed(AppPath.instance.example3Path);
          },
          child: Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text(
                'Example3 View',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
