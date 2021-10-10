import 'package:chill/utils/constants.dart';
import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/screens/login/login_screen.dart';
import 'package:chill/utils/template_models.dart';
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

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // Initialization of Users & Model
  HaulerUser haulerUser = new HaulerUser(new Hauler(0));
  WarehouseUser bayUser = new WarehouseUser(generateModelB()
      .map
      .warehouses
      .firstWhere((element) => element.warehouseName == ('A')));
  Model simulatedModel = generateModelB();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntelliDock',
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
