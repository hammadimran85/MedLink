import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/providers/cart_medicine_provider.dart';
import 'package:med_link/providers/fav_medicine_provider.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';
import 'package:med_link/views/screens/details/details_screen.dart';

class MedicineCard extends ConsumerWidget {
  const MedicineCard({super.key, required this.isFavScreen, required this.med});

  final bool isFavScreen;
  final MedicineData med;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              med: med,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.0, color: Colors.black12),
          color: const Color.fromARGB(255, 255, 255, 251),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  med.itemImagePath,
                  width: 70,
                ),
                IconButton(
                  onPressed: () {
                    final isFavMed = ref
                        .read(favoriteMedsProvider.notifier)
                        .toggleMedicineFavoriteStatus(med);
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(isFavMed
                            ? 'Added as a Favorite!'
                            : 'Removed as a Favorite!'),
                      ),
                    );
                  },
                  icon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return RotationTransition(
                        turns: Tween<double>(
                          begin: 0.5,
                          end: 1,
                        ).animate(animation),
                        child: child,
                      );
                    },
                    child: Consumer(
                      builder: (context, ref, child) {
                        final isFavMed =
                            ref.watch(favoriteMedsProvider).contains(med);
                        return isFavMed
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                key: ValueKey(
                                    true), // Unique key for favorite icon
                              )
                            : const Icon(
                                Icons.favorite_border,
                                color: Colors.black26,
                                key: ValueKey(
                                    false), // Unique key for non-favorite icon
                              );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Text(
              med.title,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${med.price} \$',
              style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(88, 87, 219, 1),
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(11, 171, 124, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  bool isAdded = ref
                      .read(cartMedsProvider.notifier)
                      .toggleMedicineCartStatus(med, 1);
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          isAdded ? 'Added to Cart!' : 'Already in the Cart!'),
                    ),
                  );
                },
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
