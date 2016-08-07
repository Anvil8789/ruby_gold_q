require "Date"

p "Q1"
# 以下の実行結果を選べ
# 1.DateTime
#   Time
#   Date
#
# 2.Relation
#   Float
#   Date
#
# 3.Relation
#   Float
#   Relation
#
d1 = DateTime.new
d2 = DateTime.new
p (d1 - d2).class
d3 = Time.new
d4 = Time.new
p (d3 - d4).class
d5 = Date.new
d6 = Date.new
p (d5 - d6).class
