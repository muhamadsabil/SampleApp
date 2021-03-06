class ClocloCategories {
  final List<String> categories;

  ClocloCategories({this.categories});

  factory ClocloCategories.fromJson(List<dynamic> json) {
    return ClocloCategories(
      categories: json != null ? new List<String>.from(json) : null,
    );
  }

  List<dynamic> toJson() {
    List<dynamic> data = new List<String>();
    if (this.categories != null) {
      data = this.categories;
    }
    return data;
  }
}