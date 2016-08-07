p "Q1"
# 以下の実行結果を選べ
# 1.M
# 2.P
# 3.実行時エラー
module M
    def foo
        p "M"
    end
end

class Parent
    def foo
        p "P"
    end
end

class Son < Parent
    include M
end

Son.new.foo

p "Q2"
# 以下の実行結果を選べ
# 1. A
# 2. B
# 3. C
# 4. 実行時エラー
module A
    protected
    def foo
        p "A"
    end
end

module B
    include A
    public :foo
end

class X
    begin
        prepend A
        include B
    rescue NoMethodError
        p "B"
    rescue
        p "C"
    end
end

X.new.foo
