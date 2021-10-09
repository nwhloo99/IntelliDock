import 'package:chill/model/warehouse/docking_bay.dart';

/**
 * Warehouse class containing loading and unloading bays
 */
class Warehouse {
  final List<DockingBay> loadingBays;
  final List<DockingBay> unloadingBays;
  final String warehouseName;

  /**
   * Constructor for Warehouse
   */
  Warehouse._(this.warehouseName, this.loadingBays, this.unloadingBays);

  /**
   * Factory Constructor method for Warehouse, taking the number of bays to be
   * present at the Warehouse
   */
  factory Warehouse(String warehouseName, num numOfBays) {
    // Create {@code numOfBays} number of docking bays to initialize bays
    List<DockingBay> tempListLoading = [];
    List<DockingBay> tempListUnloading = [];
    for (int i = 0; i < numOfBays; i++) {
      tempListLoading.add(new DockingBay(i + 1));
      tempListUnloading.add(new DockingBay(i + 1));
    }
    return new Warehouse._(warehouseName, tempListLoading, tempListUnloading);
  }
}
