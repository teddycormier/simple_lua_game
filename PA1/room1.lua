---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------


local t = {}

function t.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    step = love.audio.newSource("Audio/step.wav", "static") -- www.freesound.org

    require("button_helper")
    t.livingroom_door = helpers.makeButton(685, 118, 200, 320, 17, " ", 1, 1, 1)
    t.window_exit = helpers.makeButton(-10, 217, 65, 75, 0, " ", 0, 1, 0)

    background = love.graphics.newImage("Images/livingroom.png")
    imgWidthLivingroom = background:getWidth() -- width of the background
    imgHeightLivingroom = background:getHeight()
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if (mouse_x > t.livingroom_door.x and mouse_x < (t.livingroom_door.x + t.livingroom_door.w))
    and (mouse_y > t.livingroom_door.y and mouse_y < (t.livingroom_door.y + t.livingroom_door.h)) then
        love.window.setTitle("BEDROOM")
        love.audio.play(step)
        gameState = 2
    elseif (mouse_x > t.window_exit.x and mouse_x < (t.window_exit.x + t.window_exit.w))
    and (mouse_y > t.window_exit.y and mouse_y < (t.window_exit.y + t.window_exit.h)) then
        love.window.setTitle("OUTSIDE - BARN")
        love.audio.play(step)
        gameState = 3
    end
end

function t.draw()
    love.graphics.draw(background, 0, 0, 0, W/imgWidthLivingroom + .05, H/imgHeightLivingroom - .05)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("LIVING ROOM", 350, 550, W, "center")
    t.livingroom_door.draw()
    t.window_exit.draw()
end

return t

  
  
  
  