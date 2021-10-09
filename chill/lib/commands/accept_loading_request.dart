import 'package:chill/commands/command.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests.dart';

class AcceptLoadingRequest extends Command {
  HaulerUser accepter;
  Request request;
  LoadingQueue targetQueue;

  AcceptLoadingRequest(this.accepter, this.request, this.targetQueue) {}

  void execute() {
    this.targetQueue.acceptLoadingRequest(request, accepter);
  }
}
