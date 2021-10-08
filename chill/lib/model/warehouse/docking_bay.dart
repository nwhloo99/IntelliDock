import 'package:chill/model/Hauler/hauler.dart';

class DockingBay {
  bool isOccupied = false;
  String bayName;

  // Time related elements
  DateTime startTime = DateTime.now();
  Duration estimatedDuration = Duration();

  // Hauler-related
  num initialHaulerWeight = 0;
  num finalHaulerWeight = 0;
  late Hauler currentHauler;

  /**
   * Arbitrary Constructor for docking_bay
   */
  DockingBay(this.bayName) {}

  /**
   * haulerLeaves re-initializes the variables in docking_bay by reseting
   * them to its original state. 
   */
  bool haulerLeave() {
    // Reset Variables
    this.isOccupied = false;
    this.startTime = DateTime.now();
    this.estimatedDuration = Duration();
    this.initialHaulerWeight = 0;
    this.finalHaulerWeight = 0;
    return true;
  }

  /**
   * haulerEnter initializes the variables to begin tracking the time spent
   * unloading or loading the cargo
   */
  bool haulerEnter(Hauler hauler) {
    this.isOccupied = true;
    this.startTime = DateTime.now();
    this.estimatedDuration = hauler.EstimatedCargoTime;
    this.initialHaulerWeight = hauler.getCurrentWeight();
    this.finalHaulerWeight = hauler.getExpectedWeight();
    this.currentHauler = hauler;
    return true;
  }

  /**
   * private method _calEstTime to dynamically update the estimatedDuration
   * left in the docking_bay.
   */
  void _calEstTimeRemainingForCargo() {
    Duration timeDiff = DateTime.now().difference(startTime);
    estimatedDuration -= timeDiff;
  }
}
