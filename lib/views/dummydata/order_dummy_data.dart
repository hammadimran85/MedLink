class OrderDetail {
  final String orderId;
  final String orderDateTime;
  final String orderStatus;
  final List<Item> items;
  final double totalPrice;

  OrderDetail({
    required this.orderId,
    required this.orderDateTime,
    required this.orderStatus,
    required this.items,
    required this.totalPrice,
  });
}

class Item {
  final String itemImagePath;
  final String itemName;
  final int quantity;

  Item(
      {required this.itemName,
      required this.quantity,
      required this.itemImagePath});
}

class DummyData {
  static List<OrderDetail> orders = [
    OrderDetail(
      orderId: '#ghshishks',
      orderDateTime: 'Today at 12:30 pm',
      orderStatus: 'In Progress',
      items: [
        Item(
            itemName: 'Multivitamin',
            quantity: 4,
            itemImagePath: 'assets/images/vaccine.png'),
        Item(
            itemName: 'Brixin',
            quantity: 2,
            itemImagePath: 'assets/images/vaccine.png'),
      ],
      totalPrice: 1200,
    ),
    OrderDetail(
      orderId: '#abc123',
      orderDateTime: 'Yesterday at 3:00 pm',
      orderStatus: 'Delivered',
      items: [
        Item(
            itemName: 'Aspirin',
            quantity: 3,
            itemImagePath: 'assets/images/vaccine.png'),
        Item(
            itemName: 'Cough Syrup',
            quantity: 1,
            itemImagePath: 'assets/images/vaccine.png'),
      ],
      totalPrice: 800,
    ),
    OrderDetail(
      orderId: '#abc123',
      orderDateTime: 'Yesterday at 3:00 pm',
      orderStatus: 'Delivered',
      items: [
        Item(
            itemName: 'Aspirin',
            quantity: 3,
            itemImagePath: 'assets/images/vaccine.png'),
        Item(
            itemName: 'Cough Syrup',
            quantity: 1,
            itemImagePath: 'assets/images/vaccine.png'),
      ],
      totalPrice: 800,
    ),
    OrderDetail(
      orderId: '#abc123',
      orderDateTime: 'Yesterday at 3:00 pm',
      orderStatus: 'Delivered',
      items: [
        Item(
            itemName: 'Aspirin',
            quantity: 3,
            itemImagePath: 'assets/images/vaccine.png'),
        Item(
            itemName: 'Cough Syrup',
            quantity: 1,
            itemImagePath: 'assets/images/vaccine.png'),
      ],
      totalPrice: 800,
    ),
  ];
}
