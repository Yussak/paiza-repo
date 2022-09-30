# 1 2 3 4 5にa=3が含まれてたらb=1に置き換える

a,b,n=gets.split.map(&:to_i)
l=gets.split.map(&:to_i)

l.each do |i|
    if i==a
        i=b
    end

    puts i
end 

# ここでputs lしても書き換え前が返ってくる。なので繰り返し内で出力