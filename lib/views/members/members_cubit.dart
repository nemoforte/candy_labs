import 'package:bloc/bloc.dart';
import 'package:candy_labs/views/members/member_model.dart';

class MembersCubit extends Cubit<MemberModel> {
  MembersCubit() : super(MemberModel(index: 0));

  void number(int state) => emit(MemberModel(index: state));
}
