# 問題

# l=[["A", "1"], ["D", "6"], ["C", "2"], ["G", "4"], ["B", "70"], ["A", "10"], ["B", "5"]]をアルファベットが同じ者同士を足して、数字が大きい順に表示

# ==========================================
# 自分の答え

n=gets.to_i
l=n.times.map{gets.chomp.split}
	
# hashでやってみる
# keyがb1番目
p l
h={}
l.each do |e|
  str=e[0]
  # ここでto_iすればわざわざa=[]してpushしなくて済む
    num=e[1].to_i
    
    if h[str]
        h[str]+=num
      else
        h[str]=num
      end
    end
    # p h
    # {"A"=>11, "D"=>6, "C"=>2, "G"=>4, "B"=>75}
    # ※右辺が1だと"A"=>2のように個数の和になってしまうので、num=配列lの2番目の値を足してる

a = h.sort_by(&:last).reverse
a.each do |i|
    puts "#{i[0]} #{i[1]}"
end