import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/common/app_string.dart';
import 'package:learning_getx/controllers/product_controller.dart';
import 'package:learning_getx/models/product_model.dart';

class ProductListView extends StatelessWidget {
  var productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: GetBuilder<ProductController>(
        init: productController,
        builder: (_) {
          if (productController.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                Product product = productController.productList[index];
                return ListTile(
                  leading: Image.network(product.imageLink),
                  title: Text(product.name),
                );
              });
        },
      ),
    );
  }
}
