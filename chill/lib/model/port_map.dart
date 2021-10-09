import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/warehouse/port.dart';
import 'package:chill/model/warehouse/warehouse.dart';

/* 
 * Map Model containing all 5 Warehouses and the Port
 * Map handles commands and models the simulation accordingly
 */
class PortMap {
  late List<Warehouse> warehouses;
  late port startingPort;
  num numOfHaulers = 0;

  /**
   * Constructor for Map, taking in the arrangement of the Warehouses
   */
  PortMap(List<int> numOfWarehouses) {
    List<Warehouse> tempList = [];
    for (int i = 0; i < numOfWarehouses.length; i++) {
      tempList.add(
          new Warehouse('Warehouse' + (i + 1).toString(), numOfWarehouses[i]));
    }
    warehouses = tempList;
    startingPort = new port();
  }

  //--------Handling Command requests-------------------------------------------

  /**
   * Handles hauler_travelling_to_load input
   */
  void hauler_travelling_to_load(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_TravellingToLoad();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(hauler);
  }

  /**
   * Handles hauler_travelling_to_unload input
   */
  void hauler_travelling_to_unload(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_TravellingToUnload();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(hauler);
  }

  /**
   * Handles warehouse_loading_tap_in input
   */
  void warehouse_loading_in(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_Loading();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(hauler);
  }

  /**
   * Handles warehouse_loading_tap_out input
   */
  void warehouse_loading_out(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_Waiting();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles warehouse_unloading_tap_in input
   */
  void warehouse_unloading_in(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_Unloading();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .unloadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(hauler);
  }

  /**
   * Handles warehouse_unloading_tap_out input
   */
  void warehouse_unloading_out(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_Waiting();
    warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .unloadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles port_tap_in input
   */
  void port_in(Hauler haulerNumber) {
    haulerNumber.setState_Waiting();
    startingPort.haulerEnter(haulerNumber);
  }

  /**
   * Handles port_loading_tap_out input
   */
  void port_loading_out(Hauler hauler) {
    hauler.setState_TravellingToLoad();
    startingPort.haulerExit(hauler);
  }

  /**
   * Handles port_unloading_tap_out input
   */
  void port_out_unloading(Hauler hauler) {
    hauler.setState_TravellingToUnload();
    startingPort.haulerExit(hauler);
  }
}
