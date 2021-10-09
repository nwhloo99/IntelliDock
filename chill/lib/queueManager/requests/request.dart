import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/user/hauler_user.dart';

abstract class Request {
  PortMap model;
  DockingBay bay;
  late Duration estimatedReadyTime;
  DateTime startTime;

  Request(this.model, this.bay, this.startTime) {
    this.estimatedReadyTime = startTime.difference(DateTime.now());
  }

  void updateDuration(Duration change) {
    estimatedReadyTime = startTime.difference(DateTime.now());
  }

  int compareEstimate(Request target) {
    return (this.estimatedReadyTime - target.estimatedReadyTime).inMinutes;
  }

  int compareStart(Request target) {
    return (this.startTime.difference(target.startTime)).inMinutes;
  }

  void pushToModel(HaulerUser acceptee) {
    // Sends Request to model to stimulat estimated time
    acceptee.currentBooking.add(this);
  }
}
