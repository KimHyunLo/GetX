import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/common_module/AppColor.dart';
import 'package:getx_tutorial/common_module/AppString.dart';
import 'package:getx_tutorial/product_module/views/product_list_view.dart';

Future<void> main() async {
  runApp(
    GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      home: ProductiveListView(),
    ),
  );
}
