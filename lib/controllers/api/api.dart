import 'package:http/http.dart' as http;
import 'package:eduset/models/listmodel.dart';
import 'package:intl/intl.dart';

import 'dart:convert';

class Api {
  static const BASE_URL = 'http://192.168.18.98:8000/api/';






  static Future payment() async {
    var url = Uri.parse('http://192.168.18.98:8000/api/city');
    final response = await http.get(url,);
    return response;
  }

  // static Future<List<Details>> fetchDetail(id) async {
  //   var url = Uri.parse(BASE_URL + 'api/auth/orders/' + id);
  //   final response = await http.get(url,);
  //   final responseBody = json.decode(response.body);
  //   return detailsFromJson(responseBody['data']['items']);
  // }

  static Future<List<City>> fetchCity() async {
    var url = Uri.parse('http://192.168.18.98:8000/api/city');
    final response = await http.get(url,);
    final responseBody = json.decode(response.body);
    print(responseBody);
    return cityFromJson(responseBody['data']);

  }







  // static Future placeOrder() async {
  //   Cart cart = Cart();
  //   var url = Uri.parse(BASE_URL + "/api/auth/orders/store");
  //   final data = cart.toJson();
  //   print(json.encode(data['order_items']));
  //   final response = await http.post(url,
  //       body: {
  //         'price': data['price'].toString(),
  //         'order_items': json.encode(data['order_items'])
  //       },
  //       headers: headers);
  //   print(response.statusCode);
  //   print(response.body);
  //   final status = response.statusCode == 200 || response.statusCode == 201;
  //   if (status) {
  //     cart.clear();
  //   }
  //   return status;
  // }

//   static Future<List<Fruitprod>> placeOrderOld(
//       {product, quantity, price}) async {
//     DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
//     String string = dateFormat.format(DateTime.now());
//     Auth user = new Auth();
//     Cart cart = Cart();
//     int index;
//
//     var url = Uri.parse(BASE_URL + "/api/order");
//     final response = await http.post(url, body: {
//       'product': product,
//       'quantity': quantity,
//       'customerid': user.username,
//       'address': user.name,
//       'ordertime': string,
//       'price': price
//     });
//
//     return fruitprodFromJson(response.body);
//   }
}