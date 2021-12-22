// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_home_view.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoHomeView(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff5f6d95)),
          titleTextStyle: TextStyle(
            color: Color(0xff5f6d95),
            fontSize: 34,
          )
        )

      ),

      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
         appBarTheme: AppBarTheme(
          backgroundColor: Colors.black38,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xffffffff)),
          titleTextStyle: TextStyle(
            color: Color(0xffffffff),
            fontSize: 34,
          )
        )

      ),

      ),

    
  );
}