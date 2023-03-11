
szam1 = 54
szam2 = 16

local szam3 = 78
local szam4 = 7

-- globális hello függvény
function hello()
  print("Helló a MyModul1->hello globális függvényből!")
end

teszt = {}
teszt.szam5 = 23
teszt.szam6 = 11

-- teszt tábla hello függvény
function teszt.hello()
  print("Helló a MyModul1->teszt->hello tábla függvényből!")
end

return teszt


