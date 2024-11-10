return function(C, _)
  return {

    -- Treesitter highlights
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = C.white },
    ["@comment.error"] = { fg = C.black, bg = C.bright_red },
    ["@comment.warning"] = { fg = C.black, bg = C.yellow },
    ["@comment.todo"] = { fg = C.black, bg = C.bright_orange },
    ["@comment.note"] = { fg = C.black, bg = C.blue },
    ["TreesitterContextLineNumber"] = { fg = C.blue, bg = C.cursor },
  }
end
