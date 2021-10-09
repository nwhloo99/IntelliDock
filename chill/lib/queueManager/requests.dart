import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/warehouse/docking_bay.dart';

class Request {
  DockingBay loadingBay;
  Duration estimatedReadyTime;

  Request(this.loadingBay, this.estimatedReadyTime) {}

  void updateDuration(Duration change) {
    estimatedReadyTime -= change;
  }

  void pushToModel(Hauler acceptee) {
    // Sends Request to model to stimulat estimated time
  }

  int compare(Request target) {
    return (this.estimatedReadyTime - target.estimatedReadyTime).inMinutes;
  }
}
