import 'package:chill/model/commands/command.dart';
import 'package:chill/queueManager/queues/loading_queue.dart';
import 'package:chill/queueManager/requests/request.dart';

class CreateLoadingRequest extends Command {
  LoadingQueue targetQueue;
  Request request;

  CreateLoadingRequest(this.targetQueue, this.request) {}

  void execute() {
    this.targetQueue.receiveLoadingRequest(request);
  }
}
