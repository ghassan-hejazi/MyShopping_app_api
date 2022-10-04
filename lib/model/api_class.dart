// ignore_for_file: camel_case_types

import 'dart:convert';
import 'package:http/http.dart' as http;

class Products {
  final int id;
  final String title;
  final String description;
  final int price;
  final List<dynamic> images;

  const Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.images,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'],
        images: (json['images'] as List<dynamic>));
  }
}

class Categories {
  final int id;
  final String name;

  const Categories({
    required this.id,
    required this.name,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['id'],
      name: json['name'],
    );
  }
}

Future<List<Products>> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);

    return (jsonResponse as List<dynamic>)
        .map((element) => Products.fromJson(element))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<Products>> fetchProductByCategery(int id) async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories/$id/products'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);

    return (jsonResponse as List<dynamic>)
        .map((element) => Products.fromJson(element))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<Categories>> getCategoriesFromApi() async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/categories'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);

    return (jsonResponse as List<dynamic>)
        .map((element) => Categories.fromJson(element))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}
