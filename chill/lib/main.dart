import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/model/warehouse/warehouse.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/loadingbay_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/hauler_dashboard_screen.dart';
import 'package:chill/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(new MyApp());
  });
  // runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // Example HaulerUser object
  HaulerUser haulerUser = new HaulerUser(new Hauler(0, 0, 0));
  LoadingBayUser bayUser =
      new LoadingBayUser(new DockingBay('L1'), new Warehouse('A', 10));
  LoadingQueue loadingQueue = new LoadingQueue();
  PortMap simulationMap = new PortMap();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: fFamily),
      home: LoginPage(haulerUser, bayUser, loadingQueue, simulationMap),
    );
  }
}
