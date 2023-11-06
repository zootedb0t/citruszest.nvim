local colors = {
  black = "#232323",
  red = "#FF5454",
  green = "#00CC7A",
  yellow = "#FFD700",
  orange = "#FF7431",
  blue = "#00BFFF",
  cyan = "#48D1CC",
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
    a = { bg = colors.blue, fg = colors.black },
    b = { bg = colors.orange, fg = colors.black },
  },
}
