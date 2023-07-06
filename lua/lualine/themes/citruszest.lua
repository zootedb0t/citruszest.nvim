local colors = {
  black = "#121212",
  red = "#D71A1A",
  green = "#00CC7A",
  yellow = "#F0D50C",
  orange = "#FF6600",
  magenta = "#CC00FF",
  cyan = "#33FFFF",
  white = "#BFBFBF",
}

return {
  normal = {
    a = { bg = colors.orange, fg = colors.black },
    b = { bg = colors.yellow, fg = colors.black },
    c = { bg = colors.cyan, fg = colors.black },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.cyan, fg = colors.black },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = colors.cyan, fg = colors.black },
  },
  replace = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = colors.cyan, fg = colors.black },
  },
  command = {
    a = { bg = colors.magenta, fg = colors.black },
    b = { bg = colors.orange, fg = colors.black },
  },
}
