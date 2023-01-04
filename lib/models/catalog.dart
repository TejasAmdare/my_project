class Catalog {
  final List<Products>? products;

  Catalog({
    this.products,
  });

  Catalog copyWith({
    List<Products>? products,
  }) {
    return Catalog(
      products: products ?? this.products,
    );
  }

  Catalog.fromJson(Map<String, dynamic> json)
      : products = (json['products'] as List?)
            ?.map((dynamic e) => Products.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'products': products?.map((e) => e.toJson()).toList()};
}

class Products {
  final int? id;
  final String? name;
  final String? desc;
  final int? price;
  final String? color;
  final String? image;

  Products({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  Products copyWith({
    int? id,
    String? name,
    String? desc,
    int? price,
    String? color,
    String? image,
  }) {
    return Products(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Products.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        desc = json['desc'] as String?,
        price = json['price'] as int?,
        color = json['color'] as String?,
        image = json['image'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': image
      };
}
