# 自分の答え

n=gets.to_i
l=n.times.map{gets.chomp.split}
# [["13:00", "1", "30"]]
# n=2
# l=[["15:59", "0", "1"],["23:20", "1", "00"]]
# l=[["23:59", "0", "1"],["23:20", "1", "00"]]

n.times do |i|
    st=l[i][0].split(":")
    sh=st[0].to_i
    sm=st[1].to_i
    ch=l[i][1].to_i
    cm=l[i][2].to_i

    eh=(sh+ch)
    em=(sm+cm)

    # ここの順番、eh=>emとem=>ehの順では値が変わるので注意
    # 上だとeh評価した後にまた計算してる

    # eh-=24 if eh>=24
    # if em>=60
    #     eh+=1
    #     em-=60
    # end
    # 24:00

    # 省略して一行で書こうとしたが左辺が適用されなかった
    # 回答例も省略なしで書いてるのでそれしかないのかも？
    if em>=60
        eh+=1
        em-=60
    end
    eh-=24 if eh>=24
    # 00:00　こっちが正しい値

    eh=eh.to_s
    em=em.to_s

    eh="0"+eh if eh.length==1
    em="0"+em if em.length==1
    puts eh+":"+em
end

# ==========================================
# 解答

# n = gets.to_i

# n.times do
#   t, c_h, c_m = gets.split(' ')
#   h, m = t.split(':').map(&:to_i)
#   c_h = c_h.to_i
#   c_m = c_m.to_i

#   m += c_m
#   h += c_h
#   if m > 59
#     m -= 60
#     h += 1
#   end
#   h -= 24 if h > 23

#   m = m.to_s
#   h = h.to_s
#   m = '0' + m if m.length == 1
#   h = '0' + h if h.length == 1

#   puts h + ':' + m
# end