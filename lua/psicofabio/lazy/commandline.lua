return {
  'VonHeikemen/fine-cmdline.nvim',
  dependencies = {
    {'MunifTanjim/nui.nvim'}
  },
  config = function()
    local fineline = require('fine-cmdline')
    local fn = fineline.fn

    fineline.setup({
      cmdline = {
        prompt = ': ',
        enable_keymaps = false
      },
      popup = {
        buf_options = {
          filetype = 'FineCmdlinePrompt'
        }
      },
      hooks = {
        set_keymaps = function(imap, feedkeys)
          imap('<Esc>', fn.close)
          imap('<C-c>', fn.close)
          imap('<Up>', fn.up_search_history)
          imap('<Down>', fn.down_search_history)
        end
      }
    })

    vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
  end
}
