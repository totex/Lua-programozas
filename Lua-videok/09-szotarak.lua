

-- table dictionaries - tábla szótárak

nevek_es_korok1 = {
  ["Erika"] = 36,
  ["Viola"] = 41,
  ["Enikő"] = 19, 
  ["Attila"] = 34,
  ["Ernő"] = 52,
}

--print(nevek_es_korok1["Erika"])
--print(nevek_es_korok1.Attila)
--print(#nevek_es_korok1)

nevek_es_korok2 = {
  Erika = 36,
  Viola = 41,
  Enikő = 19, 
  Attila = 34,
  Ernő = 52,
  Erika = 18,
  478,
  56,
  false,
  "Hello"
}

print(#nevek_es_korok2)
print(nevek_es_korok2[4])
print(nevek_es_korok2.Erika)

nevek_es_korok2.Attila = 25
print(nevek_es_korok2.Attila)

--nevek_es_korok2["Andrea"] = 45
nevek_es_korok2.Andrea = 45
print(nevek_es_korok2.Andrea)


--print(nevek_es_korok1["Viola"])
--print(nevek_es_korok2.Ernő)
--print(nevek_es_korok2[1])
