import 'dart:ffi';

class Product {
  final String id;
  final String productName;
  final int productCode;
  final String productImage;
  final int unitPrice;
  final int quantity;
  final int totalPrice;

  Product(
      {required this.id,
      required this.productName,
      required this.productCode,
      required this.productImage,
      required this.unitPrice,
      required this.quantity,
      required this.totalPrice,
      });
}
