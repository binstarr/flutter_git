class Todo {
  var userId;
  var id;
  var title;
  var completed;

// 모든 객체는 클래스에 인스턴스 입니다.
// 메모리에 올릴 때 생성자가 필요합니다.
  Todo.fromJson(Map<String, dynamic> map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        completed = map['completed'];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
