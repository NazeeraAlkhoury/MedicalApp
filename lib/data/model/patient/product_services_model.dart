class ProductServicesModel {
  final int id;
  final String name;
  final String age;
  final String type;
  final double price;
  final double? newPrice;
  final String image;
  final String? state;

  ProductServicesModel({
    required this.id,
    required this.name,
    required this.age,
    required this.type,
    required this.price,
    this.newPrice,
    required this.image,
     this.state,
  });
}
