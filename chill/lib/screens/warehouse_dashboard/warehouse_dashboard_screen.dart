import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/utils/constants.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid.dart';
import 'package:flutter/material.dart';

class WarehouseDashboardScreen extends StatefulWidget {
  final WarehouseUser warehouseUser;

  const WarehouseDashboardScreen(this.warehouseUser, {Key? key})
      : super(key: key);

  @override
  _WarehouseDashboardScreenState createState() =>
      _WarehouseDashboardScreenState();
}

class _WarehouseDashboardScreenState extends State<WarehouseDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(children: <Widget>[
                  Container(
                      child: Text(this.widget.warehouseUser.warehouseName(),
                          style: TextStyle(
                              fontSize: kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  DockingBayGrid(this.widget.warehouseUser),
                ]))));
  }
}
