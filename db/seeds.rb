# Book
[
  { title: "イズムの功過", author: "夏目漱石", asin: "B009AJ8UMW" },
  { title: "一夜", author: "夏目漱石", asin: "B009IXW6DE" },
  { title: "永日小品", author: "夏目漱石", asin: "B009IXK1TA" },
  { title: "薤露行", author: "夏目漱石", asin: "B009IXKL9K" },
  { title: "学者と名誉", author: "夏目漱石", asin: "B009AJDUJA" },
  { title: "硝子戸の中", author: "夏目漱石", asin: "B009IXJXRG" },
  { title: "虚子君へ", author: "夏目漱石", asin: "B009AJD6TE" },
  { title: "草枕", author: "夏目漱石", asin: "B009IXKOFQ" },
  { title: "虞美人草", author: "夏目漱石", asin: "B009IXK5DM" },
  { title: "ケーベル先生", author: "夏目漱石", asin: "B009IXKFCI" },
  { title: "こころ", author: "夏目漱石", asin: "B009IXKPVY" },
  { title: "三四郎", author: "夏目漱石", asin: "B009IXLLU8" },
].each.with_index(1) do |book, index|
  Book.create(id:index, title: book[:title], author: book[:author], asin: book[:asin])
end
