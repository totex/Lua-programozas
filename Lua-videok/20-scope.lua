

greet1 = "Szia!"
local greet2 = "Hello!"


--while true do
--  local szam = 5
--  break
--end

--print(szam)

--if true then
--  local szam = 10
--end

--print(szam)

--for i=1, 2 do
--  local szam = 18
--end

--print(i)
--print(szam)


--function osszeadas1(x, y)
--  local szam = x + y
--end

--osszeadas1(10, 20)
--print(x, y)
--print(szam)


--local function osszeadas2(x, y)
--  local szam = x + y
--  return szam
--end

szamok = {
  egy = 1,
  ketto = 2,
  harom = 3,
  egy_plusz_ketto = function() return szamok.egy + szamok.ketto end
}

print(szamok.egy_plusz_ketto())












