

import 'consoledatabaseconnection.dart' as consoledatabaseconnection;
import 'dart:io';
import 'dart:convert' show UTF8, JSON;

String query_dy;
main(List<String> arguments) async {
  
  HttpServer.bind('127.0.0.1', 8083).then((server) {
    server.listen((HttpRequest request) {
    request.response.headers.add("Access-Control-Allow-Origin", "*");
    request.response.headers.add("Access-Control-Allow-Methods", "POST,GET,DELETE,PUT,OPTIONS");
    request.response.headers.add('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept,application/x-www-form-urlencoded');
   
    if(request.method == "POST") {
      List<int> dataBody = new List<int>();
      request.listen(dataBody.addAll, onDone: () async{  
        query_dy = new String.fromCharCodes(dataBody);
        request.response.write(await consoledatabaseconnection.someList(query_dy));
        request.response.close();
      });
    } 
  });
 });
    
}


//  //print('Hello world: ${await consoledatabaseconnection.someList(ttt)}');
//  HttpServer server = await HttpServer.bind('127.0.0.1', 8082);
//  
//    await for (HttpRequest request in server) {
//      request.response.headers.add("Access-Control-Allow-Origin", "*");
//      request.response.headers.add("Access-Control-Allow-Methods", "POST,GET,DELETE,PUT,OPTIONS");
//      request.response.headers.add('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept,application/x-www-form-urlencoded');
//      request.listen((data1){
//        query_dy=new String.fromCharCodes(data1);
//        print('connection listen');
//        handleRequest(request);
//               });
//      //request.response.write(await consoledatabaseconnection.someList(query_dy)); 
//            request.response.write('under main');
//           
//    }


// handleRequest(HttpRequest request) async{
//
//  try {
//    if (request.method == 'POST') {
//      print('POST');
//      print(await consoledatabaseconnection.someList(query_dy));
//      request.response.close().then((server){
//                   print('connection closed');
//                 });
//   
//    } else {
//      print('request others');
//      request.response.statusCode=404;
//    }
//  } catch (e) {
//    print('Exception in handleRequest: $e');
//  }
//  print('Request handled.');
//}
