import 'dart:io';

class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

class Method {
  final String name;
  final String imagePath;

  Method({required this.name, required this.imagePath});
}

class Item {
  final String id;
  final String image;
  final String name;
  final String type;
  final Category category;
  final Method method;
  File? resource;
  File? image2;

  Item({
    required this.id,
    required this.image,
    required this.name,
    required this.type,
    required this.category,
    required this.method,
    this.resource,
    this.image2,
  });
}

