import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';

class CreateRequestCommand extends Command {
  Request request;
  Model model;

  CreateRequestCommand(this.request, this.model) {}

  void execute() {
    this.model.receiveRequest(request);
  }
}
