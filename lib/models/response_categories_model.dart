// https://app.quicktype.io/

class ResponseCategoriesModel {
  ResponseCategoriesModel({
    this.items,
  });
  List<ItemCategoryModel>? items;
  factory ResponseCategoriesModel.fromJson(List<dynamic> json) =>
      ResponseCategoriesModel(
        items: List<ItemCategoryModel>.from(
            json.map((x) => ItemCategoryModel.fromJson(x))),
      );
}

class ItemCategoryModel {
  ItemCategoryModel({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;
  factory ItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      ItemCategoryModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );
}