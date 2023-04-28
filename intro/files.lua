#!/usr/bin/env lua
function ingest(file)
  local f = io.open(file, "r")
  local lines = f:read("*all")
  f:close()
  return(lines)
end

function exgest(file)
  local f = io.open(file, "a")
  io.output(f)
  io.write("Hello, World!\n")
  io.close(f)
end
exgest("example.txt")
myfile=ingest("example.txt")
print(myfile)
