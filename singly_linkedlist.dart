void main() {
  LinkedList list = LinkedList();
  list.insertAtStart(
      EmployeeInfo(name: "deepak", age: 24, companyName: "Georadius"));
  list.insertAtStart(
      EmployeeInfo(name: "Suraj", age: 24, companyName: "Georadius"));
  list.insertAtEnd(
      EmployeeInfo(name: "Neeraj", age: 24, companyName: "Georadius"));
  list.insertAtEnd(
      EmployeeInfo(name: "Dheeraj", age: 24, companyName: "Georadius"));
  list.deleteFromStart();
  list.deleteFromEnd();
  list.searchEmployee(
      EmployeeInfo(name: "deeraj", age: 24, companyName: "Georadius"));
  list.printList();
}

class EmployeeInfo {
  String name;
  int age;
  String companyName;

  EmployeeInfo(
      {required this.name, required this.age, required this.companyName});
}

class Node {
  EmployeeInfo data;
  Node? next;

  Node(this.data, [this.next = null]);
}

class LinkedList {
  Node? head;

  void insertAtStart(EmployeeInfo data) {
    head = Node(data, head);
  }

  void insertAtEnd(EmployeeInfo data) {
    Node? current = head;
    if (head != null) {
      while (current?.next != null) {
        current = current!.next;
      }
      current!.next = Node(data);
    } else {
      head = Node(data, head);
    }
  }

  void deleteFromStart() {
    if (head != null) {
      head = head!.next;
    } else {
      print("No data to delete");
    }
  }

  void deleteFromEnd() {
    Node? current = head;
    if (head != null) {
      while (current?.next?.next != null) {
        current = current!.next;
      }
      current!.next = null;
    } else {
      print("No data to delete");
    }
  }

  void searchEmployee(EmployeeInfo data) {
    Node? current = head;
    bool isFounded = false;
    if (head != null) {
      while (current != null) {
        if (current.data.name.toLowerCase().contains(data.name.toLowerCase()) &&
            current.data.age
                .toString()
                .toLowerCase()
                .contains(data.age.toString().toLowerCase()) &&
            current.data.companyName
                .toLowerCase()
                .contains(data.companyName.toLowerCase())) {
          isFounded = true;
          break;
        }
        current = current.next;
      }
    } else {
      print("No employee data found.");
    }
    if (isFounded) {
      print(
          "Found employee : (${current!.data.name},${current.data.age},${current.data.companyName})");
    } else {
      print("No employee found.");
    }
  }

  void printList() {
    Node? current = head;
    if (head != null) {
      while (current != null) {
        print(
            "name : ${current.data.name} , age : ${current.data.age} , company : ${current.data.companyName}");

        current = current.next;
      }
    } else {
      print("No employee data found.");
    }
  }
}
