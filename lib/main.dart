import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/common/app_color.dart';
import 'package:learning_getx/common/app_string.dart';
import 'package:learning_getx/widgets/product_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.greenAccentColor,
      ),
      home: ProductListView(),
    );
  }
}



