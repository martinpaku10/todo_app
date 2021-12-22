// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_network.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({ Key? key }) : super(key: key);

  @override
  State<TodoHomeView> createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {

  Future? getData;
  TodoNetwork network = TodoNetwork();

  @override
  void initState() {
    getData = network.getAllTodos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "images/img1.jpg"
          ),
        ),
        title: Text("My tasks",
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_sharp)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],

      ),
body: ListView.separated(
  itemBuilder: (context,index) => ListTile(
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline)),
    title: Text("Plan trip to Finland"),
    contentPadding: EdgeInsets.symmetric(vertical: 12),
    trailing: TextButton.icon(
      onPressed: (){}, icon: Icon(Icons.notifications_none_rounded),
      label: Text("Yesterday"),
    )
  ),
   separatorBuilder: (context,index) => SizedBox(height:5),
   itemCount: 10),
    );
    
  }
}