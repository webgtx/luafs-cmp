package.path = package.path .. ";?.lua"
require "header"

if arg[1] then else return print("waiting for files :/") end

local meta_lines = lines_from(arg[1])
local alpha_lines = lines_from(arg[2]) 

for i, m_v in pairs(meta_lines) do
	for i, a_v in pairs(alpha_lines) do
		if m_v == a_v then print(i, a_v .." == ".. m_v .."\n-----") end
	end
end

