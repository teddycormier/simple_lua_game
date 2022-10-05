---------------------------------------
-- DISCLAIMER: All images were taken --
--  directy from www.artstation.com  --
---------------------------------------

local t = {}

function t.load()
    W = love.graphics.getWidth()
    H = love.graphics.getHeight()

    door_creek = love.audio.newSource("Audio/doorCreek.wav", "static") --www.freesound.org
    hmm = love.audio.newSource("Audio/hmm.wav", "static") -- www.freesound.org
    zombie = love.audio.newSource("Audio/zombie.wav", "static") -- www.freesound.org
    step = love.audio.newSource("Audio/step.wav", "static") -- www.freesound.org
    door_creek:setVolume(0.1)

    require("button_helper")
    t.barn_gate = helpers.makeButton(496, 271, 65, 69, 17, " ", 0, 1, 1)
    t.stall_handle = helpers.makeButton(740, 288, 20, 10, 17, " ", 1, 0, 1)
    t.back_button = helpers.makeButton(15, 495, 50, 20, 2.5, "BACK", 0, 1, 0)
    background4 = love.graphics.newImage("Images/insidebarn.png")
    imgWidthInsidebarn = background4:getWidth() -- width of the background
    imgHeightInsideBarn = background4:getHeight()
end

function t.update(dt)
end

function t.mousepressed(mouse_x, mouse_y, num, touched, pressed) -- function to detect when a mouse is pressed
    if (mouse_x > t.barn_gate.x and mouse_x < (t.barn_gate.x + t.barn_gate.w))
    and (mouse_y > t.barn_gate.y and mouse_y < (t.barn_gate.y + t.barn_gate.h)) then
        love.window.setTitle("YOU LOSE")
        love.audio.play(zombie)
        gameState = 5
    end
    if (mouse_x > t.stall_handle.x and mouse_x < (t.stall_handle.x + t.stall_handle.w))
        and (mouse_y > t.stall_handle.y and mouse_y < (t.stall_handle.y + t.stall_handle.h)) and (hasKey == false) then
            love.audio.play(hmm)
        keyCode = 1 -- used to display that the user does not have key when clicking locked door
    elseif  (mouse_x > t.stall_handle.x and mouse_x < (t.stall_handle.x + t.stall_handle.w))
    and (mouse_y > t.stall_handle.y and mouse_y < (t.stall_handle.y + t.stall_handle.h)) and (hasKey == true) then
        love.audio.play(door_creek)
        love.window.setTitle("OBJECTIVE COMPLETE")
        gameState = 6
    end
    if (mouse_x > t.back_button.x and mouse_x < (t.back_button.x + t.back_button.w))
    and (mouse_y > t.back_button.y and mouse_y < (t.back_button.y + t.back_button.h)) then
        love.window.setTitle("OUTSIDE - BARN")
        love.audio.play(step)
        gameState = 3
    end
end

function t.draw()
    love.graphics.draw(background4, 0, 12, 0, W/imgWidthInsidebarn + .1, H/imgHeightInsideBarn - .0565)
    love.graphics.setColor(1,1,1)
    love.graphics.printf("INSIDE - BARN", 335, 550, W, "center")
    t.barn_gate.draw()
    t.back_button.draw()
    t.stall_handle.draw()

    if (keyCode == 1) then
        love.graphics.printf("DOOR IS LOCKED, FIND THE KEY", 0, 550, W, "center")
    end
end

return t
  
  
  