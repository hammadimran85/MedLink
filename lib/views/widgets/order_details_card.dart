import 'package:flutter/material.dart';
import 'package:med_link/views/screens/order_deliver_17.dart';
import 'package:med_link/views/widgets/dotted_line.dart';

class OrderDetailCard extends StatelessWidget {
  const OrderDetailCard({super.key, required this.orderList});

  final orderList;

  @override
  Widget build(BuildContext context) {
    List<Color> statusColor;
    if (orderList.orderStatus == 'In Progress') {
      statusColor = const [
        Color.fromRGBO(255, 248, 216, 1),
        Color.fromRGBO(232, 190, 10, 1),
      ];
    } else {
      statusColor = const [
        Color.fromRGBO(180, 240, 222, 1),
        Color.fromRGBO(11, 171, 124, 1),
      ];
    }

    return Card(
      margin: const EdgeInsets.only(top: 10),
      color: const Color.fromARGB(255, 255, 255, 251),
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderList.orderId,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(orderList.orderDateTime),
                  ],
                ),
                Card(
                  color: statusColor[0],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      orderList.orderStatus,
                      style: TextStyle(color: statusColor[1]),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const DottedLine(
              height: 0.91,
              color: Color.fromRGBO(214, 214, 214, 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${orderList.items.length} Items',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    for (var item in orderList.items)
                      Text('${item.itemName} x ${item.quantity}'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${orderList.totalPrice} Rs',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_circle_right_outlined,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDeliverScreen(
                                      orderItem: orderList,
                                    )));
                      },
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
