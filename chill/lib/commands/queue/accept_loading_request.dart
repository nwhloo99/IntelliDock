import 'package:chill/commands/command.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests/loading_request.dart';

class AcceptLoadingRequest extends Command {
  HaulerUser accepter;
  LoadingRequest request;
  LoadingQueue targetQueue;

  AcceptLoadingRequest(this.accepter, this.request, this.targetQueue) {}

  void execute() {
    this.targetQueue.acceptLoadingRequest(request, accepter);
  }
}
