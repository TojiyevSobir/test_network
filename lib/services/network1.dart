import 'dart:convert';
import 'package:http/http.dart';
import 'package:test_network/models/Post.dart';


class Network1 {

  static String BASE = "dummy.restapiexample.com";
  static Map<String, String> headers = {
    "Content-type": "application/json;charset=utf-8",
  };

  //*Http Apis
  static String API_LIST = "/api/v1/employees";
  static String API_LIST2 = "/employees";//{id}
  static String API_CREATE = "/create";
  static String API_UPDATE = "/update"; //{id}
  static String API_DELETE = "/delete"; //{id }

  //*Http Request
  static Future<String> GET(String api, Map<String, String> params) async {
    print("------->>>>>> 1");
    try{
    var uri = Uri.http("dummy.restapiexample.com/api/v1/employees", api, params);

    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
    }
    on Exception catch (ex) {
      print("------->>>>>> 0");
      print(ex.toString());
      throw Exception("Error on server");
    }
    print("------->>>>>> 2");

    print("------->>>>>> 3");

  }

  //Post
  static Future<String> POST(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api);
    var response = await post(uri, headers: headers, body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  //Put
  static Future<String> PUT(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api);
    var response = await put(uri, headers: headers, body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  //*Http DEL
  static Future<String> DEL(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await delete(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = new Map();
    return params;
  }

  static Map<String, String> paramsCreate(Post post) {
    Map<String, String> params = new Map();
    params.addAll({
      'id': post.id.toString(),
      'employee_name': post.employeeName,
      'employee_salary': post.employeeSalary.toString(),
      'employee_age': post.employeeAge.toString(),
      'profile_image': post.profileImage.toString(),
    });
    return params;
  }

  static Map<String, String> paramsUpdate(Post post) {
    Map<String, String> params = new Map();
    params.addAll({
      'id': post.id.toString(),
      'employee_name': post.employeeName,
      'employee_salary': post.employeeSalary.toString(),
      'employee_age': post.employeeAge.toString(),
      'profile_image': post.profileImage.toString(),
    });
    return params;
  }
}
