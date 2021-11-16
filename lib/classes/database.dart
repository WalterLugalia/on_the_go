import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:io';

class DatabaseFileRoutines{
  Future<String>get _localPath async{
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File>get _localFile async{
    final path = await _localPath;
    return File('$path/local_persistence.json');
  }

  Future<String> readJournals() async {
    try {
      final file = await _localFile;
      if (!file.existsSync()) {
    print("File does not Exist: ${file.absolute}");
    await writeJournals('{"journals": []}');
    }
    // Read the file
    String contents = await file.readAsString();
    return contents;
    } catch (e) {
    print("error readJournals: $e");
    return "";
    }
  }
  Future<File>writeJournals(String json) async{
    final file = await _localFile;
    return file.writeAsString('$json');
  }
}

// to read and parse from Json data -databaseFromJson(jsonString);
Database databaseFromJson(String str){
  final dataFromJson = json.decode(str);
  return Database.fromJson(dataFromJson);
}
String databaseToJson(Database data) {
  final dataToJson = data.toJson();
  return json.encode(dataToJson);
}

class Database{
  List<Journal> journal;

  Database({
    required this.journal,
});

  factory Database.fromJson(Map<String, dynamic> json) => Database(
    journal: List<Journal>.from(json["journals"].map((x) => Journal.fromJson(x))),
  );
  Map<String, dynamic> toJson() =>{
    "journals": List<dynamic>.from(journal.map((x) => x.toJson()))
  };
}

class Journal {
  String id;
  String date;
  String feeling;
  String note;

  Journal({
    required this.id,
    required this.date,
    required this.feeling,
  required this.note,

});
  factory Journal.fromJson(Map<String, dynamic> json) => Journal(
      id: json["id"],
      date: json["date"],
      feeling: json["feeling"],
      note: json["note"]
  );
  Map<String, dynamic> toJson() =>{
    "id": id,
    "date": date,
    "feeling": feeling,
    "note": note,

  };
}


class JournalEdit{
String action;
Journal journal;

JournalEdit({required this.action, required this.journal});
}