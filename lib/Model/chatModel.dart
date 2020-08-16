import 'package:flutter_chat_im/Model/chatContentModel.dart';
import 'package:flutter_chat_im/Model/sqliteModel/tchatlog.dart';
import 'package:flutter_chat_im/Model/sqliteModel/tuser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chatModel.g.dart';

@JsonSerializable()

class ChatModel{
  Tuser user;
  TChatLog contentModel;

  ChatModel({this.user,this.contentModel});

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
}