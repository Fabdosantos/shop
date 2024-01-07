class CartItemModel {
  final String id;
  final String productId;
  final String name;
  final int quality;
  final double price;

  CartItemModel(
      {required this.id,
      required this.productId,
      required this.name,
      required this.quality,
      required this.price});
}
