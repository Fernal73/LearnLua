#!/usr/bin/env lua
Zombie = {}
function Zombie.init(h,w,s,l)
  local self = setmetatable({}, Zombie)
  self.height = h
  self.weight = w
  self.speed = s
  self.location = l
  return self
end
-- use the metatable
function setup()
  z1 = Zombie.init(176,50,'slow','Forbes & Murray Avenue')
end
function run()
  print(z1.location .. ": " ..
  z1.height .. " cm, " .. z1.weight .. " kg, " .. z1.speed)
end
setup()
run()
