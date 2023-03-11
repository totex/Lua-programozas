
local Person = {}

function Person:new(name, age, gender)
  local obj = {}
  setmetatable(obj, self)
  self.__index = self 
  obj.name = name
  obj.age = age
  obj.gender = gender
  return obj
end

function Person.set_name(self, name)
  self.name = name
end

function Person:set_age(age)
  self.age = age
end

function Person:set_gender(gender)
  self.gender = gender
end


person0 = Person:new()
--person0:set_name("Gergo")
person0.set_name(person0, "Gergo")
person0:set_age(19)
person0:set_gender("male")


print(person0.name)
print(person0.age)
print(person0.gender)
print("--------------------")

person1 = Person:new("Zsuzsi", 29, "female")
person2 = Person:new("Gabriella", 32, "female")
person3 = Person:new("Attila", 39, "male")

print(person1.name)
print(person1.age)
print(person1.gender)
print("--------------------")

print(person2.name)
print(person2.age)
print(person2.gender)
print("--------------------")

print(person3.name)
print(person3.age)
print(person3.gender)
