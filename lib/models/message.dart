import 'package:scholar_chat/constants.dart';

class Message {
  final String message;
  var id;

  Message(this.message, this.id);
  factory Message.fromJson(jsonData) {
    return Message(jsonData[KMessage], jsonData['id']);
  }
}
