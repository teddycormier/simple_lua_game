---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

local t = {}

function t.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    backgroundZom = love.graphics.newImage("Images/zombie.png")
    imgWidthZom = backgroundZom:getWidth() -- width of the background
    imgHeightZom = backgroundZom:getHeight()
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
end

function t.draw()
    love.graphics.draw(backgroundZom, -320, -50, 0, W/imgWidthZom + .4, H/imgHeightZom + .4)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("LOSER", 335, 550, W, "center") -- losing statements
end

return t
  
  
  