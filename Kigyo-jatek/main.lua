local snake = require("snake")
local apple = require("apple")


function love.load()
  interval = 20
  apple.set_random_pos()
  
  -- game states
  GameStates = {pause='pause', running='running', game_over='game over'}
  state = GameStates.running
  
end


function love.draw()
  snake.draw()
  apple.draw()
  
  if state == GameStates.pause then -- draw "Game Paused" when the state is pause
    love.graphics.print("Game Paused", 300, 350, 0, 4, 4)
    love.graphics.print("Press P to unpause", 290, 450, 0, 3, 3)
  end
  
  if state == GameStates.game_over then -- draw "Game Over" when the state is game_over
    love.graphics.print("Game Over!", 330, 350, 0, 4, 4)
    love.graphics.print("Press Space to restart", 270, 450, 0, 3, 3)
  end
  
end


function love.update()
  if state == GameStates.running then
    interval = interval - 1
    if interval < 0 then
      snake.update()
      
      -- the game will run faster after every 6 collected apple
      if snake.tail_length <= 5 then
        interval = 20
      elseif snake.tail_length > 5 and snake.tail_length <= 10 then
        interval = 15
      elseif snake.tail_length > 10 and snake.tail_length <= 15 then
        interval = 10
      else
        interval = 5
      end
    end
  end
  
  if snake.posX == apple.posX and snake.posY == apple.posY then
    apple.set_random_pos()
    snake.add_tail()
  end
  
  if snake.is_colliding_with_tail() then
    state = GameStates.game_over
  end
end


function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  elseif key == 'p' then
    if state == GameStates.running then
      state = GameStates.pause
    else
      state = GameStates.running
    end
  elseif key == 'space' and state == GameStates.game_over then
    snake.reset()
    apple.set_random_pos()
    state = GameStates.running
  end
  
  if state == GameStates.running then
    snake.handle_keypress(key)
  end
end






