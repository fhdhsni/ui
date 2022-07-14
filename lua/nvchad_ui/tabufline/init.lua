local tabufline_opts = require("nvchad_ui").tabufline

return {
   setup = function(opts)
      tabufline_opts = vim.tbl_deep_extend("force", tabufline_opts, opts.tabufline or {})

      local modules = require "nvchad_ui.tabufline.modules"
      return modules.CoverNvimTree() .. modules.bufferlist() .. (modules.tablist() or "") .. modules.buttons()
   end,
}
