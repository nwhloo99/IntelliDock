import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';

class LoadingRequest extends Request {
  Duration estimatedReadyTime;
  DateTime startTime;

  LoadingRequest(DockingBay bay, this.estimatedReadyTime, this.startTime)
      : super(bay) {}

  void updateDuration(Duration change) {
    estimatedReadyTime -= change;
  }

  void pushToModel(Hauler acceptee) {
    // Sends Request to model to stimulat estimated time
  }

  int compareEstimate(LoadingRequest target) {
    return (this.estimatedReadyTime - target.estimatedReadyTime).inMinutes;
  }

  int compareStart(LoadingRequest target) {
    return (this.startTime.difference(target.startTime)).inMinutes;
  }
}
