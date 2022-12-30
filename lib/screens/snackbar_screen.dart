import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'SnackBar Title', 'This will be SnackBar Message',
                  snackPosition: SnackPosition.BOTTOM,
                  // titleText overlays the title
                  titleText: const Text('Another Title'),
                  // messageText overlays the message
                  messageText: const Text(
                    'Another Message',
                    style: TextStyle(color: Colors.purple),
                  ),
                  // colorText only works on title and message
                  colorText: Colors.red,
                  backgroundColor: Colors.grey,
                  borderRadius: 30,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  maxWidth: 300,
                  animationDuration: const Duration(milliseconds: 800),
                  forwardAnimationCurve: Curves.bounceInOut,
                  reverseAnimationCurve: Curves.bounceInOut,
                  // backgroundGradient overlays the backgroundColor
                  backgroundGradient: const LinearGradient(
                    colors: [Colors.red, Colors.yellow],
                  ),
                  // While using borderColor remember to use borderWidth also
                  borderColor: Colors.green,
                  borderWidth: 2,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(30, 50),
                      spreadRadius: 20,
                      blurRadius: 8,
                    ),
                  ],
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  duration: const Duration(milliseconds: 3000),
                  icon: const Icon(Icons.person, color: Colors.white),
                  shouldIconPulse: false,
                  leftBarIndicatorColor: Colors.orange,
                  mainButton: TextButton(
                    onPressed: () {},
                    child: const Text('Retry'),
                  ),
                  onTap: (value) {
                    print('clicked');
                  },
                  overlayBlur: 2,
                  // overlayColor overlays the overlayBlur
                  overlayColor: Colors.grey,
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.orange,
                  progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  // SnackBarStatus: OPEN, CLOSED, OPENING, CLOSING
                  snackbarStatus: (value) {
                    print(value);
                  },
                  userInputForm: Form(
                    child: Row(children: const [Expanded(child: TextField())]),
                  ),
                );
              },
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
