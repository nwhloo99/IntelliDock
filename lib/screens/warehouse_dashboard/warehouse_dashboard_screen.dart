import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/utils/constants.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid.dart';
import 'package:flutter/material.dart';

class WarehouseDashboardScreen extends StatefulWidget {
  const WarehouseDashboardScreen(
      {Key? key, required this.warehouseUser, required this.simulatedModel})
      : super(key: key);

  final WarehouseUser warehouseUser;
  final Model simulatedModel;

  @override
  _WarehouseDashboardScreenState createState() =>
      _WarehouseDashboardScreenState();
}

class _WarehouseDashboardScreenState extends State<WarehouseDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(children: <Widget>[
                  Container(
                      child: Text(this.widget.warehouseUser.warehouseName(),
                          style: TextStyle(
                              fontSize: (size.width / 1200) * kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  DockingBayGrid(
                      warehouseUser: this.widget.warehouseUser,
                      simulatedModel: this.widget.simulatedModel),
                ]))));
  }
}
