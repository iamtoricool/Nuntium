import 'dart:convert';
import 'dart:io';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/constant/ServerConfig.dart';
import 'package:http/http.dart' as http;
import 'sign_in_data_model.dart';

class AppCallSignIn {
  Future<bool> signInWithEmail(String email, String password) async {
    var respons = await http.post(
        Uri.parse(ServerConfig.serverURL + ServerConfig.signInURL),
        body: <String, String>{
          'email': email,
          'password': password,
        });
    print(respons.body);
    var datad = jsonDecode(respons.body);
    if (respons.statusCode == 200) {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var loginData = SignInJson.fromJson(datad);
      sharedPreferences.setString('token', loginData.accessToken.toString());
      return true;
    } else {
      throw Exception('Email or Password didn\'t macth\nPlease try again');
    }
  }

  Future<bool> signOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString('token');
    var response = await http.get(
        Uri.parse(ServerConfig.serverURL + ServerConfig.signOutURL),
        headers: {HttpHeaders.authorizationHeader: token.toString()});
    if (response.statusCode == 200) {
      await sharedPreferences.remove('token');
      await sharedPreferences.setString('token', '');
      return true;
    } else {
      return false;
    }
  }
}

// class AppCallSignOut {
//   Future signOut() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.remove('token');
//     await sharedPreferences.setString('token', '');
//   }
// }
