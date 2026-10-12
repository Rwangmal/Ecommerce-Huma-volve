

import 'categoriesModels.dart';

class productsModels {
  int? id;
  String? title;
  String? slug;
  int? price;
  String? description;
  categoriesModels? category;
  List<String>? images;
  String? creationAt;
  String? updatedAt;

  productsModels(
      {this.id,
        this.title,
        this.slug,
        this.price,
        this.description,
        this.category,
        this.images,
        this.creationAt,
        this.updatedAt});

  productsModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    price = json['price'];
    description = json['description'];
    category = json['category'] != null
        ? new categoriesModels.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['price'] = this.price;
    data['description'] = this.description;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['images'] = this.images;
    data['creationAt'] = this.creationAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}



