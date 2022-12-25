import 'package:bloc/bloc.dart';

class ImageCubit extends Cubit<List<String>> {
  ImageCubit() : super(<String>['Karol ', 'Wietrzyński', 'assets/KW.jpg', '1']);

  void karol() => emit(<String>['Karol ', 'Wietrzyński', 'assets/KW.jpg', '1']);

  void olga() => emit(<String>['Olga ', 'Winconek', 'assets/OW.jpg', '2']);

  void marcin() => emit(<String>['Marcin ', 'Skiper', 'assets/MS.jpg', '3']);

  void dominik() => emit(<String>['Dominik ', 'Pająk', 'assets/DP.jpg', '4']);

  void pawel() => emit(<String>['Paweł ', 'Łąk', 'assets/PL.jpg', '5']);

  void renata() => emit(<String>['Renata ', 'Wietrzyńska', 'assets/RW.jpg', '6']);

  void mateusz() => emit(<String>['Mateusz ', 'Kot', 'assets/MW.jpg', '7']);
}
