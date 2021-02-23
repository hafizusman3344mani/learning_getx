import 'package:get/get.dart';
import 'package:learning_getx/models/product_model.dart';
import 'package:learning_getx/services/api_service.dart';

class ProductController extends GetxController {
  bool isLoading = true;
  List<Product> productList = List<Product>();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading = true;
      var products = await ApiService.fetchProducts();

      if (products != null) {
        productList.assignAll(products);
      }
    } catch (e) {} finally {
      isLoading = false;
    }
    update();
  }
}
