class AddressModel {
  final String addressLine;
  final String landmark;
  final String pinCode;

  AddressModel({
    required this.addressLine,
    required this.landmark,
    required this.pinCode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      addressLine: json['addressLine'] ?? '',
      landmark: json['landmark'] ?? '',
      pinCode: json['pinCode'] ?? '',
    );
  }
}
