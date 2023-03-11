

nevek_es_korok = {
  Erika = 36,
  Viola = 41,
  Enikő = 19, 
  Attila = 34,
  Ernő = 52,
  23,
  45,
  true,
  "hello"
}

-- pairs függvény for ciklusban
--for nev, kor in pairs(nevek_es_korok) do 
--  print(nev, kor)
--end



-- ipairs függvény for ciklusban
nevek = {"Erika", "Viola", "Enikő", "Attila", "Ernő", Zoli=45, 55, 66, 77, true}

for index, nev in ipairs(nevek) do
  print(index, nev)
end


