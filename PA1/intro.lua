---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

local t = {}

function t.load()
    love.window.setTitle("START")

    W = love.graphics.getWidth()
    H = love.graphics.getHeight()
    
    step = love.audio.newSource("Audio/step.wav", "static") -- www.freesound.org

    require("button_helper")
    t.start_button = helpers.makeButton(W/2 - 50, H/2 - 50, 100, 50, 17, "START", 1, 0, 0)

end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if (mouse_x > t.start_button.x and mouse_x < (t.start_button.x + t.start_button.w))
    and (mouse_y > t.start_button.y and mouse_y < (t.start_button.y + t.start_button.h)) then
        love.window.setTitle("LIVING ROOM")
        love.audio.play(step)
        gameState = 1
    end
end

function t.draw()
    t.start_button.draw()
    love.graphics.printf("TEDDY CORMIER", -330, 18, W, "center")
end

return t

  
  
  
  