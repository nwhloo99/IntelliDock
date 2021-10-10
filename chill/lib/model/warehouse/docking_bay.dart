import 'package:chill/utils/constants.dart';
import 'package:chill/model/hauler/hauler.dart';

class DockingBay {
  BayState state = BayState.Available;
  num bayNum;
  String parentWarehouse;

  // Time related elements
  DateTime startTime = DateTime.now();
  Duration estimatedDuration = Duration();

  // Hauler-related
  late Hauler currentHauler;
  List<Hauler> incomingHauler = [];

  /**
   * Arbitrary Constructor for docking_bay
   */
  DockingBay(this.bayNum, this.parentWarehouse) {}

  // Hauler Methods

  /**
   * haulerLeaves re-initializes the variables in docking_bay by reseting
   * them to its original state. 
   */
  bool haulerLeave() {
    // Reset Variables
    this.state = BayState.Available;
    this.startTime = DateTime.now();
    this.estimatedDuration = Duration();
    return true;
  }

  /**
   * haulerEnter initializes the variables to begin tracking the time spent
   * unloading or loading the cargo
   */
  bool haulerEnter(Hauler hauler) {
    incomingHauler.remove(hauler);
    this.state = BayState.Occupied;
    this.startTime = DateTime.now();
    this.estimatedDuration = Duration(minutes: containerTransferTime);
    this.currentHauler = hauler;
    return true;
  }

  /**
   * hauler projected to arrive at warehouse with the estimated time
   */
  bool haulerOTW(Hauler hauler) {
    this.state = BayState.Awaiting;
    incomingHauler.add(hauler);
    return true;
  }

  // Timer Methods

  /**
   * private method _calEstTime to dynamically update the estimatedDuration
   * left in the docking_bay.
   */
  void _calEstTimeRemainingForCargo() {
    Duration timeDiff = DateTime.now().difference(startTime);
    estimatedDuration -= timeDiff;
  }
}
