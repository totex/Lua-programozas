

-- table arrays - tábla tömbök

szamok = {1, 5, 7.8, 41, 785}

--print(type(szamok))
--print(szamok)

--print(szamok[33])

nevek = {"Erika", "Viola", "Enikő", "Attila", "Ernő"}
--print(nevek[4])

-- indexelés az 1-es számtól indul
--print(nevek[1])
--print(nevek[2])
--print(nevek[3])
--print(nevek[4])
--print(nevek[5])

--nevek[1] = "Éva"

--print("----------------------")

--print(nevek[1])
--print(nevek[2])
--print(nevek[3])
--print(nevek[4])
--print(nevek[5])

--print(#nevek)

--nevek[6] = "Rozália"

--print(#nevek)

--table.insert(nevek, "Erzsi")

--print(#nevek)

matrix = {
  {1,0,0,35},
  {0,1,0,0},
  {0,0,1,0},
  {0,0,0,1}
}

print(matrix[1][4])


vegyes_tipusok = {"Andrea", true, 45, function() end, nil}


