// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

import 'package:store_app/models/category.dart';

List<Product> productsFromJson(String str) {
  return List<Product>.from(json.decode(str).map((x) {
    // print('data: $x');
    return Product.fromJson(x);
  }));
}

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  DateTime? creationAt;
  DateTime? updatedAt;
  Category? category;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"]!,
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        // creationAt: json["creationAt"] == null
        //     ? null
        //     : DateTime.parse(json["creationAt"]),
        // updatedAt: json["updatedAt"] == null
        //     ? null
        //     : DateTime.parse(json["updatedAt"]),
        // category: json["category"] == null
        //     ? null
        //     : Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": descriptionValues.reverse[description],
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "creationAt": creationAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "category": category?.toJson(),
      };

  // static List<Product> productsFromJson(List prodSnapshot) {
  //   print('data: ${prodSnapshot[1]}');
  //   return prodSnapshot.map((prod) => Product.fromJson(prod)).toList();
  // }
}

enum Name {
  BACON,
  BALL,
  BIKE,
  CAR,
  CHAIR,
  CHEESE,
  CHICKEN,
  CHIPS,
  CLOTHES,
  COMPUTER,
  FISH,
  FURNITURE,
  GLOVES,
  HAT,
  KEYBOARD,
  MOUSE,
  PANTS,
  PIZZA,
  SALAD,
  SAUSAGES,
  SHIRT,
  SHOES,
  SOAP,
  SOUND,
  TABLE,
  TOWELS,
  TUNA
}

final nameValues = EnumValues({
  "Bacon": Name.BACON,
  "Ball": Name.BALL,
  "Bike": Name.BIKE,
  "Car": Name.CAR,
  "Chair": Name.CHAIR,
  "Cheese": Name.CHEESE,
  "Chicken": Name.CHICKEN,
  "Chips": Name.CHIPS,
  "Clothes": Name.CLOTHES,
  "Computer": Name.COMPUTER,
  "Fish": Name.FISH,
  "Furniture": Name.FURNITURE,
  "Gloves": Name.GLOVES,
  "Hat": Name.HAT,
  "Keyboard": Name.KEYBOARD,
  "Mouse": Name.MOUSE,
  "Pants": Name.PANTS,
  "Pizza": Name.PIZZA,
  "Salad": Name.SALAD,
  "Sausages": Name.SAUSAGES,
  "Shirt": Name.SHIRT,
  "Shoes": Name.SHOES,
  "Soap": Name.SOAP,
  "Sound": Name.SOUND,
  "Table": Name.TABLE,
  "Towels": Name.TOWELS,
  "Tuna": Name.TUNA
});

enum Description {
  AS,
  AWESOME,
  A_DESCRIPTION,
  DESCRIPTION_OF_PRODUCT_ONE,
  ERGONOMIC,
  FANTASTIC,
  GENERIC,
  GORGEOUS,
  HANDCRAFTED,
  HANDMADE,
  INCREDIBLE,
  INTELLIGENT,
  KGJYG,
  LICENSED,
  PRACTICAL,
  REFINED,
  RUSTIC,
  SHIRT,
  SHOES,
  SLEEK,
  SMALL,
  TASTY,
  UNBRANDED
}

final descriptionValues = EnumValues({
  "as": Description.AS,
  "Awesome": Description.AWESOME,
  "A description": Description.A_DESCRIPTION,
  "description of product one": Description.DESCRIPTION_OF_PRODUCT_ONE,
  "Ergonomic": Description.ERGONOMIC,
  "Fantastic": Description.FANTASTIC,
  "Generic": Description.GENERIC,
  "Gorgeous": Description.GORGEOUS,
  "Handcrafted": Description.HANDCRAFTED,
  "Handmade": Description.HANDMADE,
  "Incredible": Description.INCREDIBLE,
  "Intelligent": Description.INTELLIGENT,
  "kgjyg": Description.KGJYG,
  "Licensed": Description.LICENSED,
  "Practical": Description.PRACTICAL,
  "Refined": Description.REFINED,
  "Rustic": Description.RUSTIC,
  "shirt": Description.SHIRT,
  "shoes": Description.SHOES,
  "Sleek": Description.SLEEK,
  "Small": Description.SMALL,
  "Tasty": Description.TASTY,
  "Unbranded": Description.UNBRANDED
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
