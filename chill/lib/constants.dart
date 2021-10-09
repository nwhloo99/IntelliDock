import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests/loading_request.dart';

// Average Loading Time kg/min
const AVG_Loading_Time = 1;

// Average Queueing Delay in minutes
const Queue_Delay = 60;

// Enum for Request Type
enum request_type { Loading, Unloading }

// Time to Warehouses in minutes
const num TTWarehouseA = 10;
const num TTWarehouseB = 6;
const num TTWarehouseC = 8;
const num TTWarehouseD = 20;
const num TTWarehouseE = 20;

// Hauler states
enum hauler_state {
  Loading,
  Unloading,
  TravellingToLoad,
  TravellingToUnload,
  Waiting
}
