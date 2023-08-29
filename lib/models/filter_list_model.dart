import 'package:design/models/filter_sub_item.dart';

class FilterListModel {
  dynamic id;
  dynamic categoryName;
  List<FilterSubItemModel>? subCategory;

  FilterListModel({
    this.id,
    this.categoryName,
    this.subCategory,
  });

  FilterListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    categoryName = json['categoryName'] ?? "";
    if (json['subCategory'] != null) {
      subCategory = <FilterSubItemModel>[];
      json['subCategory'].forEach((v) {
        subCategory!.add(new FilterSubItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['categoryName'] = categoryName;
    if (this.subCategory != null) {
      data['subCategory'] = this.subCategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
