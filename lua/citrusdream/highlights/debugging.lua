return function(C, _)
  return {
    -- debugging
    debugPC = { bg = C.background }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = C.background, fg = C.foreground }, -- used for breakpoint colors in terminal-debug
  }
end
