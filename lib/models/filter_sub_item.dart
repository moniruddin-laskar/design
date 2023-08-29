class FilterSubItemModel {
  dynamic id;
  dynamic categoryName;
  dynamic subItemName;

  FilterSubItemModel({
    this.id,
    this.categoryName,
    this.subItemName,
  });

  FilterSubItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    categoryName = json['categoryName'] ?? "";
    subItemName = json['subItemName'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['categoryName'] = categoryName;
    data['subItemName'] = subItemName;
    return data;
  }
}
