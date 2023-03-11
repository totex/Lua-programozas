
szam = 1

::kezdes::

print(szam)

szam = szam + 1

if szam <= 1000 then
  goto kezdes
else
  goto vege
end

::vege::

print("Vege!")

--print(szam)
--szam = szam + 1
--goto kezdes

--for i=1, 10 do
--  print(i)
--  if i == 5 then
--    goto kezdes
--  end
--end
