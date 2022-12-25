Map<int, String> firstNameMap = <int, String>{1: 'Karol ', 2: 'Olga ', 3: 'Marcin ', 4: 'Dominik ', 5: 'Pawel ', 6: 'Renata ', 7: 'Mateusz '};
Map<int, String> lastNameMap = <int, String>{1: 'Wietrzynski', 2: 'Winconek', 3: 'Skiper', 4: 'Pająk', 5: 'Łąk', 6: 'Wietrzyńska', 7: 'Kot'};
Map<int, String> imageMap = <int, String>{1: 'assets/KW.jpg', 2: 'assets/OW.jpg', 3: 'assets/MS.jpg', 4: 'assets/DP.jpg', 5: 'assets/PL.jpg', 6: 'assets/RW.jpg', 7: 'assets/MW.jpg'};

String firstName(int n) {
  return firstNameMap[n]!;
}

String lastName(int n) {
  return lastNameMap[n]!;
}

String image(int n) {
  return imageMap[n]!;
}
