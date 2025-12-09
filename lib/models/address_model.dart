class AddressModel {
  final String name;
  final String addressLine;
  final String landmark;
  final String pinCode;

  AddressModel({
    required this.name,
    required this.addressLine,
    required this.landmark,
    required this.pinCode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      name: json['name'] ?? '',
      addressLine: json['addressLine'] ?? '',
      landmark: json['landmark'] ?? '',
      pinCode: json['pinCode'] ?? '',
    );
  }
}
