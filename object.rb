"Q1"
# 以下の実行結果を選べ
# 1.ture
#   true
#
# 2.true
#   false
#
# 3.false
#   true
#
class Foo
    def initialize(obj = nil)
        @@obj = obj
    end
end

class Bar < Foo
    def getObj
        @@obj
    end
end

a = Foo.new
b = Bar.new(a)
p a == b.getObj
p a.equal? b.getObj
