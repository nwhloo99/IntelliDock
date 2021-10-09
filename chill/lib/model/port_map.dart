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
  map(List<int> numOfWarehouses) {
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
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_TravellingToLoad();
    warehouses[(warehouseNumber - 1).toInt()]
        .LoadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(haulerNumber);
  }

  /**
   * Handles hauler_travelling_to_unload input
   */
  void hauler_travelling_to_unload(
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_TravellingToUnload();
    warehouses[(warehouseNumber - 1).toInt()]
        .LoadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(haulerNumber);
  }

  /**
   * Handles warehouse_loading_tap_in input
   */
  void warehouse_loading_in(
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_Loading();
    warehouses[(warehouseNumber - 1).toInt()]
        .LoadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(haulerNumber);
  }

  /**
   * Handles warehouse_loading_tap_out input
   */
  void warehouse_loading_out(
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_Waiting();
    warehouses[(warehouseNumber - 1).toInt()]
        .LoadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles warehouse_unloading_tap_in input
   */
  void warehouse_unloading_in(
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_Unloading();
    warehouses[(warehouseNumber - 1).toInt()]
        .UnloadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(haulerNumber);
  }

  /**
   * Handles warehouse_unloading_tap_out input
   */
  void warehouse_unloading_out(
      Hauler haulerNumber, num warehouseNumber, num bayNumber) {
    haulerNumber.setState_Waiting();
    warehouses[(warehouseNumber - 1).toInt()]
        .UnloadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles port_tap_in input
   */
  void port_in(Hauler haulerNumber) {
    startingPort.haulerEnter(haulerNumber);
  }

  /**
   * Handles port_tap_out input
   */
  void port_out(Hauler haulerNumber) {
    startingPort.haulerExit(haulerNumber);
  }
}
