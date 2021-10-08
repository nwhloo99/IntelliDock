import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/port_map.dart';

class WarehouseTapOutCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  num warehouseNumber;
  num bayNumber;

  WarehouseTapOutCommand(
      this.haulerNumber, this.warehouseNumber, this.bayNumber, this.map) {}

  void execute() {
    this.map.warehouse_unloading_in(haulerNumber, warehouseNumber, bayNumber);
  }
}
