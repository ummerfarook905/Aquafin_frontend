class OrderModel {
  final String id;
  final String date;
  final double total;
  final String status;
  final List<String> items;

  OrderModel({
    required this.id,
    required this.date,
    required this.total,
    required this.status,
    required this.items,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json["id"],
      date: json["date"],
      total: (json["total"] as num).toDouble(),
      status: json["status"],
      items: List<String>.from(json["items"]),
    );
  }
}