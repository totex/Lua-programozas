
--local file = io.open("Lua-videok/szoveg.txt", "w")
local file = io.open("Lua-videok/szoveg.txt", "a")

io.output(file)
--io.write('Ezt a szöveget beleírjuk a szoveg.txt fájlba "write" módban.')


io.write("\nEzt a szöveget is beleírjuk a fájlba, \"a\" azaz append módban.")

io.close(file)


