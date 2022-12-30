import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Dialog Title',
                  titleStyle: const TextStyle(fontSize: 20),
                  middleText: 'This is middle text',
                  middleTextStyle: const TextStyle(fontSize: 15),
                  backgroundColor: Colors.purple,
                  radius: 50,
                  // content overlays the middleText
                  content: Row(
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text('Data Loading'),
                      ),
                    ],
                  ),
                  textCancel: 'Cancel',
                  cancelTextColor: Colors.white,
                  textConfirm: 'Confirm',
                  confirmTextColor: Colors.white,
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.green,
                  // cancel overlays the textCancel
                  cancel: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  ),
                  // confirm overlays the textConfirm
                  confirm: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.yellow),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Action-1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Action-2'),
                    ),
                  ],
                  barrierDismissible: false,
                );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
