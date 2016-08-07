p "Q1"
# 以下の実行結果を選べ
# 1.hello
# 2.hello world!!
# 3.実行時エラー
module A
    class << self
        def hello
            p "hello"
        end
    end
end

class Foo
    prepend A
    def self.hello
        p "hello world!!"
    end
end

Foo.hello

p "Q2"
# 以下の実行結果を選べ
# 1.hello
# 2.hello world!!
# 3.実行時エラー
module A
    class << self
        def hello
            p "hello"
        end
    end
end

class Bar
    extend A
    def self.hello
        p "hello world!!"
    end
end

Bar.hello

p "Q3"
# 以下の実行結果を選べ
# 1.hello
# 2.hello world!!
# 3.実行時エラー
class B
    class << self
        def hello
            p "hello"
        end
    end
end
class C < B
    def B.hello
        p "hello world!!"
    end
end
C.hello
