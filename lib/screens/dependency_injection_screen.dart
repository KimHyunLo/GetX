import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/counter_controller.dart';
import 'package:getx_tutorial/controller/my_servide.dart';

class DependencyInjectionScreen extends StatelessWidget {
  const DependencyInjectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(CounterController(), tag:'instance1', permanent: true);
    // Get.lazyPut(()=>CounterController(), tag: 'instance2', fenix: true);
    // Get.create<CounterController>(()=>CounterController());
    Get.putAsync<CounterController>(() async => await CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Injection'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<MyService>().incrementCounter();
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
