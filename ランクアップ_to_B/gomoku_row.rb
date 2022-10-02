# やりたいこと
# XXXXXがあればX,OOOOOがあればO、なければDを出力

# ーーーーーーーーーーーーーーーーーーーーー
# 自分の答え

# X,Oの個数を調べて5個あれば勝ちというふうにした
map=5.times.map{gets.chomp.split("")}
result="D"
# x,oの数を数える方針
map.each do |row|
    # p row
    xc=0
    oc=0
    row.each do |i|
      xc+=1 if i=="X"
      oc+=1 if i=="O"
    end
    # p "xc"+xc.to_s
    # p "oc"+oc.to_s

    if xc>=5
      result="X"
    elsif oc>=5
      result="O"
    end
end

puts result
