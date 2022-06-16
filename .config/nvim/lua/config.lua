require('neoscroll').setup({
  hide_cursor = true,          -- Hide cursor while scrolling
  stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  cursor_scrolls_alone = false,
})

local t = {}
t['<S-k>'] = {'scroll', {'-vim.wo.scroll', 'true', '200', [[sine]]}}
t['<S-j>'] = {'scroll', { 'vim.wo.scroll', 'true', '200', [[sine]]}}
require('neoscroll.config').set_mappings(t)
