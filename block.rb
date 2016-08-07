p "Q1"

# 以下の実行結果を選べ
# 1. Block is given
# 2. Block isn't given
# 3. rescue!!
# 4. 文法エラー
def check
    begin
        if block_given?
            yield
            "Block is given"
        else
            "Block isn't given"
        end
    rescue
        "rescue!!"
    end
end

p check

p "Q2"
# 実行結果を選べ
# 1. 6
# 2. 実行時エラー
# 3. 文法エラー
def math(a, b, &c )
    c.call(a, b)
end

def do_math(a, b, &op)
    math(a, b, &op)
end
p do_math(2, 3, & -> (x, y) { x * y })
