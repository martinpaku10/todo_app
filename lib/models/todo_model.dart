// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'dart:convert';

TodoModel todoModelFromJson(String str) => TodoModel.fromJson(json.decode(str));

String todoModelToJson(TodoModel data) => json.encode(data.toJson());

class TodoModel {
    TodoModel({
        this.message,
        this.data,
    });

    String? message;
    List<Datum>? data;

    factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.title,
        this.description,
        this.isCompleted,
        this.date,
        this.v,
    });

    String? id;
    String? title;
    String? description;
    bool? isCompleted;
    DateTime? date;
    int? v;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        isCompleted: json["isCompleted"],
        date: DateTime.parse(json["date"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "isCompleted": isCompleted,
        "date": date!.toIso8601String(),
        "__v": v,
    };
}
