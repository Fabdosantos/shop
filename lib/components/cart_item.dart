import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

class CartItem extends StatelessWidget {
  final CartItemModel cartItem;
  const CartItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(cartItem.name);
  }
}
