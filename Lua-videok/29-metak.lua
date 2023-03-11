
--Metatables and Metamethods

local szamok = {10, 20, 30, 40}

function caller(tbl, val1, val2)
  print(string.format("Called with: %d %d", val1, val2))
  table.insert(tbl, val1)
  table.insert(tbl, val2)
end


local szamok_metatabla = {
  __index = function() return 0 end,
  __newindex = function(tbl, key, value) table.insert(tbl, value) end,
  __call = caller
  
}

setmetatable(szamok, szamok_metatabla)

--print(szamok[5])

--local dublaz = szamok[3] * 2
--print(dublaz)

szamok[5] = 64

szamok(45, 23)

for _, szam in ipairs(szamok) do
  print(szam)
end



