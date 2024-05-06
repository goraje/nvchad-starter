-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "poimandres",
  statusline = {
    theme = "minimal",
  },
  term = {
    hl = "Normal:term,WinSeparator:WinSeparator,FloatBorder:Normal",
    sizes = { sp = 0.35, vsp = 0.5 },
    float = {
      width = 0.9,
      height = 0.8,
      row = 0.05,
      col = 0.05,
    },
  },
  hl_override = {
    Type = { bold = true },
    ["@keyword"] = { bold = true },
  },
}

return M
