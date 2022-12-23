import 'package:bloc/bloc.dart';

class SelectLogic extends Cubit<int> {
  SelectLogic() : super(1);

  void number(int state) => emit(state);
}
