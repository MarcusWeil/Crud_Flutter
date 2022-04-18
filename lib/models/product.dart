class Product {
  final String id;
  final String name;
  final String price;
  final String dateCreated;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.dateCreated,
  });

//Os valores serão obtidos dinâmicamente pelo fromJson, que retornará a classe com seus devidos valores.
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        dateCreated: json['dateCreated']);
  }
}
