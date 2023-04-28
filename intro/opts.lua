#!/usr/bin/env lua
package.path = package.path .. ';' .. os.getenv('PREFIX') .. '/share/lua/5.1/?.lua'
local alt_getopt = require("alt_getopt")
local long_opts = {
alpha = "a",
config = "c"
}
local short_opt
local optarg
short_opt,optarg = alt_getopt.get_opts (arg, "c:a", long_opts)
local optvalues = {}
for k,v in pairs (short_opt) do
table.insert (optvalues, "value of " .. k .. " is " .. v .. "\n")
end
table.sort (optvalues)
io.write (table.concat (optvalues))
for i = optarg,#arg do
  io.write (string.format ("ARGV [%s] = %s\n", i, arg [i]))
end
