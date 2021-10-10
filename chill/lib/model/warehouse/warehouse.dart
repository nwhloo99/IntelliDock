import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/utils/constants.dart';

/**
 * Warehouse class containing loading and unloading bays
 */
class Warehouse {
  final List<DockingBay> dockingBays;
  final String warehouseName;

  /**
   * Constructor for Warehouse
   */
  Warehouse._(this.warehouseName, this.dockingBays);

  /**
   * Factory Constructor method for Warehouse, taking the number of bays to be
   * present at the Warehouse
   */
  factory Warehouse(String warehouseName, num numOfBays) {
    // Create {@code numOfBays} number of docking bays to initialize bays
    List<DockingBay> tempList = [];
    for (int i = 0; i < numOfBays; i++) {
      tempList.add(new DockingBay(JobType.Loading, i + 1, warehouseName));
    }
    return new Warehouse._(warehouseName, tempList);
  }
}
