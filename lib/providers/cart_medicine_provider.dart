import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';

class CartMedicineNotifier extends StateNotifier<List<MedicineData>> {
  CartMedicineNotifier() : super([]);

  bool toggleMedicineCartStatus(MedicineData med, int cartQuantity) {
    final medIsInCart = state.where((item) => item.id == med.id);
    final updatedState = List.of(state);

    if (!medIsInCart.isNotEmpty) {
      MedicineData medUpd = MedicineData(
          id: med.id,
          title: med.title,
          price: med.price,
          itemImagePath: med.itemImagePath,
          itemQuantity: med.itemQuantity,
          cartQuantity: cartQuantity);

      state = [...updatedState, medUpd];
      return true;
    } else {
      return false;
    }
  }
}

final cartMedsProvider =
    StateNotifierProvider<CartMedicineNotifier, List<MedicineData>>(
        (ref) => CartMedicineNotifier());
