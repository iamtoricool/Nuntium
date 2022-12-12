import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nuntium/Auth/GetResources/Category%20List/category_model.dart';
import 'package:nuntium/constant/ServerConfig.dart';

class AppCallCategoryList {
  Future categoryList() async {
    var response = await http.get(
      Uri.parse(ServerConfig.serverURL + ServerConfig.newsCategoryURL),
    );
    var data = jsonDecode(response.body);
    var loadedData = CategoryList.fromJson(data);
    return loadedData;
  }
}
