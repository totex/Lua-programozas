
-- első módszer
--local file = io.open("Lua-videok/vers.txt", "r")

--"*all" | "*a" reads the whole file
--"*line"	| "*l" reads the next line
--"*number"	| "*n" reads a number
--num	reads a string with up to num characters

--local content = file:read("*all")
--print(content)
--print(type(content))
--io.close(file)


-- második módszer
local sorok = {}
for sor in io.lines("Lua-videok/vers.txt") do 
  table.insert(sorok, sor)
end

for _, sor in ipairs(sorok) do
  print(sor)
end






