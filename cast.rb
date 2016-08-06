p "Q1"
# 以下の実行結果はどれか
#　1. (1/1)
#    (1/2)
#
# 2. 1
#    (1/2)
#
# 3. 1.0
#    0.5
#
# 4. 1
#    0.5
#
a = 2 / 2r
p a
b = a / 2r
p b

p "Q2"
# 以下の実行結果はどれか
#　1. (1/1)
#    (1/1)
#
# 2. 3.0
#    (1/1)
#
# 3. (1/1)
#    1.0
#
# 4. 3.0
#    3.0
#
a = 2r + 1.0
p a
b = a * 1r
p b

p "Q3"
# 以下の実行結果はどれか
# 1.Complex
#   Float
#   Float
#
# 2.Complex
#   Complex
#   Float
#
# 3.Complex
#   Complex
#   Complex
#
a = 2 / 2i
p a.class
b = a * 2.0
p b.class
c = 2.0 / b
p c.class
