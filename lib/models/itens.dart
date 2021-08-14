class Itens {
  final String productImage;
  final String product;
  final String description;
  final String price;
  final String priceDescription;

  bool isLoved;

  Itens({
    required this.productImage,
    required this.product,
    required this.description,
    required this.price,
    required this.priceDescription,
    this.isLoved = false,
  });
}
