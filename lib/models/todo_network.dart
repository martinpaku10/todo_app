import 'package:http/http.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoNetwork{

String getDataUrl = "https://tough-ruby-nightshirt.cyclic.app/getAllTodos";

  ///Get all Todos
  Future getAllTodos()async{
    Response response = await get(Uri.parse(getDataUrl));

    if(response.statusCode ==200){
       
      return todoModelFromJson(response.body);
    }else{
      throw{
        Exception("Failed to get data from database")
      };
    }
  }








///post/Create a new todo






///Update a todo by ID




///Delete todo by ID

}