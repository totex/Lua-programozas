
-- operator overloading

function vectorAdd(vec1, vec2)
  return {x = vec1.x + vec2.x, 
          y = vec1.y + vec2.y}
end

function vectorSub(vec1, vec2)
    return {x = vec1.x - vec2.x,
            y = vec1.y - vec2.y}
end

function vectorMul(vec1, vec2)
    return {x = vec1.x * vec2.x, 
            y = vec1.y * vec2.y}
end

function vectorDiv(vec1, vec2)
    return {x = vec1.x / vec2.x,
            y = vec1.y / vec2.y}
end

function vectorPrint(vec)
  return string.format("vector(%.4f, %.4f)", vec.x, vec.y)
end


local vector1 = {x=5, y=6}
local vector2 = {x=15, y=3}

local vector_meta = {
  __add = vectorAdd,
  __sub = vectorSub,
  __mul = vectorMul,
  __div = vectorDiv,
  __tostring = vectorPrint
}

setmetatable(vector1, vector_meta)
setmetatable(vector2, vector_meta)

new_vec = vector1 * vector2
setmetatable(new_vec, vector_meta)
print(new_vec)




