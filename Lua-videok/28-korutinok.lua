socket = require("socket")

-- coroutine statuses
-- running    - if the coroutine is running
-- suspended  - if the coroutine is suspended
-- normal     - if the coroutine is active but not running
-- dead       - if the coroutine has finished


-- korutin példa 1.
--local func1 = function()
--  for i=0, 100000 do
--    print("func1: " .. i)
--    if i == 5 then
--      coroutine.yield(i)
--    end
--  end
--end

--local func2 = function()
--  for i=25, 30 do
--    print("func2: " .. i)
--  end
--end


-- szekvenciális végrehajtás
--func1()
--func2()

-- korutin végrehajtás
--local rutine1 = coroutine.create(func1)
--local rutine2 = coroutine.create(func2)

--status, value = coroutine.resume(rutine1)
--print(status, "yielded value is: " .. value)
--print('rutine1 status: ' .. coroutine.status(rutine1))

--coroutine.resume(rutine2)
--print('rutine2 status: ' .. coroutine.status(rutine2))

--coroutine.resume(rutine1)


-- korutin példa 2.
local func1 = function()
  local num = 2
  while true do
    local square = math.pow(num, 2) -- num ^ 2
    num = num + 1
    coroutine.yield(square)
  end
end

local func2 = function()
  local num = 2
  while true do
    local squareroot = math.sqrt(num) -- num ^ 0.5
    num = num + 1
    coroutine.yield(squareroot)
  end
end

sleep = function()
  local timer = 1000000000
  while timer ~= 0 do
    timer = timer - 1
  end
end

local rutine1 = coroutine.create(func1)
local rutine2 = coroutine.create(func2)


while true do
  status1, value1 = coroutine.resume(rutine1)
  print(status1, "rutine1 yielded value is: " .. value1)
  
--  sleep()
  socket.sleep(1)

  status2, value2 = coroutine.resume(rutine2)
  print(status2, "rutine2 yielded value is: " .. value2)
  
--  sleep()
  socket.sleep(1)
end

