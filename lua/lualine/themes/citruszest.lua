local colors = {
  black = "#232323",
  red = "#FF5454",
  green = "#1AFFA3",
  yellow = "#FFD700",
  orange = "#FF7431",
  blue = "#00BFFF",
  cyan = "#48D1CC",
  white = "#BFBFBF",
}

return {
  normal = {
    a = { bg = colors.black, fg = colors.green },
    b = { bg = colors.black, fg = colors.orange },
    c = { bg = colors.black, fg = colors.white },
  },
  insert = {
    a = { bg = colors.black, fg = colors.blue },
  },
  visual = {
    a = { bg = colors.black, fg = colors.cyan },
  },
  replace = {
    a = { bg = colors.black, fg = colors.yellow },
  },
  command = {
    a = { bg = colors.black, fg = colors.orange },
  },
}
