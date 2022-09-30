# a=["HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"]
# の重複している要素の個数を取得したい

# ==========================================
# 解答
a=["HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"]

# の要素がkey、それぞれの個数がvalueのハッシュを作成
# その個数で1じゃないものを表示

hash={}
a.each do |e|
    if hash[e]
        hash[e]+=1
    else
        hash[e]=1
    end
end

p hash
# {"HND"=>1, "NRT"=>1, "KIX"=>1, "NGO"=>5}
# 正直何でこのif文でこれが取得できるか調べてもわからない
# => とりあえず一旦丸暗記する


hash.each do |e|
    puts i[1] if i[1]!=1
end

# => 5