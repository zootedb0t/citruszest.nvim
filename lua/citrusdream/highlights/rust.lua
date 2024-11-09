return function(_, _)
  return {
    -- rust specific
    ["@lsp.type.decorator.rust"] = { link = "@function.macro" },
    ["@lsp.type.const.rust"] = { link = "Constant" },
    ["@lsp.typemod.keyword.crateRoot.rust"] = { link = "@module" },
    ["@lsp.mod.controlFlow.rust"] = { link = "Conditional" },
  }
end
