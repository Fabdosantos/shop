import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/orders_page.dart';
import 'package:shop/pages/product_detail.page.dart';
import 'package:shop/pages/product_overview_page.dart';
import 'package:shop/utils/app_routes.dart';

import 'pages/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            backgroundColor: Colors.white,
            cardColor: Colors.purple,
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
          ),
          primaryTextTheme: const TextTheme(
            headlineMedium: TextStyle(color: Colors.white),
          ),
        ),
        // home: const ProductOverviewPage(),
        routes: {
          AppRoutes.HOME: (ctx) => const ProductOverviewPage(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductDetailPage(),
          AppRoutes.CART: (ctx) => const CartPage(),
          AppRoutes.ORDERS: (ctx) => const OrdersPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
