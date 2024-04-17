import 'package:flutter/material.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    super.key,
    required this.med,
    required this.updateCounter,
  });
  final MedicineData med;

  final Function(int value) updateCounter;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.med.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(240, 243, 246, 1)),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(204, 204, 255, 1),
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          _decrementCounter();
                          widget.updateCounter(_counter);
                        },
                        iconSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Center(
                        child: Text(
                          '$_counter',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(88, 87, 219, 1),
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          _incrementCounter();
                          widget.updateCounter(_counter);
                        },
                        color: Colors.white,
                        iconSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 64, bottom: 20),
          child: Column(
            children: [
              Text(
                'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                maxLines: 3,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
