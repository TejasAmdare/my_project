class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "Codepur",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th genration",
    price: 12999,
    color: "#33505a",
    image:
        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-storage-select-202207-purple?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1662150165312",
  )
];
