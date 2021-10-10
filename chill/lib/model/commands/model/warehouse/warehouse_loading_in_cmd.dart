import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class WarehouseInCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseInCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {
    execute();
  }

  void execute() {
    this.model.warehouse_in(haulerNum, warehouseName, bayNumber);
  }
}
