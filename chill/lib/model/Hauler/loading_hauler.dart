import 'package:chill/model/Hauler/hauler.dart';
import 'package:chill/model/constants.dart';

// Hauler that is going to load Cargo
class loading_hauler extends hauler {
  num expectedCargo = 0;

  /**
   * Constructor for loading_hauler
   */
  loading_hauler(this.expectedCargo, currentWeight) {
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
