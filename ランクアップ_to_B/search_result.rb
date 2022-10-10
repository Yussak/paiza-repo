# 検索ワード W が以前に入力されたことがある場合： 履歴中の W を削除する・履歴の先頭に W を追加する。
# 検索ワード W が以前に入力されたことがない場合：履歴の先頭に W を追加する。
# N 個の検索ワードが与えられた後の履歴を表示する

# 入力例
# 6
# apple
# book
# information
# note
# pen
# pineapple

# 出力例
# pineapple
# pen
# note
# information
# book
# apple
# ーーーーーーーーーーーーーーーーーーーー
# 自分の回答
n=gets.to_i
l=n.times.map{gets.chomp}
# p l
# ["book", "candy", "apple", "book", "candy"]

# p l.uniq
# ["book", "candy", "apple"]

# p l.reverse
# ["candy", "book", "apple", "candy", "book"]

puts l.reverse.uniq
# ["candy", "book", "apple"]

# ２回以上出た要素は最後のものだけ残したい
# =>最後から最初と見れば、uniq使うことで最初のだけ残して後は削除できる

# ※uniqは重複要素の最初の値だけ残せる
# p [1, 3, 2, 2, 3].uniq   # => [1, 3, 2]