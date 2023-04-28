#!/usr/bin/env lua
-- setup
local args = {...}
-- engine
function echo(p)
  print(p)
end
-- go
for i,v in ipairs(args) do
  print(i .. ": " .. v)
end
for i,v in ipairs(args) do
  if args[i] == "--say" and args[i+1] ~= nil then
    echo("echo: " .. args[i+1])
  end
end
