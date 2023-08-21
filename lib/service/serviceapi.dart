import 'dart:convert';
import 'package:http/http.dart' as http;
import '../const/const.dart';
import '../model/model.dart';

Future<dynamic> futureAlbum() async {
  print('fhfd');
  var responce = await http.get(Uri.parse('$baseUrl/posts'));
  if (responce.statusCode == 200) {
    var userBody = jsonDecode(responce.body);
    var userList = userBody.map((e) => User.fromJson(e)).toList();
    print(userList);
    return userList;
  } else {
    throw 'Error';
  }
}

Future postdata({User ? user}) async {



  var res = await http.(
    Uri.parse('$baseUrl/posts'),
    body: jsonEncode(user!.toJson()),
  );

}
