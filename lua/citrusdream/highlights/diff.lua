---@param c string r g b of highlight
---@param bg string r g b of background
---@param a number between 0 and 1
---@return number
local blend = function(c, bg, a)
  return math.floor(a * tonumber("0x" .. c) + (1 - a) * tonumber("0x" .. bg))
end

---@param hex string hex with 3 channels, ex: #00ff00
---@param bg string hex with 3 channels, ex: #000000
---@param a number between 0 and 1
---@return string
local add_alpha = function(hex, bg, a)
  if not bg:match("^#%x%x%x%x%x%x$") then
    bg = "#121212"
  end
  local r1, g1, b1 = hex:sub(2, 3), hex:sub(4, 5), hex:sub(6, 7)
  local r2, g2, b2 = bg:sub(2, 3), bg:sub(4, 5), bg:sub(6, 7)
  return "#" .. string.format("%02x%02x%02x", blend(r1, r2, a), blend(g1, g2, a), blend(b1, b2, a))
end

return function(C, _)
  return {
    -- diff
    diffAdded = { fg = C.green },
    diffRemoved = { fg = C.red },
    diffChanged = { fg = C.bright_yellow },
    diffOldFile = { fg = C.yellow },
    diffNewFile = { fg = C.orange },
    diffFile = { fg = C.cyan },
    diffLine = { fg = C.bright_cyan },
    diffIndexLine = { fg = C.bright_black },
    DiffAdd = { bg = add_alpha(C.green, C.background, 0.20) }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = add_alpha(C.yellow, C.background, 0.20) }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = add_alpha(C.bright_red, C.background, 0.20) }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = add_alpha(C.yellow, C.background, 0.35) }, -- diff mode: Changed text within a changed line |diff.txt|
    -- Diff
    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },
  }
end
