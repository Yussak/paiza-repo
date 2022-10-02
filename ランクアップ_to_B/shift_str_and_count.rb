# やりたいこと
# s,tが
# AA
# abdeeAAbAAAbfde
# のように与えられる時、sがt内に何回現れるか？

# この場合3

# ーーーーーーーーーーーーーーーーーーーーー
# 自分の回答

s,t=2.times.map{gets.chomp}
# abdeeAAbAAAbfde
# 文字列tをsの文字数分ずらしてく

count=0
t.length.times do |i|
    # sliceで文字列の部分を取り出せるが、そのやり方は2つある
    # iからn番目まで
    # iからn個

    # この場合はじまりをずらしてくので終わりのn番目もずれる
    # 後者ならずらしていける
    sub=t.slice(i,s.length)

    if sub==s
        count+=1
    end
end

p count

# ーーーーーーーーーーーーーーーーーーーーー
# 回答

# s,tのようにまとめず個別に定めてもOK（それはそう
pattern = gets.chomp
string = gets.chomp

result = 0
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size)

  result += 1 if substring == pattern
end

puts result