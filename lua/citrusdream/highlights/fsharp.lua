return function(_, _)
  return {
    -- f# specific
    ["@lsp.type.module.fsharp"] = { link = "@module" },
    ["@lsp.type.variable.fsharp"] = { link = "@variable" },
  }
end
