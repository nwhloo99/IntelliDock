import 'package:chill/model/commands/command.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';

class CreateLoadingRequest extends Command {
  Request request;
  Model model;

  CreateLoadingRequest(this.request, this.model) {}

  void execute() {
    this.model.receiveLoadingRequest(request);
  }
}
