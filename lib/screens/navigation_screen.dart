import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/main.dart';

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
          onPressed: () async {
            // Get.to(
            //   () => const _HomeScreen(),
            //   fullscreenDialog: true,
            //   transition: Transition.zoom,
            //   duration: const Duration(milliseconds: 2000),
            //   curve: Curves.bounceInOut,
            //   arguments: 'Data from Main',
            // );
            var data = await Get.to(() => const HomeScreen());
            print('The Received data is $data');
          },
          child: const Text('Go To HomeScreen'),
        ),
      ),
    );
  }
}


