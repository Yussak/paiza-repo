# やりたいこと
# 文字列が与えられるので、先頭1文字と末尾1文字で表される範囲に含まれる文字をすべて出力

# 例
# GINO
# =>
# G
# H
# I
# J
# K
# L
# M
# N
# O

# ーーーーーーーーーーーーーーーーーーーーー
# 回答

s=gets.chomp
sf=s[0]
sl=s[-1]
# p s,sf,slr

puts (sf..sl).to_a

# ("A".."Z").to_aでABC..を表示できる