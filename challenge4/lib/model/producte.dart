class Products {
  int? id;
  String? title;
  int? price;
  int? quantity;
  int? total;
  num? discountPercentage;
  int? discountedPrice;

  Products(
      {this.id,
      this.title,
      this.price,
      this.quantity,
      this.total,
      this.discountPercentage,
      this.discountedPrice});

  factory Products.formJson({required json}) {
    return Products(
      id: json["id"],
      title: json['title'],
      total: json['total'],
      price: json['price'],
      quantity: json['quantity'],
      discountPercentage: json['discountPercentage'] ,
      discountedPrice: json['discountedPrice'],
    );
  }
   @override
  String toString() {
    // TODO: implement toString
    return "$total";
  }
}
