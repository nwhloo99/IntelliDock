import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';

class CreateUnloadingRequest extends Command {
  Model model;
  Request request;

  CreateUnloadingRequest(this.request, this.model) {}

  void execute() {
    this.model.receiveUnloadingRequest(request);
  }
}
