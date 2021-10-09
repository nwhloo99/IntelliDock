import 'package:chill/constants.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

class Request {
  request_type type;
  num bayNum;
  String warehouseName;

  Request(this.type, this.bayNum, this.warehouseName);

  void pushToModel(HaulerUser acceptee) {
    // Sends Request to model to stimulat estimated time
    acceptee.currentBooking.add(this);
  }
}
