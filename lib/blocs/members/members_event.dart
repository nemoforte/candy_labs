import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MembersEvent extends Equatable {
  const MembersEvent();
}

class LoadMembersEvent extends MembersEvent {
  @override
  List<Object> get props => <Object>[];
}
