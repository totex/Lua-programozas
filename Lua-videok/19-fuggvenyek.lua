

function osszead(x, y)
  return x + y
end

--print(osszead(10, 20))

-- function expression
kivon = function(x, y) return x - y end
--print(kivon(10, 20))


function hivo(fuggveny, x, y)
  z = fuggveny(x, y)
  return z
end

--print(hivo(osszead, 15, 5))
--print(hivo(kivon, 15, 5))


muveletek = {
  szoroz = function(x, y) return x * y end,
  oszt = function(x, y) return x / y end
}

--print(muveletek.szoroz(2, 3))
--print(muveletek.oszt(2, 3))


-- valtozo szamu fuggveny bemenetek
function average(...)
   result = 0
   args = {...}
   for _, value in ipairs(args) do
      result = result + value
   end
   return result / #args
end

print("The average is:", average(10,5,3,4,5,6))

