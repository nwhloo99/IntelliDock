import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';

class LoadingRequest extends Request {
  LoadingRequest(DockingBay bay, DateTime startTime) : super(bay, startTime) {}

  int compareEstimate(LoadingRequest target) {
    return (this.estimatedReadyTime - target.estimatedReadyTime).inMinutes;
  }

  int compareStart(LoadingRequest target) {
    return (this.startTime.difference(target.startTime)).inMinutes;
  }
}
