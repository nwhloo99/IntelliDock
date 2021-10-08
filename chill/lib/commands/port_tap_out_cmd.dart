import 'package:chill/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/port_map.dart';

class PortTapOutCommand extends Command {
  Hauler haulerNumber;
  PortMap map;
  PortTapOutCommand(this.haulerNumber, this.map) {}

  void execute() {
    this.map.port_out(haulerNumber);
  }
}
