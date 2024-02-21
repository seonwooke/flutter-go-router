import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Example1View extends StatelessWidget {
  const Example1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GoRouter.of(context).routeInformationProvider.value.uri.toString(),
        ),
      ),
      body: const Center(child: Text('Example1 View')),
    );
  }
}
