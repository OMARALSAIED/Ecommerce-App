class CatgeoriesModel {
  int? categoiesID;
  String? categoiesNameEn;
  String? categoiesNameAr;
  String? categoiesImage;
  String? creationDate;

  CatgeoriesModel(
      {this.categoiesID,
      this.categoiesNameEn,
      this.categoiesNameAr,
      this.categoiesImage,
      this.creationDate});

  CatgeoriesModel.fromJson(Map<String, dynamic> json) {
    categoiesID = json['categoies_ID'];
    categoiesNameEn = json['categoies_name_en'];
    categoiesNameAr = json['categoies_name_ar'];
    categoiesImage = json['categoies_image'];
    creationDate = json['CreationDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoies_ID'] = this.categoiesID;
    data['categoies_name_en'] = this.categoiesNameEn;
    data['categoies_name_ar'] = this.categoiesNameAr;
    data['categoies_image'] = this.categoiesImage;
    data['CreationDate'] = this.creationDate;
    return data;
  }
}