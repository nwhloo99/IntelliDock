import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';

class PortLoadingTapOutCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  PortLoadingTapOutCommand(this.haulerNumber, this.map) {}

  void execute() {
    this.map.port_out_loading(haulerNumber);
  }
}
