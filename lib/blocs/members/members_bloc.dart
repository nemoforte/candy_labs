import 'package:bloc/bloc.dart';
import 'package:candy_labs/blocs/members/members_event.dart';
import 'package:candy_labs/blocs/members/members_state.dart';
import 'package:candy_labs/models/member.dart';
import 'package:candy_labs/repositories/members_repository.dart';

class MembersBloc extends Bloc<MembersEvent, MembersState> {
  final MembersRepository _membersRepository;

  MembersBloc(this._membersRepository) : super(MembersLoadingState()) {
    on<LoadMembersEvent>(
          (LoadMembersEvent event, Emitter<MembersState> emit) async {
        emit(MembersLoadingState());
        try {
          final List<Member> members = await _membersRepository.getMembers();
          emit(MembersLoadedState(members));
        } catch (e) {
          emit(MembersErrorState(e.toString()));
        }
      },
    );
  }
}
