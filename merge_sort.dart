void main() {
  mergeFun([1, 8, 9, 4, 2, 6, 4, 00, 4, 32, 12]);
}

void mergeFun(List<int> arr) {
  int arrStartIndex = 0;
  int arrEndIndex = arr.length - 1;
  int arrMidIndex = (arrStartIndex + arrEndIndex) ~/ 2;
  List<int> result = [];
  // int indexOfResult = 0;

  while (arrStartIndex < arrMidIndex && arrMidIndex < arrEndIndex) {
    if (arr[arrStartIndex] < arr[arrMidIndex]) {
      result.add(arr[arrStartIndex]);
      arrStartIndex++;
    } else {
      result.add(arr[arrMidIndex]);
      arrMidIndex++;
    }
  }
  while (arrStartIndex < arrMidIndex) {
    result.add(arr[arrStartIndex]);
    arrStartIndex++;
  }
  while (arrMidIndex < arrEndIndex) {
    result.add(arr[arrMidIndex]);
    arrMidIndex++;
  }
  print(result);
}
