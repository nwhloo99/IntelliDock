import 'package:chill/model/hauler/hauler.dart';

/**
 * HaulerUser class to stimualate a user of the app that is a Hauler, 
 * can be updated to include login and additional functionality
 */
class HaulerUser {
  Hauler self;

  HaulerUser(this.self) {}

  Hauler getSelf() {
    return self;
  }
}
