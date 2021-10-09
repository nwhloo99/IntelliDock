import 'package:chill/constants.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';

class UnloadingRequest extends Request {
  request_type type = request_type.Unloading;

  UnloadingRequest(PortMap model, DockingBay bay, DateTime startTime)
      : super(model, bay, startTime) {}
}
