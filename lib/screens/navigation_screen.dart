import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              const _HomeScreen(),
              fullscreenDialog: true,
              transition: Transition.zoom,
              duration: const Duration(milliseconds: 2000),
              curve: Curves.bounceInOut,
            );
          },
          child: const Text('Go To HomeScreen'),
        ),
      ),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This is Home Screen'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(const NavigationScreen());
              },
              child: const Text('Back to Main'),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
