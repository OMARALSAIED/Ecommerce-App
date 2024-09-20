class ItemsModel {
  int? itemID;
  String? itemNameEn;
  int? itemPrice;
  int? itemCount;
  String? itemCreationDate;
  int? categoiesID;
  String? categoiesNameEn;
  String? categoryCreationDate;

  ItemsModel(
      {this.itemID,
      this.itemNameEn,
      this.itemPrice,
      this.itemCount,
      this.itemCreationDate,
      this.categoiesID,
      this.categoiesNameEn,
      this.categoryCreationDate});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemID = json['item_ID'];
    itemNameEn = json['item_name_en'];
    itemPrice = json['item_price'];
    itemCount = json['item_count'];
    itemCreationDate = json['item_creation_date'];
    categoiesID = json['categoies_ID'];
    categoiesNameEn = json['categoies_name_en'];
    categoryCreationDate = json['category_creation_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_ID'] = this.itemID;
    data['item_name_en'] = this.itemNameEn;
    data['item_price'] = this.itemPrice;
    data['item_count'] = this.itemCount;
    data['item_creation_date'] = this.itemCreationDate;
    data['categoies_ID'] = this.categoiesID;
    data['categoies_name_en'] = this.categoiesNameEn;
    data['category_creation_date'] = this.categoryCreationDate;
    return data;
  }
}