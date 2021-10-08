import 'package:chill/model/Hauler/hauler.dart';
import 'package:chill/model/constants.dart';

// Hauler that is going to Unload Cargo
class UnloadingHauler extends Hauler {
  /**
   * Constructor for UnloadingHauler 
   */
  UnloadingHauler(expectedCargo, currentWeight) : super(expectedCargo) {
    this.EstimatedCargoTime =
        Duration(minutes: (expectedCargo ~/ AVG_Loading_Time));
    this.currentWeight = currentWeight;
  }

  /**
   * Calculates and returns expectedWeight of cargo in hauler
   */
  num getExpectedWeight() {
    return currentWeight - expectedCargo;
  }
}
