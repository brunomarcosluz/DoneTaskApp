class Task {
  final String id;
  final String name;
  final DateTime createDate; 
  final String isImportant;
  final DateTime doneDate;

  Task ({
    required this.id,
    required this.name,
    required this.createDate,
    required this.isImportant,
    required this.doneDate,
  });
}