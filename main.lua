package.path = package.path .. ";?.lua"
require "header"

local meta_lines = lines_from("m.dat")
local alpha_lines = lines_from("a.dat") 

for i, m_v in pairs(meta_lines) do
	for i, a_v in pairs(alpha_lines) do
		if m_v == a_v then print("OMG THEY ARE SAME !!! >:)\n".. i, a_v .." == ".. m_v .."\n-----") end
	end
end

