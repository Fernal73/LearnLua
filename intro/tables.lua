#!/usr/bin/env lua
mytable = {}
mytable = { 'zombie', 'apocalypse' }
myarray = {}
myarray.baz = 'happy'
myarray.qux = 'halloween'
assert(myarray.baz == 'happy', 'unexpected value in myarray.baz')
assert(myarray.qux == 'halloween', 'unexpected value in myarray.qux')
print('pairs of myarray:')
for k,v in pairs(myarray) do
  print(k,v)
end
print('pairs of mytable:')
for k,v in pairs(mytable) do
  print(k,v)
end
print('ipairs of mytable:')
for i,v in ipairs(mytable) do
  print(i,v)
end
mytable.surprise = 'this value has a key'
print('ipairs of mytable:')
for i,v in ipairs(mytable) do
  print(i,v)
end
print('pairs of mytable:')
for k,v in ipairs(mytable) do
  print(k,v)
end
print('call by index:')
print(mytable[2])
print(mytable[1])
print(myarray[2])
print(myarray[1])
print('call by key:')
print(myarray['qux'])
print(myarray['baz'])
print(mytable['surprise'])
