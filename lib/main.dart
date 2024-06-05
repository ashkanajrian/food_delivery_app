import 'package:barber_shop/controllers/cart_controller.dart';
import 'package:barber_shop/controllers/popular_product_controller.dart';
import 'package:barber_shop/controllers/recommended_product_controller.dart';
import 'package:barber_shop/pages/cart/cart_page.dart';
import 'package:barber_shop/pages/food/popular_food_detail.dart';
import 'package:barber_shop/pages/food/recommended_food_detail.dart';
import 'package:barber_shop/pages/home/food_page_body.dart';
import 'package:barber_shop/pages/home/main_food_page.dart';
import 'package:barber_shop/pages/splash/splash_page.dart';
import 'package:barber_shop/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  Get.find<CartController>().getCartData();
  runApp(
    GetBuilder<PopularProductController>(builder: (_){
      return GetBuilder<RecommendedProductController>(builder: (_){
         return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            // home: SplashScreen(),
            initialRoute: RouteHelper.getSplashPage(),
            getPages: RouteHelper.routes,
        );
      });
    })
  );
}

