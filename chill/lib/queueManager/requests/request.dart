import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/warehouse/docking_bay.dart';

abstract class Request {
  DockingBay bay;
  late Duration estimatedReadyTime;
  DateTime startTime;

  Request(this.bay, this.startTime) {
    this.estimatedReadyTime = startTime.difference(DateTime.now());
  }

  void updateDuration(Duration change) {
    estimatedReadyTime = startTime.difference(DateTime.now());
  }

  void pushToModel(Hauler acceptee) {
    // Sends Request to model to stimulat estimated time
  }
}
