---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

local t = {}

function t.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    require("button_helper")
    weapons = love.graphics.newImage("Images/weapons.png")
    imgWidthWeapons = weapons:getWidth() -- width of the background
    imgHeightWeapons = weapons:getHeight()
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
end

function t.draw()
    love.graphics.draw(weapons, -300, -450, 0, W/imgWidthWeapons + .4, H/imgHeightWeapons + .4)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("YOU FOUND THE WEAPONS", 0, 535, W, "center")                                     --
    love.graphics.printf("Great work soldier, reconnaissance will be here soon", 0, 560, W, "center")      -- winning statements
    love.graphics.printf("NEW OBJECTIVE --> hold down the fort", 258, 18, W, "center")                     --
end

return t
  
  
  