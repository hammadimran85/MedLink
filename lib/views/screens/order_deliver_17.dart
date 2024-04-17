import 'package:flutter/material.dart';
import 'package:med_link/views/widgets/dotted_line.dart';
import 'package:med_link/views/widgets/responsive.dart';

class OrderDeliverScreen extends StatelessWidget {
  const OrderDeliverScreen({super.key, required this.orderItem});

  final orderItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomAppBar(
      height: Responsive.deviceSize(context) * 0.45,
      orderItem: orderItem,
    ));
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final orderItem;

  const CustomAppBar(
      {super.key, required this.height, required this.orderItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.deviceSize(context) + 500,
      child: Stack(
        children: [
          Container(
            height: height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              color: Color.fromRGBO(29, 33, 45, 1),
            ),
            child: Stack(
              children: <Widget>[
                // Place your AppBar content
                Positioned(
                  top: height - 255,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 1,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            )),
                        const Spacer(
                          flex: 1,
                        ),
                        const Expanded(
                          flex: 4,
                          child: Text(
                            'Order Detail',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: height - 70.0,
                    left: 22.0,
                    right: 22.0,
                    child: Row(
                      children: [
                        const Text(
                          'Order ID ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          orderItem.orderId,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
            top: height - 20,
            left: 22.0,
            right: 22.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: const Color.fromARGB(255, 255, 255, 251),
                  surfaceTintColor: Theme.of(context).colorScheme.surface,
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          'House No #45, Block F4, Johar Town, Lahore',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Responsive.deviceSize(context),
                  child: Card(
                    color: const Color.fromRGBO(239, 251, 247, 1),
                    surfaceTintColor: Theme.of(context).colorScheme.surface,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Delivered In',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          Text(
                            '20-30 mins',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(11, 171, 124, 1),
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Items in Cart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 500,
                  child: ListView(
                    children: [
                      ListTile(
                        shape: const Border(
                          bottom: BorderSide(
                            color: Colors.black45, // Border color here
                            width: 1.0, // Border width here
                          ),
                        ),
                        leading: Image.asset('assets/images/vaccine.png'),
                        title: const Text(
                          'Viral Vaccine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        subtitle: const Text(
                          '3 X Rs 600',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15),
                        ),
                        trailing: const Text(
                          'Rs 2400',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                      ListTile(
                        shape: const Border(
                          bottom: BorderSide(
                            color: Colors.black45, // Border color here
                            width: 1.0, // Border width here
                          ),
                        ),
                        leading: Image.asset('assets/images/vaccine.png'),
                        title: const Text(
                          'Viral Vaccine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        subtitle: const Text(
                          '3 X Rs 600',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15),
                        ),
                        trailing: const Text(
                          'Rs 2400',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Payment Summary',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: Colors.black12)),
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Text(
                                  '2000 Rs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DottedLine(
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DottedLine(
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Text(
                                  '2000 Rs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
