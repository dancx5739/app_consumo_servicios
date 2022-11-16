// https://app.quicktype.io/

class ResponseCategoriesModel {
    ResponseCategoriesModel({
        this.id,
        this.name,
        this.image,
    });

    int? id;
    String? name;
    String? image;

    factory ResponseCategoriesModel.fromJson(Map<String, dynamic> json) => ResponseCategoriesModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
    };
}