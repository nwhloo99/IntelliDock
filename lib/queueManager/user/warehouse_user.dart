import 'package:chill/model/warehouse/warehouse.dart';

/**
 * LoadingBayUser class to stimualate a user of the app that is a loading bay, 
 * can be updated to include login and additional functionality
 */
class WarehouseUser {
  Warehouse parentWarehouse;

  WarehouseUser(this.parentWarehouse) {}

  /**
   * Returns Parent Warehouse name
   */
  String warehouseName() {
    return "Warehouse " + parentWarehouse.warehouseName;
  }
}
