p "Q1"
# 以下のコードを実行すると出力される文字列は何か
# 1. [Cls2, M2, Cls1, M1, Object, Kernel, BasicObject]
# 2. [M2, Cls2, M1, Cls1, Object, Kernel, BasicObject]
# 3. [Cls2, M1, Cls1, Object, Kernel, BasicObject]
# 4. [Cls2, Cls1, M1, Object, Kernel, BasicObject]
module M1
end
module M2
end
class Cls1
    include M1
end
class Cls2 < Cls1
    p self.ancestors
    include M2
end
hoge = Cls2.new

p "Q2"
# 以下のコードを実行すると出力される文字列は何か
# 1. [Cls4, M4, Cls3, M3, Object, Kernel, BasicObject]
# 2. [M4, Cls3, M3, Cls3, Object, Kernel, BasicObject]
# 3. [Cls4, M3, Cls3, Object, Kernel, BasicObject]
# 4. 実行時エラー
module M3
end
module M4
end
class Cls3
    prepend M3
end
class Cls4 < Cls3
    p self.ancestors
    prepend M4
end
hoge = Cls4.new

p "Q3"
# 以下のコードを実行すると出力される文字列は何か
# 1. [foo, Cls5, M5, Object, Kernel, BasicObject]
# 2. [M6, Cls6, Cls5, M5, Object, Kernel, BasicObject]
# 3. [Cls5, M5, Object, Kernel, BasicObject]
# 4. 実行時エラー
module M5
end
module M6
end
class Cls5
    include M5
    def foo
        p self.ancestors
    end
end
class Cls6 < Cls5
    prepend M6
    def foo
        super
    end
end
p Cls6.new.foo
