p "Q1"
# 以下を実行したときの出力内容を選べ
# 1. StandardError
# 2. NoNameError
# 3. else
# 4. 例外発生
def hoge
    begin
        raise StandardError
    rescue => e
        p e.class
    rescue NoMethodError => e
        p e.class
    else
        p "else"
    end
end

hoge

p "Q2"
# 以下を実行したときの出力内容を選べ
# 1. 1
#    2
#    3
#
# 2. 1
#    2
#    all rescue !!
#
# 3. all rescue !!
#    2
#    3
#
def hoge
    begin
        raise NoMethodError
    rescue NameError => e
        p "1"
    rescue
        p "all rescue !!"
    end
    begin
        raise NameError
    rescue NameError => e
        p "2"
    rescue
        p "all rescue !!"
    end
    begin
        raise StandardError
    rescue NameError => e
        p "3"
    rescue
        p "all rescue !!"
    end
end

hoge
