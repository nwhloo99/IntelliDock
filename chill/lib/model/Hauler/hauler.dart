import 'package:chill/constants.dart';

class Hauler {
  num haulerNum;
  hauler_state state = hauler_state.Waiting;

  // Time related Variables
  late Duration EstimatedCargoTime;
  late Duration EstimatedTravelTime;
  DateTime startTime = DateTime.now();

  // Weight related Variables
  num currentWeight = 0;
  num expectedCargo;

  Hauler(this.haulerNum, this.expectedCargo, this.currentWeight) {
    this.EstimatedCargoTime =
        Duration(minutes: (expectedCargo ~/ AVG_Loading_Time));
  }

  // State Methods
  void setState_Loading() {
    this.state = hauler_state.Loading;
  }

  void setState_Unloading() {
    this.state = hauler_state.Unloading;
  }

  void setState_TravellingToLoad() {
    this.state = hauler_state.TravellingToLoad;
  }

  void setState_TravellingToUnload() {
    this.state = hauler_state.TravellingToUnload;
  }

  void setState_Waiting() {
    this.state = hauler_state.Waiting;
  }

  // Weight Methods

  /**
   * Calculates and returns expectedWeight of cargo in hauler
   */
  num getExpectedWeight() {
    if (state == hauler_state.Loading ||
        state == hauler_state.TravellingToLoad) {
      return currentWeight + expectedCargo;
    } else if (state == hauler_state.Unloading ||
        state == hauler_state.TravellingToUnload) {
      return currentWeight - expectedCargo;
    } else {
      return expectedCargo;
    }
  }

  /**
   * Returns current weight of cargo in Hauler
   */
  num getCurrentWeight() {
    return currentWeight;
  }

  // Time Methods

  /**
   * private method _calEstTime to dynamically update the estimatedDuration
   * left for hauler.
   */
  void _calEstTimeRemainingToLocation() {
    Duration timeDiff = DateTime.now().difference(startTime);
    EstimatedTravelTime -= timeDiff;
  }
}
