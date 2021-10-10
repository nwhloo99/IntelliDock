import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';

class PortInCommand extends Command {
  num haulerNum;
  Model model;
  PortInCommand(this.haulerNum, this.model) {}

  void execute() {
    this.model.port_in(haulerNum);
  }
}
