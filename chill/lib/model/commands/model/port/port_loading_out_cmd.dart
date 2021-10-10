import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class PortLoadingOutCommand extends Command {
  num haulerNum;
  Model model;
  PortLoadingOutCommand(this.haulerNum, this.model) {}

  void execute() {
    this.model.port_loading_out(haulerNum);
  }
}
