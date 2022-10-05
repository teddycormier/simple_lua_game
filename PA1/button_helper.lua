helpers = {}

function helpers.makeButton(x, y, w, h, textSpace, text, r, g, b, fn)
    local t = {}
    t.x = x
    t.y = y
    t.w = w
    t.h = h
    t.text = text
    t.r = r
    t.g = g
    t.b = b
    t.onClickedFn = fn
    t.textSpace = textSpace

    function t.draw()
        love.graphics.setColor(t.r, t.g, t.b)
        love.graphics.rectangle("line", t.x, t.y, t.w, t.h, 7)
        love.graphics.setColor(1,1,1)
        love.graphics.printf(t.text, t.x, t.y + t.textSpace, t.w, "center")
    end


    return t
end
