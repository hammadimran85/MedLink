import 'package:flutter/material.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';
import 'package:med_link/views/screens/category.dart';
import 'package:med_link/views/screens/details/details_screen.dart';
import 'package:med_link/views/screens/medicines.dart';
import 'profiles_screen.dart';
import 'location.dart';
import 'cart_screen.dart'; // Import other screens

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 8.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LocationScreen()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Current location - Jl. Soekarno ',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Change location',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Navigate to the notification screen
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      focusColor: const Color.fromRGBO(88, 87, 219, 1),
                      fillColor: Theme.of(context).colorScheme.surface,
                      filled: true,
                      hintText: 'Search medicines, health products, etc.',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black38,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.tune_outlined,
                          color: Colors.black38,
                        ),
                        onPressed: () {
                          // Implement filter functionality
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoryScreen()),
                        );
                      },
                      child: Text(
                        'see all',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ))
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  title: _categories[index],
                  imageUrl:
                      'assets/images/${_categories[index].toLowerCase().replaceAll(' ', '')}.png',
                  onTap: () {
                    // Implement navigation to specific category screen
                    // Medicine
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MedicineBookmarkScreen(
                                isMedicine: true,
                                screenTitle: 'Medicine',
                              )),
                    );
                  },
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return ProductCard(
                  title: 'Product ${index + 1}',
                  imageUrl: 'assets/images/product_${index + 1}.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                med: medDummyData[0],
                              )),
                    );
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: TextButton(
                onPressed: () {
                  // Implement navigation to view more products
                },
                child: Text(
                  'View More Products',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MedicineBookmarkScreen(
                                  isMedicine: false,
                                  screenTitle: 'Bookmark',
                                )));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilesScreen()),
                    );
                  },
                ),
              ],
            ),
            Positioned(
              bottom: -2,
              left: 40, // Adjust as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Home',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark)),
                  const SizedBox(
                    width: 47,
                  ),
                  Text('Cart',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark)),
                  const SizedBox(
                    width: 40,
                  ),
                  Text('Bookmark',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark)),
                  const SizedBox(
                    width: 25,
                  ),
                  Text('Profile',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorDark)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: 80,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: 80,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement your ProductScreen UI here
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: const Center(
        child: Text('Product Details Screen'),
      ),
    );
  }
}
