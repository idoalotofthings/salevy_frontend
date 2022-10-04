// Utility extension on List
extension ListUtil on List {
  // Create a copy of a list using this. DON'T use = operator, it will point to the same List
  List copy() {
    return this;
  }

  // Allows you to get specific elements of a list
  List getElements(int from, int to) {
    var formattedList = [];

    for (int i in List.generate(to, (index) => index)) {
      if (i >= from) {
        formattedList.add(this[i]);
      }
    }

    return formattedList;
  }

  List reverseIfNeeded(bool reverse) {
    if (reverse) {
      return reversed.toList();
    } else {
      return this;
    }
  }
}
