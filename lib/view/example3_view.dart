import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Example3View extends StatelessWidget {
  const Example3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GoRouter.of(context).routeInformationProvider.value.uri.toString(),
        ),
      ),
      body: const Center(child: Text('Example3 View')),
    );
  }
}
