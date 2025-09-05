class FishModel {
  final int id;
  final String name;
  final String image;

  FishModel(
    {
      required this.id,
      required this.name,
      required this.image
    }
  );

  factory FishModel.fromJson(Map<String, dynamic> json) {
    return FishModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}