# やりたいこと
# それぞれの人が受けた合計ダメージを、人の名前のアルファベットの辞書順に出力

# 2
# MIDORIKAWA
# KIRISHIMA
# 2
# KIRISHIMA 1
# KIRISHIMA 2

# とある時配下のように出力
# 3
# 0

# ーーーーーーーーーーーーーーーーーーーー
# 自分の回答
n=gets.to_i
nl=n.times.map{gets.chomp}
m=gets.to_i
# ml=n.times.map{gets.chomp.split}
# =>最後の方でdamageハッシュにpt代入するのでこの時点では読み込まない

# damageハッシュを初期値0にして作る
damage={}
n.times do |i|
    # key定める
    name=nl[i]
    # value定める
    damage[name]=0
end
# p damage
# {"MIDORIKAWA"=>0, "KIRISHIMA"=>0}

# このハッシュにgetsで取得した値を代入して更新する
m.times do |i|
    # damage point
    name,dpt=gets.chomp.split
    damage[name]+=dpt.to_i
end
# p damage
# {"MIDORIKAWA"=>0, "KIRISHIMA"=>3}

# アルファベット順にソートする
# sorted_damage
sd= damage.sort
# [["KIRISHIMA", 3], ["MIDORIKAWA", 0]]

# 出力
sd.each do |i|
    puts i[1]
end