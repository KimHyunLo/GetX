import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}',
          ),
          Text(
            'Parameter is ${Get.parameters['value']}',
          ),
        ],
      ),
    );
  }
}
