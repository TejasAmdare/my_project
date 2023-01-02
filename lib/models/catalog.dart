class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th genration",
      price: 12999,
      color: "#33505a",
      image:
          "https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/71ZOtNdaZCL._SL1500_.jpg",
      // image: "https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/71xkMA+gvYL._SL1500_.jpg" - white
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

// final main : "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-finish-unselect-gallery-1-202207_GEO_EMEA?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1662129048005"
// "gdscjdcoem@gmail.com" pass "gdscjdcoem@2022"
// https://www.apple.com/in/iphone/

