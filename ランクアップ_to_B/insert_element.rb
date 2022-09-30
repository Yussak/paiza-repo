# 左から M 番目に K を挿入

n,m,k=gets.split.map(&:to_i)
l=gets.split.map(&:to_i)

l.insert(m-1,k)

puts l