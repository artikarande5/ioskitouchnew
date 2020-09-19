
/*
 * Created by Arti Karande in the year of 2020.
 * Copyright (c) 2020 Arti Karande. All rights reserved.
 */

import 'package:connectivity/connectivity.dart';

class NetworkCheck {

  Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

 /* dynamic checkInternet(Function func) {
    check().then((intenet) {
      if (intenet != null && intenet) {
        func(true);
      }
      else{
        func(false);
      }
    });
  }*/
}