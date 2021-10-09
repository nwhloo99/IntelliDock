class Hauler {
  num haulerNum;
  String haulerStatus = '';

  // Time related Variables
  late Duration EstimatedCargoTime;
  late Duration EstimatedTravelTime;
  DateTime startTime = DateTime.now();

  // Weight related Variables
  num currentWeight = 0;
  num expectedCargo;

  Hauler(this.haulerNum, this.expectedCargo);

  /**
   * Calculates and returns expectedWeight of cargo in hauler
   */
  num getExpectedWeight() {
    return expectedCargo;
  }

  /**
   * Returns current weight of cargo in Hauler
   */
  num getCurrentWeight() {
    return currentWeight;
  }

  /**
   * private method _calEstTime to dynamically update the estimatedDuration
   * left for hauler.
   */
  void _calEstTimeRemainingToLocation() {
    Duration timeDiff = DateTime.now().difference(startTime);
    EstimatedTravelTime -= timeDiff;
  }
}
