import 'package:barber_shop/data/api/api_client.dart';
import 'package:barber_shop/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService{

  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }

}