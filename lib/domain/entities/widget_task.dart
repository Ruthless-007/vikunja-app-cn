class WidgetTask {
  String id;
  String title;
  DateTime? dueDate;
  bool today;

  WidgetTask({
    this.id = '0',
    this.title = '无',
    this.dueDate,
    this.today = false,
  });

  Map<String, Object?> toJSON() => {
    'id': id,
    '标题': title,
    'dueDate': dueDate?.toUtc().toIso8601String(),
    '今天': today,
  };
}
