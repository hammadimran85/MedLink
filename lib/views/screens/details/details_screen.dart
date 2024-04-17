import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/cart_screen.dart';
import 'package:med_link/providers/cart_medicine_provider.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';
import 'package:med_link/views/screens/details/components/product_description.dart';
import 'package:med_link/views/widgets/medice_card_small.dart';
import 'components/top_rounded_container.dart';

class DetailsScreen extends ConsumerStatefulWidget {
  static String routeName = "/details";

  const DetailsScreen({super.key, required this.med});

  final MedicineData med;

  @override
  ConsumerState<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends ConsumerState<DetailsScreen> {
  int _counter = 1;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     if (_counter > 1) {
  //       _counter--;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Detail Product',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        actions: const [Icon(Icons.shopping_cart_checkout_outlined)],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(widget.med.itemImagePath),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 135, 249, 179),
                ),
                child: const Text(
                  'Available',
                  style: TextStyle(color: Color.fromARGB(255, 5, 145, 58)),
                ),
              )
            ],
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDescription(
                med: widget.med,
                updateCounter: (counter) {
                  _counter = counter;
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, top: 12, bottom: 10),
            child: Text(
              'Other Medicines',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, index) => MedicineCardSmall(
                med: medDummyData[index],
              ),
              itemCount: medDummyData.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
      bottomNavigationBar: TopRoundedContainer(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(0, 48, 120, 0.9))),
              onPressed: () {
                bool isAdded = ref
                    .read(cartMedsProvider.notifier)
                    .toggleMedicineCartStatus(widget.med, _counter);
                isAdded
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()),
                      )
                    : ScaffoldMessenger.of(context).clearSnackBars();
                if (!isAdded) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Already in the Cart!'),
                  ));
                }
              },
              child: const Text(
                "Add To Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
