class CartModel {
  final String name;
  final String imageUrl;
  final double price;

  CartModel({
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: (json['price'] as num).toDouble(),
    );
  }
}