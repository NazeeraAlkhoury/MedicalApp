class OrderModel {
  final String id;
  final String name;
  final String? type;
  final double price;
  final double? newPrice;
  final String? image;
  final String? state;
  final String? date;
  final int? discount;

  OrderModel({
    required this.id,
    required this.name,
    this.type,
    required this.price,
    this.newPrice,
    this.image,
    this.state,
    this.date,
    this.discount,
  });
}
