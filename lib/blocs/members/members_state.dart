import 'package:candy_labs/models/member.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


@immutable
abstract class MembersState extends Equatable {}

//data loading state
class MembersLoadingState extends MembersState {
  @override
  List<Object?> get props => <Object?>[];
}

//data loaded state
class MembersLoadedState extends MembersState {
  final List<Member> members;

  MembersLoadedState(this.members);

  @override
  List<Object?> get props => <Object?>[members];
}

//data error state
class MembersErrorState extends MembersState {
  final String error;

  MembersErrorState(this.error);

  @override
  List<Object?> get props => <Object?>[error];
}
