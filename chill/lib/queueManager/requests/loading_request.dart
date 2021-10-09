import 'package:chill/constants.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';

class LoadingRequest extends Request {
  request_type type = request_type.Loading;

  LoadingRequest(PortMap model, DockingBay bay, DateTime startTime)
      : super(model, bay, startTime) {}
}
