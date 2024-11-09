return function(C, O)
  return {
    -- Native LSP

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = C.visual }, -- used for highlighting "text" references
    LspReferenceRead = { bg = C.visual }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = C.visual }, -- used for highlighting "write" references

    DiagnosticError = { bg = C.none, fg = C.bright_red, bold = O.bold }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { bg = C.none, fg = C.bright_yellow }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { bg = C.none, fg = C.blue }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { bg = C.none, fg = C.bright_cyan }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticOk = { bg = C.none, fg = C.bright_green },

    DiagnosticFloatingError = { fg = C.red }, -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn = { fg = C.bright_yellow }, -- Used to color "Warn" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo = { fg = C.blue }, -- Used to color "Info" diagnostic messages in diagnostics float
    DiagnosticFloatingHint = { fg = C.bright_cyan }, -- Used to color "Hint" diagnostic messages in diagnostics float
    DiagnosticFloatingOk = { fg = C.bright_green },

    DiagnosticSignError = { fg = C.red }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn = { fg = C.bright_yellow }, -- Used for "Warn" signs in sign column
    DiagnosticSignInfo = { fg = C.blue }, -- Used for "Info" signs in sign column
    DiagnosticSignHint = { fg = C.bright_blue }, -- Used for "Hint" signs in sign column
    DiagnosticSignOk = { fg = C.bright_green },

    LspSignatureActiveParameter = { fg = C.cyan },
    LspDiagnosticsError = { fg = C.red },
    LspDiagnosticsWarning = { fg = C.bright_yellow },
    LspDiagnosticsInformation = { fg = C.blue },
    LspDiagnosticsHint = { fg = C.bright_cyan },
    LspDiagnosticsVirtualTextError = { fg = C.red, bg = C.background }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { fg = C.bright_yellow, bg = C.background }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { fg = C.blue, bg = C.background }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { fg = C.bright_cyan, bg = C.background }, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = { fg = C.red, bg = C.background, underline = true }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { fg = C.bright_yellow, bg = C.background, underline = true }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { fg = C.blue, bg = C.background, underline = true }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { fg = C.bright_cyan, bg = C.background, underline = true }, -- Used to underline "Hint" diagnostics
    LspCodeLens = { fg = C.bright_cyan }, -- virtual text of the codelens
    LspInlayHint = {
      fg = C.oxley,
      bg = C.alt_background,
    }, -- virtual text of the inlay hints
    LspInfoBorder = { link = "FloatBorder" }, -- LspInfo border
  }
end
