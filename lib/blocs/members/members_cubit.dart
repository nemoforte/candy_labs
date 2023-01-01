import 'package:bloc/bloc.dart';

import 'package:candy_labs/models/member.dart';

class MembersCubit extends Cubit<Member> {
  final List<Member> members;

  MembersCubit(this.members) : super(members[0]);

  void number(int state) => emit(members[state]);
}
