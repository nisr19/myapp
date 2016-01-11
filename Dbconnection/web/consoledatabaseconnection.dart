// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The consoledatabaseconnection library.
library Dbconnection;
import 'dart:async';
import 'package:postgresql/postgresql.dart';
import 'dart:io';

//add(String query) async{
// var uri = 'postgres://postgres:root@localhost:5432/testdb';
// var conn = await connect(uri); 
// var sql = query;
// return conn.query(sql).toList();
//}

someList(String name) async {
  var uri = 'postgres://postgres:root@localhost:5432/testdb';
   var conn = await connect(uri); 
   var sql = name;
   return conn.query(sql).toList();
}


//add(String query) async{
// var uri = 'postgres://postgres:root@localhost:5432/testdb';
// var conn = await connect(uri); 
// var sql = query;
// return conn.query(sql).toList();
//}
//
//Future someList(String name) {
//  return add(name);
//}


//String json="default";

//int calculate() async{
//  var uri = 'postgres://postgres:root@localhost:5432/testdb';
//  var conn = await connect(uri);
//   
//      var sql = 'select * from test';
//      var result = await conn.query(sql).toList();
//     //print(result);
//      
//  
//  await connect(uri).then((conn) { 
//    json= conn.query('select * from test').toList().then((rows) {
//       for (var row in rows) {
//         
//       }
//
//     
//      });
//    }); 
// 
//  
////  return json;
//
//}

// add() async{
//  var uri = 'postgres://postgres:root@localhost:5432/testdb';
//  var conn = await connect(uri);
//  var sql = 'select * from test';
//  var result = await conn.query(sql).toList().then((rows){
//    print(rows);
//   
//  }); 
//  
//}


 
// Future someOtherFunc() async {
//   //print(await add());
//   return await add();
// }


// Stream<int> someStream() async* {
//   for(int i = 0; i < 10; i++) yield i;
// }


