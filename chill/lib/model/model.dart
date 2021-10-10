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

  Model(List<int> numOfWarehouses) {
    map = new PortMap(numOfWarehouses);
  }

  //--------Handling Command requests-------------------------------------------
  // MAP related
  /**
   * Handles hauler_travelling_to_load input
   */
  void hauler_travelling_to_load(
      Hauler hauler, String warehouseName, num bayNumber) {
    hauler.setState_TravellingToLoad();
    hauler.EstimatedTravelTime = Duration(minutes: 10);
    map.warehouses
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
    hauler.EstimatedTravelTime = Duration(minutes: 10);
    map.warehouses
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
    map.warehouses
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
    map.warehouses
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
    map.warehouses
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
    map.warehouses
        .firstWhere((warehouse) => warehouse.warehouseName == warehouseName)
        .unloadingBays[(bayNumber - 1).toInt()]
        .haulerLeave();
  }

  /**
   * Handles port_tap_in input
   */
  void port_in(Hauler haulerNumber) {
    haulerNumber.setState_Waiting();
    map.startingPort.haulerEnter(haulerNumber);
  }

  /**
   * Handles port_loading_tap_out input
   */
  void port_loading_out(Hauler hauler) {
    hauler.setState_TravellingToLoad();
    map.startingPort.haulerExit(hauler);
  }

  /**
   * Handles port_unloading_tap_out input
   */
  void port_out_unloading(Hauler hauler) {
    hauler.setState_TravellingToUnload();
    map.startingPort.haulerExit(hauler);
  }

  // QUEUE Related
  //--------Handling Command requests-------------------------------------------
  /**
   * Handles accept_loading_request input
   */
  void acceptLoadingRequest(Request request, HaulerUser haulerUser) {
    loadingQueue.requestList.remove(request);
    request.pushToModel(haulerUser);
  }

  /**
   * Handles create_loading_request input
   */
  bool receiveLoadingRequest(Request request) {
    if (request.type != request_type.Loading) {
      return false;
    }
    loadingQueue.requestList.add(request);
    return true;
  }

  /**
   * Handles accept_unloading_request input
   */
  void acceptUnloadingRequest(Request request, HaulerUser haulerUser) {
    unloadingQueue.requestList.remove(request);
    request.pushToModel(haulerUser);
  }

  /**
   * Handles create_unloading_request input
   */
  bool receiveUnloadingRequest(Request request) {
    if (request.type == request_type.Loading) {
      return false;
    }
    unloadingQueue.requestList.add(request);
    return true;
  }
}
