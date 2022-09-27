# 自分の答え

s=gets.chomp.split(":").map(&:to_i)
# p s
# [1, 2]
# s=[12,31]

h=s[0]
m=s[1]

m+=30

if m>=60
  h+=1
  m-=60
end

# lengthはstrじゃないと使えないのでi.to_sする
# 何回もh.to_s書きたくないのでここで定める
h=h.to_s
m=m.to_s


# h = '0' + h if h.length == 1というように見やすくかける
if h.length==1
  h="0"+h
end

if m.length==1
  m="0"+m
end

puts h+":"+m

# ==========================================
# 解答

# s = gets

# a = s.split(':').map(&:to_i)
# h = a[0]
# m = a[1]

# m += 30
# if m > 59
#   m -= 60
#   h += 1
# end

# h = h.to_s
# m = m.to_s

# h = '0' + h if h.length == 1
# m = '0' + m if m.length == 1

# puts h + ':' + m