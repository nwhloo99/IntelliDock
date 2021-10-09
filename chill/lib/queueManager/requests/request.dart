import 'package:chill/model/warehouse/docking_bay.dart';

abstract class Request {
  DockingBay bay;

  Request(this.bay) {}
}
