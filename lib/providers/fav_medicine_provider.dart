import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/views/dummydata/medicines_dummy_data.dart';

class FavoriteMedicineNotifier extends StateNotifier<List<MedicineData>> {
  FavoriteMedicineNotifier() : super([]);

  bool toggleMedicineFavoriteStatus(MedicineData med) {
    final medIsFav = state.contains(med);

    if (medIsFav) {
      state = state.where((m) => m.id != med.id).toList();
      return false;
    } else {
      state = [...state, med];
      return true;
    }
  }
}

final favoriteMedsProvider =
    StateNotifierProvider<FavoriteMedicineNotifier, List<MedicineData>>(
        (ref) => FavoriteMedicineNotifier());
