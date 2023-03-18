
-- width and height of the apple
local SIZE = 30

-- apple object
local apple = {}

-- apple's x and y positions
apple.posX = 0
apple.posY = 0


-- randomly sets the apples' x and y positions between 0 and 29
function apple.set_random_pos()
  math.randomseed(os.time())
  apple.posX = math.random(SIZE - 1)
  apple.posY = math.random(SIZE - 1)
end


-- draws the apple
function apple.draw()
  love.graphics.setColor(0.8, 0.9, 0.0, 1.0)
  love.graphics.rectangle('fill', apple.posX * SIZE, apple.posY * SIZE, SIZE, SIZE, 10, 10)
end


return apple
