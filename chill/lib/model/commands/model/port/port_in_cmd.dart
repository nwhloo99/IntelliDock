import 'package:chill/model/commands/command.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';

class PortInCommand extends Command {
  Hauler hauler;
  Model model;
  PortInCommand(this.hauler, this.model) {}

  void execute() {
    this.model.port_in(hauler);
  }
}
