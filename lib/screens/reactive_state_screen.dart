import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/my_controller.dart';

class ReactiveStateScreen extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  ReactiveStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive State Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              id: 'count',
              builder: (controller) {
                return Text('The value is ${myController.count} - unique');
              },
            ),
            GetBuilder<MyController>(
              builder: (controller) {
                return Text('The value is ${myController.count}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text('increase'),
            ),
            GetX<MyController>(
              builder: (controller) {
                return Text('The value is ${myController.count}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text('increase'),
            ),
            Obx(
              () => Text('name: ${myController.student.value.name}'),
            ),
            ElevatedButton(
              onPressed: () {
                myController.convertToUpperCase();
              },
              child: const Text('Upper'),
            ),
          ],
        ),
      ),
    );
  }
}
