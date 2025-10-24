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
}