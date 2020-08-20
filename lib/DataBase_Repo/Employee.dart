

class CartItem {
  int id;
  String name;
  String location;
  String imgUrl;

  CartItem(this.id, this.name, this.location);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'location' : location,
      'imgUrl' : imgUrl
    };
    return map;
  }

  CartItem.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    location = map['location'];
    imgUrl = map['imgUrl'];
  }
}