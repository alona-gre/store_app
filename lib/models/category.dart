import 'dart:convert';

class Category {
  int? id;
  String? name;
  String? image;
  DateTime? creationAt;
  DateTime? updatedAt;

  Category({
    this.id,
    this.name,
    this.image,
    this.creationAt,
    this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );
}

List<Category> categoriesFromJson(String str) {
  return List<Category>.from(json.decode(str).map((x) {
    // print('data: $x');
    return Category.fromJson(x);
  }));
}
