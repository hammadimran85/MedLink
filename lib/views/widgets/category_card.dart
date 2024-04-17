import 'package:flutter/material.dart';
import 'package:med_link/views/screens/medicines.dart';

class CategoryCardsHorizontal extends StatelessWidget {
  const CategoryCardsHorizontal({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10, left: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 0.6, color: Colors.black12),
          borderRadius: BorderRadius.circular(20)),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MedicineBookmarkScreen(
                            screenTitle: 'Medicine',
                            isMedicine: true,
                          )));
            },
            child: Image.asset(
              'assets/images/${title.toLowerCase().replaceAll(' ', '')}.png',
              width: 70,
              height: 70,
            ),
          ),
          Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 12,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
