import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class WarehouseLoadingTapInCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  num warehouseNumber;
  num bayNumber;

  WarehouseLoadingTapInCommand(
      this.haulerNumber, this.warehouseNumber, this.bayNumber, this.map) {}

  void execute() {
    this.map.warehouse_loading_in(haulerNumber, warehouseNumber, bayNumber);
  }
}
