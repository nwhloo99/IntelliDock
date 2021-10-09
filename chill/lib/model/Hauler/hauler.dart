import 'package:chill/utils/constants.dart';

class Hauler {
  num haulerNum;
  hauler_state state = hauler_state.Waiting;

  // Time related Variables
  late Duration EstimatedTravelTime;
  DateTime startTime = DateTime.now();

  Hauler(this.haulerNum);

  // State Methods
  void setState_Loading() {
    this.state = hauler_state.Loading;
  }

  void setState_Unloading() {
    this.state = hauler_state.Unloading;
  }

  void setState_TravellingToLoad() {
    this.startTime = DateTime.now();
    this.state = hauler_state.TravellingToLoad;
  }

  void setState_TravellingToUnload() {
    this.startTime = DateTime.now();
    this.state = hauler_state.TravellingToUnload;
  }

  void setState_Waiting() {
    this.state = hauler_state.Waiting;
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
