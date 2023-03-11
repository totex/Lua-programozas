
-- Inheritance
-- Encapsulation
-- Polymorphism
-- Abstraction

local Person = {}
Person.name = "no name given"
Person.age = -1
Person.gender = "no gender given"
Person.address = "no address given"

-- Person methods
function Person:set_name(name)
  self.name = name
end

function Person:set_age(age)
  self.age = age
end

function Person:set_gender(gender)
  self.gender = gender
end

function Person:set_address(address)
  self.address = address
end

function Person:get_address()
  return self.name .. "'s address is: " .. self.address
end


local Employee = {}

function Employee:new(emp_id, department, experience)
  local obj = {}
  setmetatable(obj, self)
  self.__index = Person 
  obj.emp_id = emp_id
  obj.department = department
  obj.experience = experience
  return obj
end

-- Not working yet
--function Employee:get_address()
--  print("BLABLA-Employee's address is: " .. self.address)
--end

emp1 = Employee:new(457125, "sales", 10)
emp1:set_name("Erzsebet")
emp1:set_age(28)
emp1:set_gender("female")
emp1:set_address("Budapest uborka utca 5")

print(emp1.name)
print(emp1.age)
print(emp1.gender)
print(emp1.department)
print(emp1:get_address())
print("--------------------")

emp2 = Employee:new(412525, "accounting", 6)
emp2:set_name("Ildiko")
emp2:set_age(35)
emp2:set_gender("female")
emp2:set_address("Debrecen paprika utca 7")
print(emp2.name)
print(emp2.age)
print(emp2.gender)
print(emp2.department)
print(emp2:get_address())


