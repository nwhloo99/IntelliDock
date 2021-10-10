import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class PortUnloadingOutCommand extends Command {
  num haulerNum;
  Model model;
  PortUnloadingOutCommand(this.haulerNum, this.model) {}

  void execute() {
    this.model.port_out_unloading(haulerNum);
  }
}
