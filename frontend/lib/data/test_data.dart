class JournalInfo {
  String title;
  String description;
  String imageUrl;
  String date;

  JournalInfo(this.title, this.description, this.imageUrl, this.date);
}

List<JournalInfo> journalData = [
  JournalInfo('test1 test2 test3 test4 test5 test6 test7 ', 'I played soccer',
      'images/image.jpg', 'Jan 1st 2020'),
  JournalInfo('test', 'I played soccer', 'images/image.jpg', 'Jan 1st 2020'),
  JournalInfo('hoge', 'I played soccer', 'images/image.jpg', 'Feb 1st 2020'),
  JournalInfo('hoge', 'I played soccer', 'images/image.jpg', 'Mar 1st 2020'),
];
