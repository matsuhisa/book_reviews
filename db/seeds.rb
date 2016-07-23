# Book
[
  { title: "イズムの功過", author: "夏目漱石" },
  { title: "一夜", author: "夏目漱石" },
  { title: "永日小品", author: "夏目漱石" },
  { title: "薤露行", author: "夏目漱石" },
  { title: "学者と名誉", author: "夏目漱石" },
  { title: "硝子戸の中", author: "夏目漱石" },
  { title: "虚子君へ", author: "夏目漱石" },
  { title: "草枕", author: "夏目漱石" },
  { title: "虞美人草", author: "夏目漱石" },
  { title: "ケーベル先生", author: "夏目漱石" },
  { title: "こころ", author: "夏目漱石" },
  { title: "三四郎", author: "夏目漱石" },
].each_with_index do |book, index|
  Book.create(id:index+1, title: book[:title], author: book[:author])
end
