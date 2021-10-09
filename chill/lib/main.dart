import 'package:chill/constants.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/model/warehouse/warehouse.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/screens/constants.dart';
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
  HaulerUser haulerUser = new HaulerUser(new Hauler(42069));
  WarehouseUser bayUser = new WarehouseUser(new Warehouse('A', 10));
  Model simulatedModel = new Model([17, 17, 8, 8, 21]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    simulatedModel.loadingQueue.receiveLoadingRequest(new Request(
        request_type.Loading, simulatedModel.map, new DockingBay(2), 'A'));
    simulatedModel.loadingQueue.receiveLoadingRequest(new Request(
        request_type.Loading, simulatedModel.map, new DockingBay(3), 'A'));
    simulatedModel.loadingQueue.receiveLoadingRequest(new Request(
        request_type.Loading, simulatedModel.map, new DockingBay(1), 'A'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: fFamily),
      home: LoginPage(simulatedModel),
    );
  }
}
