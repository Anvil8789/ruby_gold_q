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
    prepend M
    def self.const_missing(c)
        p "class"
    end
end
Bar::A

p "Q3"
# 以下の実行結果を選べ
# 1.実行時エラー
# 2．A
#   実行時エラー
# 3.A
#   B
class Baz
end
def Object.const_missing(c)
    puts c
end
Baz::A
B
