---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

function love.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    gameState = 0

    hasKey = false -- does the user have the key
    keyCode = 0 -- used to display that the user does not have key when clicking locked door
    gotKey = 0 -- used to display key if user hasn't yet aquired it

    intro = require("intro")
    intro.load()
    room1 = require("room1")
    room1.load()
    room2 = require("room2")
    room2.load()
    room3 = require("room3")
    room3.load()
    room4 = require("room4")
    room4.load()
    lose = require("lose")
    lose.load()
    win = require("win")
    win.load()
end

function update(dt)
    if(gameState == 0) then
        intro.update(dt)
    elseif(gameState == 1) then
        room1.update(dt)
    elseif(gameState == 2) then
        room2.update(dt)
    elseif(gameState == 3) then
        room3.update(dt)
    elseif(gameState == 4) then
        room4.update(dt)
    elseif(gameState == 5) then
        lose.update(dt)
    elseif(gameState == 6) then
        win.update(dt)
    end
end

function love.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if(gameState == 0) then
        intro.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 1) then
        room1.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 2) then
        room2.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 3) then
        room3.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 4) then
        room4.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 5) then
        lose.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    elseif(gameState == 6) then
        win.mousepressed(mouse_x, mouse_y, num, touched, pressed)
    end
end

function love.draw() -- function to draw the rectangles to the screen
    if(gameState == 0) then
        intro.draw()
    elseif(gameState == 1) then
        room1.draw()
    elseif(gameState == 2) then
        room2.draw()
    elseif(gameState == 3) then
        room3.draw()
    elseif(gameState == 4) then
        room4.draw()
    elseif(gameState == 5) then
        lose.draw()
    elseif(gameState == 6) then
        win.draw()
    end

end




