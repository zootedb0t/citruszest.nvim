local config = {}

config.options = {
  transparent = false,
  italic = true,
  style = {},
}

config.extended = vim.deepcopy(config.options)

function config:extend(user_config)
  self.extended = vim.tbl_deep_extend("force", self.extended, user_config or {})
end

return setmetatable(config, {
  __index = function(_, key)
    return config.extended[key]
  end,
})
