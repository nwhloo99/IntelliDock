import 'package:chill/constants.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

class Request {
  request_type type;
  DockingBay bay;
  String warehouseName;

  Request(this.type, this.bay, this.warehouseName);

  void pushToModel(HaulerUser acceptee) {
    // Sends Request to model to stimulat estimated time
    acceptee.currentBooking.add(this);
  }
}
