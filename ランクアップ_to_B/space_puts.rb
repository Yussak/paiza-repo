# 整数 n が与えられるので、n 回、半角スペース区切りで paiza と出力してください。

# 自分の答え
n=gets.to_i
# n=4

a=[]
# n.times do |i|
#   a<<"paiza"
# end
# => iは使わないので下のように書き換えられる
n.times{ a<<"paiza" }

# puts a
# paiza
# paiza

puts a.join(" ")
# paiza paiza

# join()で指定した文字で繋げられる
# スペースを末尾にない状態で表示できる

# ==========================================
# 解答
# n = gets.to_i

# arr = Array.new(n)
# n.times { |i| arr[i] = 'paiza' }

# puts arr.join(' ')