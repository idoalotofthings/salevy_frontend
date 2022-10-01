extension ListUtil on List {
  List copy() {
    return this;
  }

  List getElements(int from, int to) {
    var formattedList = [];

    for (int i in List.generate(to, (index) => index)) {
      formattedList.add(this[i]);
    }

    return formattedList;
  }
}
