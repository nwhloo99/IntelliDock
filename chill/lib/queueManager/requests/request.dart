import 'package:chill/utils/constants.dart';

class Request {
  request_type type;
  num bayNum;
  String warehouseName;

  Request(this.type, this.warehouseName, this.bayNum);
}
