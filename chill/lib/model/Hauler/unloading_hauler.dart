import 'package:chill/constants.dart';
import 'package:chill/model/Hauler/hauler.dart';

// Hauler that is going to Unload Cargo
class UnloadingHauler extends Hauler {
  /**
   * Constructor for UnloadingHauler 
   */
  UnloadingHauler(num haulerNum, expectedCargo, currentWeight)
      : super(haulerNum, expectedCargo) {
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
