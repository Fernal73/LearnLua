#!/usr/bin/env lua
package.path = package.path .. ';/data/data/com.termux/files/usr/share/lua/5.1/?.lua'
inifile = require('inifile')
-- find home directory
home = os.getenv('HOME')
-- detect path separator
-- returns '/' for Linux and Mac
-- and '\' for Windows
d = package.config:sub(1,1)
-- parse the INI file and
-- put values into a table called conf
conf = inifile.parse("config" .. d .. 'myconfig.ini')
-- print the data for review
print(conf['example']['name'])
print(conf['example']['species'])
print(conf['example']['enabled'])

-- set enabled to true
conf['example']['enabled'] = true
conf['demo']['enabled'] = true
-- save the change
inifile.save("config" .. d .. 'newconfig.ini', conf)
