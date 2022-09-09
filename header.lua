--
--    DSX NINJA @ 2022
--

function split(str, sep)
  if sep == nil then sep = "%s" end
  local tbl = {}
  for str in string.gmatch(str, "([^"..sep.."]+)") do
    table.insert(tbl, str)
  end
  return tbl
end

function sh(shell)
  local handle = io.popen(shell)
  local result = handle:read("*a")
  handle:close()
  return result
end

function scandir(dir)
  local i, t, popen = 0, {}, io.popen
  local pfile = popen('ls -a "'..dir..'"')
  for filename in pfile:lines() do
    i = i + 1
    t[i] = filename
  end
  pfile:close()
  return t
end

function file_exists(file)
  local f = io.open(file)
  if f then f:close() end
  return f ~= nil
end

function lines_from(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do
    lines[#lines + 1] = line
  end
  return lines
end


