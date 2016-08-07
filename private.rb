p "Q1"
# 以下のコードを実行した結果を選べ
# 1. hoge!!
#    super!!
#
# 2. hoge!!
#    実行時エラー「NoMethodError」
#
# 3. 実行時エラー「StandardError」
#
# 4. 実行時エラー「NameError」
#
class Foo
    private
    def hoge
        p 'super!!'
    end
end

class Bar < Foo
    def hoge
        p 'hoge!!'
        super
    end
end

Bar.new.hoge


p "Q2"
# 以下のコードを実行した結果を選べ
# 1. hoge!!
#    moge!!
#
# 2. hoge!!
#    実行時エラー「NoMethodError」
#
# 3. 実行時エラー「NoMethodError」
#
# 4. 実行時エラー「NameError」
#
class High
    private
    def moge
        p 'moge!!'
    end
end

class Low < High
    def hoge
        p 'hoge!!'
        moge
    end
end

Low.new.hoge
