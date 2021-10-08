import 'package:chill/model/docking_bay.dart';

/**
 * WARNINGS:
 * 1. _calEstTimeRemaining Methods need testing for Duration Arithmetics
 */

class warehouse {
  final List<docking_bay> bays;
  final String warehouseName;

  /**
   * Constructor for Warehouse
   */
  warehouse._(this.warehouseName, this.bays);

  /**
   * Factory Constructor method for Warehouse, taking the number of bays to be
   * present at the Warehouse
   */
  factory warehouse(String warehouseName, num numOfBays) {
    // Create {@code numOfBays} number of docking bays to initialize bays
    List<docking_bay> tempList = List.empty();
    for (int i = 0; i < numOfBays; i++) {
      tempList.add(new docking_bay(warehouseName + (i + 1).toString()));
    }
    return new warehouse._(warehouseName, tempList);
  }
}
