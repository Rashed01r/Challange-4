import 'package:challenge4/model/cars.dart';

class Autogenerated {
  List<Carts>? carts;
  int? total;
  int? skip;
  int? limit;

  Autogenerated({this.carts, this.total, this.skip, this.limit});
  factory Autogenerated.formJson({required json}) {
    List<Carts> a = [];
    json['carts'].forEach((v) {
      a.add(Carts.formJson(json: v));
    });
    return Autogenerated(
      carts: a,
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}
