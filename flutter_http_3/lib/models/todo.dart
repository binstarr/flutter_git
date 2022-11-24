// "userId": 1,
// "id": 1,
// "title": "delectus aut autem",
// "completed": false

// json 안에 있는 데이터를 클래스화 하는 방법
class Todo {
  var userId;
  var id;
  var title;
  var completed;

  // 이름이 없는 생성자 1개만 만들 수 있음
  Todo({this.userId, this.id, this.title, this.completed});
  
  Todo.init({this.userId, this.title, this.completed});

  Todo.fromJson(Map<String, dynamic> mapData)
  : id = mapData['id'],
    userId = mapData['userId'],
    title = mapData['title'],
    completed = mapData['completed'];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}