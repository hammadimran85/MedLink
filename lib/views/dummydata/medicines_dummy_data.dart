class MedicineData {
  final int id; // New field
  final String title;
  final double price;
  final String itemImagePath;
  final int itemQuantity;
  final int cartQuantity;

  MedicineData({
    required this.id, // Updated constructor
    required this.title,
    required this.price,
    required this.itemImagePath,
    required this.itemQuantity,
    required this.cartQuantity,
  });
}

List<MedicineData> medDummyData = [
  MedicineData(
    id: 1,
    title: "Medicine 1",
    price: 10.99,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 100,
    cartQuantity: 10,
  ),
  MedicineData(
    id: 2,
    title: "Medicine 2",
    price: 20.49,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 50,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 3,
    title: "Medicine 3",
    price: 15.79,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 80,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 4,
    title: "Medicine 4",
    price: 5.99,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 120,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 5,
    title: "Medicine 5",
    price: 8.29,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 90,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 6,
    title: "Medicine 6",
    price: 12.99,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 70,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 7,
    title: "Medicine 7",
    price: 18.49,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 60,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 8,
    title: "Medicine 8",
    price: 9.99,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 110,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 9,
    title: "Medicine 9",
    price: 14.59,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 40,
    cartQuantity: 0,
  ),
  MedicineData(
    id: 10,
    title: "Medicine 10",
    price: 7.49,
    itemImagePath: "assets/images/vaccine.png",
    itemQuantity: 150,
    cartQuantity: 0,
  ),
];
