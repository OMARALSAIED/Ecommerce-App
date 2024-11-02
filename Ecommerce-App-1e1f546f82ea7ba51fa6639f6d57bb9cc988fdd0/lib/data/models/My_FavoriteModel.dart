class myFavoriteModel {
  int? favoriteId;
  int? userId;
  int? itemId;
  int? favitemID;
  String? itemNameEn;
  String? itemNameAr;
  String? itemDescEn;
  String? itemDescAr;
  String? itemImage;
  int? itemCount;
  int? itemActiv;
  int? itemPrice;
  int? itemDiscount;
  String? creationDate;
  int? itemCat;
  int? userID;

  myFavoriteModel(
      {this.favoriteId,
      this.userId,
      this.itemId,
      this.favitemID,
      this.itemNameEn,
      this.itemNameAr,
      this.itemDescEn,
      this.itemDescAr,
      this.itemImage,
      this.itemCount,
      this.itemActiv,
      this.itemPrice,
      this.itemDiscount,
      this.creationDate,
      this.itemCat,
      this.userID});

  myFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    userId = json['user_id'];
    itemId = json['item_id'];
    favitemID = json['FavitemID'];
    itemNameEn = json['item_name_en'];
    itemNameAr = json['item_name_ar'];
    itemDescEn = json['item_desc_en'];
    itemDescAr = json['item_desc_ar'];
    itemImage = json['item_image'];
    itemCount = json['item_count'];
    itemActiv = json['item_activ'];
    itemPrice = json['item_price'];
    itemDiscount = json['item_discount'];
    creationDate = json['CreationDate'];
    itemCat = json['item_cat'];
    userID = json['userID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['user_id'] = this.userId;
    data['item_id'] = this.itemId;
    data['FavitemID'] = this.favitemID;
    data['item_name_en'] = this.itemNameEn;
    data['item_name_ar'] = this.itemNameAr;
    data['item_desc_en'] = this.itemDescEn;
    data['item_desc_ar'] = this.itemDescAr;
    data['item_image'] = this.itemImage;
    data['item_count'] = this.itemCount;
    data['item_activ'] = this.itemActiv;
    data['item_price'] = this.itemPrice;
    data['item_discount'] = this.itemDiscount;
    data['CreationDate'] = this.creationDate;
    data['item_cat'] = this.itemCat;
    data['userID'] = this.userID;
    return data;
  }
}