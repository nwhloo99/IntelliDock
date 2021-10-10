import 'package:chill/utils/constants.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/screens/login/login_screen.dart';
import 'package:chill/utils/template_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/** TODO
 * map -> hauler_travelling: parse warehousename into template estTravelTime
 * refactor commands to model instead to neaten code
 * change commands to not reference hauler object but number
 * model should take in total number of haulers
 */
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
  WarehouseUser bayUser = new WarehouseUser(generateModelA()
      .map
      .warehouses
      .firstWhere((element) => element.warehouseName == ('A')));
  Model simulatedModel = generateModelA();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    simulatedModel.loadingQueue
        .receiveLoadingRequest(new Request(request_type.Loading, 2, 'A'));
    simulatedModel.loadingQueue
        .receiveLoadingRequest(new Request(request_type.Loading, 3, 'A'));
    simulatedModel.loadingQueue
        .receiveLoadingRequest(new Request(request_type.Loading, 4, 'A'));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: fFamily),
      home: LoginPage(haulerUser, bayUser, simulatedModel),
    );
  }
}
