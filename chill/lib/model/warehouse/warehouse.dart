import 'package:chill/model/warehouse/docking_bay.dart';

/**
 * WARNINGS:
 * 1. _calEstTimeRemaining Methods need testing for Duration Arithmetics
 * 2. expectedCargo super constructor
 */

class Warehouse {
  final List<DockingBay> bays;
  final String warehouseName;

  /**
   * Constructor for Warehouse
   */
  Warehouse._(this.warehouseName, this.bays);

  /**
   * Factory Constructor method for Warehouse, taking the number of bays to be
   * present at the Warehouse
   */
  factory Warehouse(String warehouseName, num numOfBays) {
    // Create {@code numOfBays} number of docking bays to initialize bays
    List<DockingBay> tempList = List.empty();
    for (int i = 0; i < numOfBays; i++) {
      tempList.add(new DockingBay(warehouseName + (i + 1).toString()));
    }
    return new Warehouse._(warehouseName, tempList);
  }
}
