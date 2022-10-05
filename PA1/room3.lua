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
    t.barn_door = helpers.makeButton(471, 281, 93, 140, 17, " ", 0, 0, 1)
    t.back_button = helpers.makeButton(15, 495, 50, 20, 2.5, "BACK", 0, 1, 0)
    background3 = love.graphics.newImage("Images/barn.png")
    imgWidthBarn = background3:getWidth() -- width of the background
    imgHeightBarn = background3:getHeight()
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if (mouse_x > t.barn_door.x and mouse_x < (t.barn_door.x + t.barn_door.w))
    and (mouse_y > t.barn_door.y and mouse_y < (t.barn_door.y + t.barn_door.h)) then
      love.window.setTitle("INSIDE - BARN")
      love.audio.play(step)
      gameState = 4
    end
    if (mouse_x > t.back_button.x and mouse_x < (t.back_button.x + t.back_button.w))
    and (mouse_y > t.back_button.y and mouse_y < (t.back_button.y + t.back_button.h)) then
      love.window.setTitle("LIVING ROOM")
      love.audio.play(step)
      gameState = 1
    end
end

function t.draw()
    love.graphics.draw(background3, 0, 12, 0, W/imgWidthBarn + .1, H/imgHeightBarn - .039)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("OUTSIDE - BARN", 335, 550, W, "center")
    t.barn_door.draw()
    t.back_button.draw()
end

return t

  
  
  
  