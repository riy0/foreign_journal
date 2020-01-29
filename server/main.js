var express = require("express");
var app = express();

var server = app.listen(3000, function() {
  console.log("Listening on:" + server.address().port);
});

var journalList = [
  {
    id: "001",
    title: "I play soccer",
    description:
      "In the morning, I played soccer with my friend. After that, I went Muji shop. Lots of products are on sale.",
    imageUrl: "http://localhost:3000/journal/photo001.jpg",
    date: "Jan.2"
  },
  {
    id: "002",
    title: "I play soccer",
    description:
      "In the morning, I played soccer with my friend. After that, I went Muji shop. Lots of products are on sale.",
    imageUrl: "http://localhost:3000/journal/photo002.jpg",
    date: "Jan.2"
  }
];

// 写真リストを取得するAPI
app.get("/api/journal/list", function(req, res, next) {
  res.json(journalList);
});

app.get("/api/journal/:journalId", function(req, res, next) {
  var journal;
  for (i = 0; i < journalList.length; i++) {
    if (journalList[i].id == req.params.journalId) {
      var journal = journalList[i];
    }
  }
  res.json(journal.title);
});
