import 'package:chill/utils/constants.dart';

class Request {
  JobType type;
  num bayNum;
  String warehouseName;

  Request(this.type, this.warehouseName, this.bayNum);
}
