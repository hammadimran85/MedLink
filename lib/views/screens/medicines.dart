import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/providers/fav_medicine_provider.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';
import 'package:med_link/views/widgets/medicine_card.dart';

class MedicineBookmarkScreen extends ConsumerWidget {
  const MedicineBookmarkScreen(
      {super.key, required this.screenTitle, required this.isMedicine});

  final String screenTitle;
  final bool isMedicine;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favMedData = ref.watch(favoriteMedsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            screenTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 15),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1.0,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                  ),
                  suffixIcon: Icon(
                    Icons.tune_outlined,
                    color: Colors.black26,
                  ),
                  hintText: 'Search by items',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(214, 214, 214, 1), fontSize: 15),
                  contentPadding: EdgeInsets.all(11),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.75,
                  ),
                  itemCount:
                      isMedicine ? medDummyData.length : favMedData.length,
                  itemBuilder: (context, index) => isMedicine
                      ? MedicineCard(
                          isFavScreen: false,
                          med: medDummyData[index],
                        )
                      : MedicineCard(
                          isFavScreen: true,
                          med: favMedData[index],
                        )),
            )
          ],
        ),
      ),
    );
  }
}
