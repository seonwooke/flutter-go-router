import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_path.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.goNamed(AppPath.instance.example1Path);
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'Example1 View',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                context.goNamed(AppPath.instance.example2Path);
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'Example2 View',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
