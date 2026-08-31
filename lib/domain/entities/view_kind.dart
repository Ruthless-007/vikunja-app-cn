enum ViewKind {
  list,
  gantt,
  table,
  kanban;

  static ViewKind fromString(String viewKind) {
    switch (viewKind) {
      case "列表":
        return list;
      case "甘特图":
        return gantt;
      case "表格":
        return table;
      case "看板":
        return kanban;
      default:
        throw Error();
    }
  }
}
