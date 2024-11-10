local highlights = require("citrusdream.highlights")

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
    DiffAdd = { bg = highlights.add_alpha(C.green, C.background, 0.20) }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = highlights.add_alpha(C.yellow, C.background, 0.20) }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = highlights.add_alpha(C.bright_red, C.background, 0.20) }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = highlights.add_alpha(C.yellow, C.background, 0.35) }, -- diff mode: Changed text within a changed line |diff.txt|
    -- Diff
    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },
  }
end
