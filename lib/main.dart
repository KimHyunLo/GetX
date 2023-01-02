import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/my_servide.dart';
import 'package:getx_tutorial/models/messages.dart';
import 'package:getx_tutorial/screens/bottom_sheet_screen.dart';
import 'package:getx_tutorial/screens/dependency_injection_screen.dart';
import 'package:getx_tutorial/screens/dialog_screen.dart';
import 'package:getx_tutorial/screens/locale_screen.dart';
import 'package:getx_tutorial/screens/navigation_screen.dart';
import 'package:getx_tutorial/screens/next_screen.dart';
import 'package:getx_tutorial/screens/reactive_state_screen.dart';

Future<void> main() async {
  await initServices();

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/next/:value',
          page: () => const NextScreen(),
        ),
        GetPage(
          name: '/bottom-sheet',
          page: () => const BottomSheetScreen(),
          // transition overrides the defaultTransition
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: '/dialog',
          page: () => const DialogScreen(),
        ),
        GetPage(
          name: '/navigation',
          page: () => const NavigationScreen(),
        ),
        GetPage(
          name: '/reactive-state',
          page: () => ReactiveStateScreen(),
        ),
        GetPage(
          name: '/locale',
          page: () => const LocaleScreen(),
        ),
        GetPage(
          name: '/dependency-injection',
          page: () => const DependencyInjectionScreen(),
        ),
      ],
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const NotFound(),
      ),
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text('Go to Home'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Future<void> initServices() async {
  print('starting services...');
  await Get.putAsync<MyService>(() async => await MyService());
  print('all services started');
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            // Text(Get.arguments),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/next');
                // Get.toNamed('/next?channel=ChannelName&content=GetX');
                // Get.toNamed('/next/1234');
                Get.toNamed('/???');
              },
              child: const Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bottom-sheet');
              },
              child: const Text('BottomSheet Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/dialog');
              },
              child: const Text('Dialog Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/navigation');
              },
              child: const Text('Navigation Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/reactive-state');
              },
              child: const Text('Reactive State Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/locale');
              },
              child: const Text('Locale Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/dependency-injection');
              },
              child: const Text('Dependency Injection Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'This is from Home Screen');
              },
              child: const Text('Back to Main'),
            ),
          ],
        ),
      ),
    );
  }
}

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Not Found'),
      ),
    );
  }
}
