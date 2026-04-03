// 3. Given Code -
// class Product {
// String name;
// double price;
// Product(this.name, this.price);
// }
// void main() {
// Product p = Product("Laptop", -50000);
// print(p.price);
// }
// Tasks -
// ● Is this logically correct?
// ● Add validation using exception handling
// ● Add functionality: Apply 10% discount if price > 30000

class Product {
  String name;
  double price;

  Product(this.name, this.price) {
    if (price <= 0) {
      throw Exception("Invalid price: Price must be greater than 0");
    }
  }

  void applyDiscount() {
    if (price > 30000) {
      price = price - (price * 0.10);
    }
  }
}

void main() {
  try {
    Product p = Product("Laptop", 50000);
    p.applyDiscount();
    print("Final Price: ₹${p.price}");
  } catch (e) {
    print("Error: $e");
  }
}