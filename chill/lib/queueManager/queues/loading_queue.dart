import 'package:chill/queueManager/queues/queue.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/utils/constants.dart';

class LoadingQueue extends Queue {
  LoadingQueue() {}

//--------Handling Command requests-------------------------------------------
  /**
   * Handles accept_loading_request input
   */
  void acceptLoadingRequest(Request request, HaulerUser haulerUser) {
    requestList.remove(request);
    request.pushToModel(haulerUser);
  }

  /**
   * Handles create_loading_request input
   */
  bool receiveLoadingRequest(Request request) {
    if (request.type != request_type.Loading) {
      return false;
    }
    requestList.add(request);
    return true;
  }
}
