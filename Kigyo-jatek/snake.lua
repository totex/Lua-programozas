
-- width and height of the snake
local SIZE = 30

-- keys pressed
local up_key_pressed = false
local down_key_pressed = false
local left_key_pressed = false
local right_key_pressed = false

-- snake's direction
local dirX = 0
local dirY = 0

-- snake's tail
local tail = {}

-- snake object
local snake = {}

-- snake's x and y positions
snake.posX = 15
snake.posY = 15

-- snake's tail length
snake.tail_length = 0


function snake.draw()
  love.graphics.setColor(1.0, 0.35, 0.4, 1.0) -- draw the snake's head
  love.graphics.rectangle('fill', snake.posX * SIZE, snake.posY * SIZE, SIZE, SIZE, 10, 10)
  
  love.graphics.setColor(0.7, 0.35, 0.4, 1.0) -- draw the snake's tails
  for _, v in ipairs(tail) do
    love.graphics.rectangle('fill', v[1] * SIZE, v[2] * SIZE, SIZE, SIZE, 15, 15)
  end
  
  love.graphics.setColor(1, 1, 1, 1) -- darw the collected apples text
  love.graphics.print('megevett alma: '.. snake.tail_length, 10, 10, 0, 1.5, 1.5)
end


function snake.add_tail()
  snake.tail_length = snake.tail_length + 1
  -- add it outside the screen, so that it won't be visible until the next update call
  table.insert(tail, {-30, 0})
end


function snake.is_colliding_with_tail()
  -- return true when colliding with the tail
  for _, v in ipairs(tail) do
    if snake.posX == v[1] and snake.posY == v[2] then
      return true
    end
  end
  return false
end


function snake.handle_keypress(key)
  if key == 'left' then
    left_key_pressed, right_key_pressed, up_key_pressed, down_key_pressed = true, false, false, false
  elseif key == 'right' then
    left_key_pressed, right_key_pressed, up_key_pressed, down_key_pressed = false, true, false, false
  elseif key == 'up' then
    left_key_pressed, right_key_pressed, up_key_pressed, down_key_pressed = false, false, true, false
  elseif key == 'down' then
    left_key_pressed, right_key_pressed, up_key_pressed, down_key_pressed = false, false, false, true
  end
end


function snake.update()
  
  -- set the snake's direction based on the up_key, down_key, left_key and right_key
  if up_key_pressed and dirY == 0 then
    dirX, dirY = 0, -1
  elseif down_key_pressed and dirY == 0 then
    dirX, dirY = 0, 1
  elseif left_key_pressed and dirX == 0 then
    	dirX, dirY = -1, 0
  elseif right_key_pressed and dirX == 0 then
    	dirX, dirY = 1, 0
  end
  
  local oldX = snake.posX
  local oldY = snake.posY
  
  -- set the snake's position based on the directions
  snake.posX = snake.posX + dirX
	snake.posY = snake.posY + dirY
  
  -- if the snake goes outside the window, it reappers on the opposite side
  if snake.posX < 0 then
    snake.posX = SIZE - 1
  elseif snake.posX > SIZE - 1 then
    snake.posX = 0
  elseif snake.posY < 0 then
    snake.posY = SIZE - 1
  elseif snake.posY > SIZE - 1 then
    snake.posY = 0
  end
  
  -- move the tail
  for _, v in ipairs(tail) do
    local x, y = v[1], v[2] -- following the (c=a, a=b, b=c) logic
    v[1], v[2] = oldX, oldY
    oldX, oldY = x, y
  end
end


function snake.reset()
  snake.posX, snake.posY = 15, 15
  dirX, dirY = 0, 0
  tail = {}
  up_key_pressed, down_key_pressed, left_key_pressed, right_key_pressed = false, false, false, false
  snake.tail_length = 0
end


return snake
