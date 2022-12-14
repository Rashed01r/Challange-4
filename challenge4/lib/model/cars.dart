import 'package:challenge4/model/producte.dart';

class Carts {
  int? id;
  List<Products>? products;
  int? total;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;

  Carts(
      {this.id,
      this.products,
      this.total,
      this.discountedTotal,
      this.userId,
      this.totalProducts,
      this.totalQuantity});

  factory Carts.formJson({required json}) {
    List<Products> b = [];
    json['products'].forEach((v) {
      b.add(Products.formJson(json: v));
    });
    return Carts(
      id: json["id"],
      products: b,
      total: json['total'],
      discountedTotal: json['discountedTotal'],
      userId: json['userId'],
      totalProducts: json['totalProducts'],
      totalQuantity: json['totalQuantity'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$id';
  }
}
