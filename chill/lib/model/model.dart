import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/queue.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/utils/constants.dart';

class Model {
  List<Hauler> haulers = [];
  late PortMap map;
  Queue loadingQueue = new Queue();
  Queue unloadingQueue = new Queue();

  Model(List<int> numOfWarehouses, int numOfHaulers) {
    map = new PortMap(numOfWarehouses);
    for (int i = 0; i < numOfHaulers; i++) {
      Hauler temp = new Hauler(i);
      haulers.add(temp);
    }
  }

  void addHaulers(int numToAdd) {
    int length = haulers.length;
    for (int i = 0; i < numToAdd; i++) {
      Hauler temp = new Hauler(i + length);
      haulers.add(temp);
    }
  }

  //--------Handling Command requests-------------------------------------------

  // MAP related
  /**
   * Handles hauler_travelling_to_load input
   */
  void hauler_travelling_to_load(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_TravellingToLoad();
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .getTTWarehouse(warehouseName);
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(
            haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles hauler_travelling_to_unload input
   */
  void hauler_travelling_to_unload(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_TravellingToUnload();
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .getTTWarehouse(warehouseName);
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerOTW(
            haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles warehouse_loading_tap_in input
   */
  void warehouse_loading_in(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_Loading();
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(
            haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles warehouse_loading_tap_out input
   */
  void warehouse_loading_out(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_Waiting();
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .loadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles warehouse_unloading_tap_in input
   */
  void warehouse_unloading_in(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_Unloading();
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .unloadingBays[(bayNumber - 1).toInt()]
        .haulerEnter(
            haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles warehouse_unloading_tap_out input
   */
  void warehouse_unloading_out(
      num haulerNum, String warehouseName, num bayNumber) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_Waiting();
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .unloadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles port_tap_in input
   */
  void port_in(num haulerNum) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_Waiting();
    map.startingPort.haulerEnter(
        haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles port_loading_tap_out input
   */
  void port_loading_out(num haulerNum) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_TravellingToLoad();
    map.startingPort.haulerExit(
        haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  /**
   * Handles port_unloading_tap_out input
   */
  void port_out_unloading(num haulerNum) {
    haulers
        .firstWhere((element) => element.haulerNum == haulerNum)
        .setState_TravellingToUnload();
    map.startingPort.haulerExit(
        haulers.firstWhere((element) => element.haulerNum == haulerNum));
  }

  // QUEUE Related
  //--------Handling Command requests-------------------------------------------
  /**
   * Handles accept_request input
   */
  bool acceptRequest(Request request, HaulerUser haulerUser) {
    if (request.type == JobType.Loading) {
      loadingQueue.requestList.remove(request);
    } else if (request.type == JobType.Unloading) {
      unloadingQueue.requestList.remove(request);
    } else {
      return false;
    }
    haulerUser.currentBooking.add(request);
    return true;
  }

  /**
   * Handles create_request input
   */
  bool receiveRequest(Request request) {
    if (request.type == JobType.Loading) {
      loadingQueue.requestList.add(request);
    } else if (request.type == JobType.Unloading) {
      unloadingQueue.requestList.add(request);
    } else {
      return false;
    }
    return true;
  }
}
