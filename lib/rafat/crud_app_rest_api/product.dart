class Product {
  final String id,
      productName,
      productCode,
      image,
      unitPrice,
      quantity,
      totalPrice,
      createdAt;

  Product(
    this.id,
    this.productName,
    this.productCode,
    this.image,
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.createdAt,
  );

// factory method
  factory Product.toJson(Map<String, dynamic> e) {
    return Product(
      e['_id'],
      e['ProductName'],
      e['ProductCode'],
      e['Img'],
      e['UnitPrice'],
      e['Qty'],
      e['TotalPrice'],
      e['CreatedDate'],
    );
  }
}
