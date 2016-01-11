
//liblary
import 'dart:html';
//import 'package:chrome/chrome_app.dart' as chrome;
//import 'package:mongo_dart/mongo_dart.dart';
//import 'package:postgresql/postgresql.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

//variables
var req;


 main()  {
  querySelector("#button").onClick.listen((event) => makeServerResponse());
}
 

 makeServerResponse()async{
   var req_query=(querySelector('#query') as InputElement).value;
   var data = req_query;
   //create http request
   req=new HttpRequest();
   
   req.open('post', 'http://127.0.0.1:8083');
   
   req.setRequestHeader(
            'Content-type',
            'application/x-www-form-urlencoded');
   
   req.send(data);
 
   req.onReadyStateChange.listen((_) {
    if (req.readyState == HttpRequest.DONE &&
     (req.status == 200 || req.status == 0)) {
       print(req.responseText); 
       querySelector('#result').text=req.responseText;
       
     }
    });
   
   await req.onLoadEnd.first;
   
   //loadEnd(req);
  

   
    // Get url page as string
//   try {
//       var response = await HttpRequest.getString("http://127.0.0.1:8082/");
//       handleSuccess(response);
//     } catch (e) {
//       handleFailure(e);
//     }
 }
 

 loadEnd(HttpRequest request) {
   print('loadEnd');
   if (request.status != 200) {
     print('Uh oh, error: ${request.status}');
   } else {
     print('Data has been '+request.responseText);
     
   }
 }
 


// handleSuccess(res){
//   querySelector("#db_name").text=res;
//   
//   print(res);
// }
// handleFailure(error){
//   print(error);
// }
 

 
 



