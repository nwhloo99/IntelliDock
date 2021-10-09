import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/model/warehouse/warehouse.dart';

/**
 * LoadingBayUser class to stimualate a user of the app that is a loading bay, 
 * can be updated to include login and additional functionality
 */
class LoadingBayUser {
  DockingBay self;
  Warehouse parentWarehouse;

  LoadingBayUser(this.self, this.parentWarehouse) {}
}
