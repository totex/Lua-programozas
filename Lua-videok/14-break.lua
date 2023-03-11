
--for i=0, 100 do
--  print(i)
--  if i == 50 then
--    break
--  end
--end



szamlalo = 0

--while true do
--  print(szamlalo)
--  if szamlalo == 50 then
--   break
--  end
--  szamlalo =  szamlalo + 1
--end


--repeat
--  print(szamlalo)
--  if szamlalo == 50 then
--    break
--  end
--  szamlalo = szamlalo + 1
--until false


nevek_es_korok = {
  Erika = 36,
  Viola = 41,
  Enikő = 19, 
  Attila = 34,
  Ernő = 52
}

for nev, kor in pairs(nevek_es_korok) do 
  print(nev, kor)
  if nev == "Enikő" then
    break
  end
end


