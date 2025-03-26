local M = {}

function M.random_int(low, hight)
  math.randomseed(os.time())

  return math.random(low, hight)
end

function M.random_el(seq)
  local idx = M.random_int(1, #seq)

  return seq[idx]
end

return M
