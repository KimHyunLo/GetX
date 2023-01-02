import 'package:get/get.dart';
import 'package:getx_tutorial/models/student.dart';

class MyController extends GetxController {
  // var student = Student();
  //
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: 'Tom', age: 25).obs;

  void convertToUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  var count = 0.obs;
  void increment() {
    // await Future.delayed(const Duration(seconds: 3));
    count++;
    update(['count']);
  }

  @override
  void onInit() {
    ever(count, (_) => print(count));
    everAll([count], (_) => print(count));
    once(count, (_) => print(count));
    debounce(count, (_) => print('typing has stopped'));
    interval(count, (_) => print('ignore all changes'), time: const Duration(seconds: 3));
    super.onInit();
  }
}
