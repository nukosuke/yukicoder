local happy  = 0
local months = {31,28,31,30,31,30,31,31,30,31,30,31}

for month, days in ipairs(months) do
  local X = month

  for day = 1, days do
    local Y = math.floor(day/10) + day % 10

    if X == Y then
      happy = happy + 1
    end
  end
end

print(happy)
