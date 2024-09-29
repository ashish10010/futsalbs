
class LapanganModel {
  final String id;
  final String name;
  final String fieldtype;
  final String imageUrl;
  final String description;
  final double rating;
  final int price;

  LapanganModel({
    required this.id,
    this.name = '',
    this.fieldtype = '',
    this.imageUrl = '',
    this.description = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory LapanganModel.fromJson(String id, Map<String, dynamic> json) {
    return LapanganModel(
      id: id,
      name: json['name'],
      fieldtype: json['jenis'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      rating: json['rating'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'jenis': fieldtype,
      'imageUrl': imageUrl,
      'description': description,
      'rating': rating,
      'price': price,
    };
  }
}
