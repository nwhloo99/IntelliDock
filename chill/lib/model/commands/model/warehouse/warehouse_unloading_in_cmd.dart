import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class WarehouseUnloadingInCommand extends Command {
  Hauler hauler;
  PortMap map;
  String warehouseName;
  num bayNumber;

  WarehouseUnloadingInCommand(
      this.hauler, this.warehouseName, this.bayNumber, this.map) {}

  void execute() {
    this.map.warehouse_unloading_in(hauler, warehouseName, bayNumber);
  }
}
