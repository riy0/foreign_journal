class JournalInfo {
  String title;
  String description;
  String imageUrl;
  String date;

  JournalInfo(this.title, this.description, this.imageUrl, this.date);
}

List<JournalInfo> journalData = [
  JournalInfo('test', 'I played soccer', 'images/image.jpg', 'Jan 1st 2020'),
  JournalInfo('hoge', 'I played soccer', 'images/image.jpg', 'Feb 1st 2020'),
  JournalInfo('hoge', 'I played soccer', 'images/image.jpg', 'Mar 1st 2020'),
];
