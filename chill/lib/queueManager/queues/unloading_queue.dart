import 'package:chill/queueManager/queues/queue.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/utils/constants.dart';

class UnloadingQueue extends Queue {
  UnloadingQueue() {}

//--------Handling Command requests-------------------------------------------
  /**
   * Handles accept_unloading_request input
   */
  void acceptUnloadingRequest(Request request, HaulerUser haulerUser) {
    requestList.remove(request);
    request.pushToModel(haulerUser);
  }

  /**
   * Handles create_unloading_request input
   */
  bool receiveUnloadingRequest(Request request) {
    if (request.type != request_type.Loading) {
      return false;
    }
    requestList.add(request);
    return true;
  }
}
