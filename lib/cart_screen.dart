import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/providers/cart_medicine_provider.dart'; // Import your checkout_screen.dart file

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartMedsProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          actions: [
            IconButton(
              icon: const Icon(Icons.code),
              onPressed: () {
                // Display codbanner.png
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Image.asset(cartItems[index].itemImagePath),
                  title: Text(cartItems[index].title),
                  subtitle: Text('${cartItems[index].price} \$'),
                  trailing: Text(cartItems[index].cartQuantity.toString()),
                ),
              ),
            ),
            const ListTile(
              title: Text('Order Total:'),
              subtitle: Text('Rs 2000'),
              trailing: Text('Free'),
            ),
            ListTile(
              title: const Text('Cash on Delivery'),
              leading: Image.asset('assets/images/codbanner.png'),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Theme.of(context).primaryColor)),
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text('Place Order',
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).scaffoldBackgroundColor)))),
        ));
  }
}
