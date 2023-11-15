import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail.page.dart';
import 'package:shop/pages/product_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.deepOrange),
        fontFamily: 'Lato',
      ),
      home: ProductOverviewPage(),
      routes: {
        AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductDetailPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
