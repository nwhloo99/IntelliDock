import 'package:chill/model/Hauler/hauler.dart';
import 'package:chill/model/constants.dart';

// Hauler that is going to load Cargo
class LoadingHauler extends Hauler {
  /**
   * Constructor for loading_hauler
   */
  LoadingHauler(expectedCargo, currentWeight) : super(expectedCargo) {
    this.ETA = Duration(minutes: (expectedCargo ~/ AVG_Loading_Time));
    this.currentWeight = currentWeight;
  }

  /**
   * Calculates and returns expectedWeight of cargo in hauler
   */
  num getExpectedWeight() {
    return currentWeight + expectedCargo;
  }
}
