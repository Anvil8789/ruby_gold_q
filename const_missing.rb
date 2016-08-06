p "Q1"
# 以下を実行した場合の結果を選べ
# 1.:A
# 2."A"
# 3.実行時エラー
#
class Foo
    def Foo.const_missing(c)
        p c
    end
end
Foo::A

p "Q2"
# 以下を実行した場合の結果を選べ
# 1.modlue
# 2.class
# 3.実行時エラー
#
module M
    def self.const_missing(c)
        p "module"
    end
end

class Bar
    def self.const_missing(c)
        include M
        p "class"
    end
end
Bar::A
