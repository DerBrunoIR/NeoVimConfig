
vim.keymap.set({'n', 'x', 'o'}, 'S', '<Plug>(leap-backward)' )
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)' )

local opts = require('leap').opts

opts.case_sensitive = false
opts.equivalence_classes = { ' \t\r\n', }
opts.max_phase_one_targets = nil
opts.highlight_unlabeled_phase_one_targets = false
opts.max_highlighted_traversal_targets = 10
opts.substitute_chars = {}
opts.safe_labels = 'sfnut/SFNLHMUGTZ?'
opts.labels = 'sfnjklhodweimbuyvrgtaqpcxz/SFNJKLHODWEIMBUYVRGTAQPCXZ?'
opts.special_keys = {
  next_target = '<enter>',
  prev_target = '<tab>',
  next_group = '<space>',
  prev_group = '<tab>',
}
