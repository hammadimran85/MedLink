import 'package:flutter/material.dart';
import 'package:med_link/views/dummydata/order_dummy_data.dart';
import 'package:med_link/views/widgets/order_details_card.dart';
import 'package:med_link/views/widgets/responsive.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomAppBar(
      height: Responsive.deviceSize(context) * 0.6,
    ));
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.deviceSize(context) + 800,
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
                  top: height - 320,
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
                          flex: 2,
                        ),
                        const Expanded(
                          flex: 4,
                          child: Text(
                            'Orders',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: height - 100.0,
                  left: 22.0,
                  right: 22.0,
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search by items',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(214, 214, 214, 1),
                            fontSize: 15),
                        contentPadding: EdgeInsets.all(13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: height - 50.0,
              left: 22.0,
              right: 22.0,
              child: SizedBox(
                height: Responsive.deviceSize(context) + 160,
                child: ListView.builder(
                  itemCount: DummyData.orders.length,
                  itemBuilder: (context, index) => OrderDetailCard(
                    orderList: DummyData.orders[index],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
