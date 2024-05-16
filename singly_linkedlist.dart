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
