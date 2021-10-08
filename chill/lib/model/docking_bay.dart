import 'package:chill/model/Hauler/hauler.dart';

class docking_bay {
  bool isOccupied = false;
  String bayName;

  // Time related elements
  DateTime startTime = DateTime.now();
  Duration estimatedDuration = Duration();

  // Hauler-related
  num initialHaulerWeight = 0;
  num finalHaulerWeight = 0;
  late hauler currentHauler;

  /**
   * Arbitrary Constructor for docking_bay
   */
  docking_bay(this.bayName) {}

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
  bool haulerEnter(hauler hauler) {
    this.isOccupied = true;
    this.startTime = DateTime.now();
    this.estimatedDuration = hauler.ETA;
    this.initialHaulerWeight = hauler.getCurrentWeight();
    this.finalHaulerWeight = hauler.getExpectedWeight();
    this.currentHauler = hauler;
    return true;
  }

  /**
   * private method _calEstTime to dynamically update the estimatedDuration
   * left in the docking_bay.
   */
  void _calEstTimeRemaining() {
    Duration timeDiff = DateTime.now().difference(startTime);
    estimatedDuration -= timeDiff;
  }
}
