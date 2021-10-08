abstract class hauler {
  // Time related Variables
  late Duration ETA;
  DateTime startTime = DateTime.now();

  // Weight related Variables
  num currentWeight = 0;

  /**
   * Calculates and returns expectedWeight of cargo in hauler
   */
  num getExpectedWeight();

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
  void _calEstTimeRemaining() {
    Duration timeDiff = DateTime.now().difference(startTime);
    ETA -= timeDiff;
  }
}
