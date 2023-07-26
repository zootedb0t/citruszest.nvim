local config = {}

config.default = {
  transparent = false,
  italic = true,
  style = {},
}

config.extended = vim.deepcopy(config.default)

-- Extend default with user_config
function config:extend(user_config)
  self.extended = vim.tbl_deep_extend("force", self.extended, user_config or {})
end

return setmetatable(config, {
  __index = function(_, key)
    return config.extended[key]
  end,
})
