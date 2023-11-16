import 'package:collection/collection.dart';


class Car {
  final int id;
  final String name;
  final String transmission;
  final String color;
  final int miles;
  final String phone;
  final String carimage;
  final String carimage2;
  final String carimage3;
  final String carimage4;
  final String price;

  Car({
    required this.id,
    required this.name,
    required this.transmission,
    required this.color,
    required this.miles,
    required this.phone,
    required this.carimage,
    required this.carimage2,
    required this.carimage3,
    required this.carimage4,
    required this.price,


  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'],
      name: json['name'],
      transmission: json['transmission'],
      color: json['color'],
      miles: json['miles'],
      phone: json['phone'],
      carimage: json['carimage'],
      carimage2: json['carimage2'],
      carimage3: json['carimage3'],
      carimage4: json['carimage4'],
      price: json['price'],
    );
  }
}
