import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/utils/constants.dart';

/**
 * TEST
 * Queues -> loading unloading
 * Model -> hauler adding
 */

/** MODEL NULL
 * Empty Model
 */
Model generateModelNull() {
  return new Model([], 0);
}

/** MODEL A
 * WareHouse A: 3 Docking, Warehouse B: 2 Docking; 2
 * Hauler 1 travelling to unload at A,1
 * Hauler 2 travelling to load at B,2
 */
Model generateModelA() {
  Model templateModelA = new Model([3, 2], 2);
  templateModelA.hauler_travelling_to_unload(0, 'A', 1);
  templateModelA.hauler_travelling_to_load(1, 'B', 2);
  return templateModelA;
}

/** MODEL B
 * Warehouse A: 5 Docking; 3
 * Hauler 1 travelling to load at A,1
 * Hauler 2 occupying & loading at A,2
 * Hauler 3 occupying & unloading at A,3
 */
Model generateModelB() {
  Model templateModelB = new Model([5], 3);
  templateModelB.hauler_travelling_to_load(0, 'A', 1);
  templateModelB.warehouse_loading_in(1, 'A', 2);
  templateModelB.warehouse_unloading_in(2, 'A', 3);
  return templateModelB;
}

/** MODEL C
 * Warehouse A: 1 Docking; 1 Hauler
 * Flow to test: 
 * A,1 -> to send unloading request
 * Hauler1 -> to receive request and indicate on the way
 * A,1 -> see that Hauler1 is otw
 * Hauler1 -> indicate he has reached
 * A,1 -> see that bay is occupied
 * A,1 -> indicate unloading is complete
 */
Model generateModelC() {
  Request req = Request(JobType.Unloading, 'A', 1);
  HaulerUser user = new HaulerUser(new Hauler(0));
  Model templateModelC = new Model([1], 1);
  templateModelC.receiveRequest(req);
  templateModelC.acceptRequest(req, user);
  templateModelC.hauler_travelling_to_unload(0, 'A', 1);
  templateModelC.warehouse_unloading_in(0, 'A', 1);
  templateModelC.warehouse_unloading_out(0, 'A', 1);
  return templateModelC;
}

/** MODEL D
 * Warehouse A: 6 Docking; 1 Hauler
 * Testing Unloading and Loading Requests
 */
Model generateModelD() {
  Request lReq1 = Request(JobType.Loading, 'A', 1);
  Request lReq2 = Request(JobType.Loading, 'A', 2);
  Request lReq3 = Request(JobType.Loading, 'A', 3);
  Request unReq1 = Request(JobType.Unloading, 'A', 4);
  Request unReq2 = Request(JobType.Unloading, 'A', 5);
  Request unReq3 = Request(JobType.Unloading, 'A', 6);
  Model templateModelD = new Model([6], 1);
  templateModelD.receiveRequest(lReq1);
  templateModelD.receiveRequest(lReq2);
  templateModelD.receiveRequest(lReq3);
  templateModelD.receiveRequest(unReq1);
  templateModelD.receiveRequest(unReq2);
  templateModelD.receiveRequest(unReq3);
  return templateModelD;
}

/** MODEL FULL
 * Full Model; 
 * Warehouse A: 17 Docking, Warehouse B: 17 Docking; Warehouse C: 7 Docking
 * Warehouse D: 7 Docking; Warehouse E: 21; Fleet of 20 Haulers
 */
Model generateModelFULL() {
  Model templateModelFULL = new Model([17, 17, 7, 7, 21], 20);
  return templateModelFULL;
}
