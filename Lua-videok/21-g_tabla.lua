
szam1 = 15        -- szam1 belekerül a _G táblába
local szam2 = 35  -- szam2 nem kerül bele a _G táblába

print(_G)




function add()
  local num1 = 5
  local num2 = 23
  return num1 + num2
end



--print(num1) -- nil
add()       -- itt belekerül a num1 és num2 a _G táblába, ha nem adjuk hozzájuk a local-t
--print(num1) -- 5
--print(num2) -- 23

for key, value in pairs(_G) do
  print(key, value)
end

