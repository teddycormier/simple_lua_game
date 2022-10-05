---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

local t = {}

function t.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    step = love.audio.newSource("Audio/step.wav", "static") -- www.freesound.org
    ching = love.audio.newSource("Audio/ching.mp3", "static") -- www.freesound.org

    require("button_helper")
    t.back_button = helpers.makeButton(15, 495, 50, 20, 2.5, "BACK", 0, 1, 0)
    t.key_button = helpers.makeButton(398, 289, 10, 10, 0, "", .83, .68, .21)

    background2 = love.graphics.newImage("Images/bedroom.png")
    imgWidthBedroom = background2:getWidth() -- width of the background
    imgHeightBedroom = background2:getHeight()
    
    key = love.graphics.newImage("Images/key.png")
    imgWidthKey = key:getWidth()
    imgHeightKey = key:getHeight()
  
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if (mouse_x > t.back_button.x and mouse_x < (t.back_button.x + t.back_button.w))
    and (mouse_y > t.back_button.y and mouse_y < (t.back_button.y + t.back_button.h)) then
        love.window.setTitle("LIVING ROOM")
        love.audio.play(step)
        gameState = 1
    end
    if (mouse_x > t.key_button.x and mouse_x < (t.key_button.x + t.key_button.w))
    and (mouse_y > t.key_button.y and mouse_y < (t.key_button.y + t.key_button.h)) then
        love.audio.play(ching)
        gotKey = 1 -- used to display key if user hasn't yet aquired it
        hasKey = true -- change key boolean to open door
    end
end

function t.draw()
    love.graphics.draw(background2, 0, 12, 0, W/imgWidthBedroom + .1, H/imgHeightBedroom - .133)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("BEDROOM", 353, 550, W, "center")
    t.back_button.draw()

    if (gotKey == 1) then
        love.graphics.printf("YOU HAVE AQUIRED THE KEY", 0, 550, W, "center")
    elseif (gotKey == 0) then
        love.graphics.draw(key, 390, 283, 0, W/imgWidthKey - 2.15, H/imgHeightKey - 1.6)
        t.key_button.draw()
    end 
end

return t

  
  
  
  
  