# 値のバケツリレー
# 値を対応させたいのでハッシュ
p,q,r=gets.split.map(&:to_i)

atob={}
p.times do |m|
    i,j=gets.split.map(&:to_i)
    atob[i]=j
end
# p atob
# {2=>1, 1=>2}

btoc={}
q.times do |m|
    j,k=gets.split.map(&:to_i)
    btoc[j]=k
end
# p btoc
# {1=>1, 2=>2}

ctoa={}
# cにはr人いるがp人分だけでいい
# ctoaのkeyが1,2,..番目のvalueがほしい
# =>左辺はctoa[i+1]でOK
# 右辺はbtocのvalueがほしいが、1,2..番目じゃなくbtoc[key]がほしい
# これはbtoc[key]でもatobのvalueどちらでもかけるが、1,2..i+1番目と取得したいので後者でやる
# atob[i+1]で1,2...となる
# キーがatob[i+1]の時のbtocのvalueが右辺

p.times do |i|
    ctoa[i+1]=btoc[atob[i+1]]
end

# p ctoa
# {1=>2, 2=>1}

ctoa.each do |i|
    puts "#{i[0]} #{i[1]}"
end
