import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class WarehouseOutCommand extends Command {
  num haulerNum;
  Model model;
  String warehouseName;
  num bayNumber;

  WarehouseOutCommand(
      this.haulerNum, this.warehouseName, this.bayNumber, this.model) {
    execute();
  }

  void execute() {
    this.model.warehouse_out(haulerNum, warehouseName, bayNumber);
  }
}
