#!/usr/bin/env lua
function wc(words,delimiter)
  count=1
  for w in string.gmatch(words, delimiter) do
    count = count + 1
  end
  return count
end
result = wc('zombie apocalypse', ' ')
print(result)
result = wc('ice cream sandwich', ' ')
print(result)
result = wc('Can you find the bug? ', ' ')
print(result)
result = wc(' Can you find the bug? ', ' ')
print(result)
