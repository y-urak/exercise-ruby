# 課題3

a="this is a pen"
# upcase -> 大文字への変更するメソッド
p a.upcase
p a
# !がつくとオブジェクトの内容自体を変化させる(破壊的な変更)
p a.upcase!
p a

s="こんにゃく"
# encode -> 日本語のエンコードを変更するメソッド
s_euc=s.encode("EUC-JP")
# == -> 文字列を比較する　同じ文字列でもエンコーディングが違うとFalseになる
p s==s_euc
# もちろん結合もできない((Encoding::CompatibilityError)
#p s+s_euc
# 英数文字ではASCIIとして扱われるためエンコードの影響を受けない
s="abc,efg,hij"
s_euc=s.encode("EUC-JP")
p s==s_euc
p s+s_euc
# ascii_only? -> ASCII文字のみで構成されているかの確認
p s.ascii_only?
p s_euc.ascii_only?

# split -> 文字列を分割したい文字で分割してlistにする
p s.split(",")
# partition, rpartition -> 文字列を分割したい文字で　[分割したい文字の前の文字列,分割したい文字,分割したい文字の後の文字列]　に分割する
p s.partition("f")
p s.rpartition("f")
# それぞれの違いは分割する文字が存在しなかったときに文字列をどこに格納するか
# partition -> リストの先頭に格納
p s.partition("k")
# rpartiion -> リストの末尾に格納
p s.rpartition("k")