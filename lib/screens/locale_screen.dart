import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/lang_controller.dart';

class LocaleScreen extends StatelessWidget {
  const LocaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LangController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locale'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr),
            ElevatedButton(
              onPressed: () {
                Get.find<LangController>().changeLanguage('en', 'US');
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<LangController>().changeLanguage('ko', 'KR');
              },
              child: const Text('Korean'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<LangController>().changeLanguage('fr', 'FR');
              },
              child: const Text('French'),
            ),
          ],
        ),
      ),
    );
  }
}
