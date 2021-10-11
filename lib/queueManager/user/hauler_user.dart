import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/queueManager/requests/request.dart';

/**
 * HaulerUser class to stimualate a user of the app that is a Hauler, 
 * can be updated to include login and additional functionality
 */
class HaulerUser {
  Hauler self;
  List<Request> currentBooking = [];

  HaulerUser(this.self) {}

  Hauler getSelf() {
    return self;
  }

  void addCurrentRequest(Request request) {
    currentBooking.add(request);
  }

  String haulerName() {
    return "Haulier " + self.haulerNum.toString();
  }
}
