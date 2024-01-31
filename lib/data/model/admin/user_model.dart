class UserModel {
  final String image;
  final String name;
  final String email;
  final String? type;
  final String? phone;
  final String? address;
  final String? joinDate;
  final int? totalOrder;
  final int? completedOrder;
  final int? cancelledOrder;

  const UserModel({
    required this.image,
    required this.name,
    required this.email,
    this.type,
    this.phone,
    this.address,
    this.joinDate,
    this.totalOrder,
    this.completedOrder,
    this.cancelledOrder,
  });
}
