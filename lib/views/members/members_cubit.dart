import 'package:bloc/bloc.dart';
import 'package:candy_labs/views/members/member_model.dart';
import 'package:candy_labs/views/members/members_data.dart';

class MembersCubit extends Cubit<Member> {
  MembersCubit() : super(memberList[0]);

  void number(int state) => emit(memberList[state]);
}
