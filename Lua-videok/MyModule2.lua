
-- az importnál felülírja a MyModule hello függvényt
function hello()
  print("Helló a MyModul2->hello függvényből!")
end

teszt = {}

function teszt.hello()
  print("Helló a MyModul2->teszt->hello tábla függvényből!")
end

return teszt