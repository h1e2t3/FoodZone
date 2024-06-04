class FoodItem {
  final String name;
  final double price;
  final String isVeg;
  final String imageUrl;

  FoodItem({
    required this.name,
    required this.price,
    required this.isVeg,
    required this.imageUrl,
  });

  // Optionally, you can add methods to convert to/from JSON for easier data handling
  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      name: json['name'],
      price: json['price'],
      isVeg: json['isVeg'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'isVeg': isVeg,
      'imageUrl': imageUrl,
    };
  }
}
FoodItem Jain=FoodItem(name:"Pav-Bhaji", price:199, isVeg:"Veg", imageUrl:"https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=D1z4xPCs-qQIZyUqRcHrnsJSJy_YbUD9udOrXpilNpI=");