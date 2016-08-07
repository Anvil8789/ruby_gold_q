p "Q1"
# 以下の実行結果で出よくされるものをすべて選べ
# 1.fuga
# 2.fuga2
# 3.fuga3
# 4.fuga4
# 5.NameError
# 6.NoMethodError
class Hoge
    def fuga; p "fuga" end
    def fuga2; p "fuga2" end
    def method_missing(m, *args)
        p m.to_s
    end
end

class Moge < Hoge
    begin
        alias :fuga3 :fuga
        alias :fuga4 :fuga2
        undef_method :fuga
        remove_method :fuga2
    rescue =>e
        p e.class
    end
end

Moge.new.fuga
Moge.new.fuga2
Moge.new.fuga3
Moge.new.fuga4
