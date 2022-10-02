# やりたいこと
# XXXXXがあればX,OOOOOがあればO、なければDを出力
# 縦方向でチェック

# ーーーーーーーーーーーーーーーーーーーーー
# 自分の回答

bo=5.times.map{gets.chomp.split("")}

res="D"
# これで縦書表示できた
5.times do |i|
    xc=0
    oc=0
    bo.each do |row|
        xc+=1 if row[i]=="X"
        oc+=1 if row[i]=="O"

        res="X" if xc>=5
        res="O" if oc>=5
    end
end 

puts res

bo.each do |row|
  ...
  5.times...

  # と書いたら横向きに表示される
  # =>試しに5.timesを外にしたら縦が表示できた