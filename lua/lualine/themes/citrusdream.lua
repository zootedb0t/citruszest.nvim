local colors = {
  black = "#232323",
  red = "#FF5454",
  green = "#1AFFA3",
  lime_green = "#9fc131",
  yellow = "#FFD700",
  orange = "#FF7431",
  blue = "#00BFFF",
  cyan = "#48D1CC",
  white = "#BFBFBF",
  violet = "#af74ee",
}

return {
  normal = {
    a = { bg = colors.lime_green, fg = colors.black, gui = "bold" },
    b = { bg = colors.orange, fg = colors.black, gui = "bold" },
    c = { bg = colors.black, fg = colors.white, gui = "bold" },
  },
  insert = {
    a = { bg = colors.blue, fg = colors.black, gui = "bold" },
  },
  visual = {
    a = { bg = colors.violet, fg = colors.black, gui = "bold" },
  },
  replace = {
    a = { bg = colors.black, fg = colors.yellow, gui = "bold" },
  },
  command = {
    a = { bg = colors.orange, fg = colors.black, gui = "bold" },
  },
}
