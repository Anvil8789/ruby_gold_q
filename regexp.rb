p "Q1"
# 以下を実行した場合の結果を選べ
# 1. aa
#    bb
#    cc
#
# 2. aa
#    aabbcc
#    cc
#
# 3. cc
#    bb
#    aa
#
/bb/ =~ "aabbcc"
p $'
p $&
p $`

p "Q2"
# 以下を実行した場合の結果を選べ
#　1.http://www.
#   .xyz.org
#   nil
#
# 2.http://www.xyz.org/
#   http://www.
#   xyz.org
#
# 3.http://www.xyz.org/
#   .
#   xyz.org
#
%r|(http://www(\.)(.*)/)| =~ "http://www.xyz.org/"
p $1
p $2
p $3
