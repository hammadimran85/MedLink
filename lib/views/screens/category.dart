import 'package:flutter/material.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';
import 'package:med_link/views/widgets/category_card.dart';
import 'package:med_link/views/widgets/medicine_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  static const List<String> _categories = [
    'Nutritional Drinks',
    'Medicines',
    'Vitamins & Supplements',
    'Health Devices',
    'Homeopathy',
    'Diabetes Care',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Categories',
            style: TextStyle(
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
                height: 140,
                child: ListView.builder(
                    itemCount: _categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CategoryCardsHorizontal(
                          title: _categories[index],
                        ))),
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
                  itemCount: medDummyData.length,
                  itemBuilder: (context, index) => MedicineCard(
                        isFavScreen: false,
                        med: medDummyData[index],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
