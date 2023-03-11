
jelszo = "Katmandu123"

io.write('Mi a jelszó? ')
proba = io.read()

szamlalo = 1

while proba ~= jelszo do
  szamlalo = szamlalo + 1
  
  if szamlalo <= 3 then
    print('Rossz jelszó, próbáld újra!')
    io.write('Mi a jelszó? ')
    proba = io.read()
  else
    print("3 sikertelen próbálkozás, rendszer lezárva!")
    break
  end
end


if proba == jelszo then
  print("Belépés engedélyezve!")
end
