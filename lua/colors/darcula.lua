vim.cmd([[
colorscheme darcula-solid
highlight! BufferNotCurrent guifg=#262627 guibg=#353536
highlight! BufferCurrentSign guifg=#262627 guibg=#262627

highlight! link BufferCurrent Normal
highlight! link BufferCurrentIndex Normal
highlight! link BufferCurrentMod Normal
highlight! link BufferCurrentTarget Normal

highlight! link BufferVisible CursorLine
highlight! link BufferVisibleIndex BufferNotCurrent
highlight! link BufferVisibleMod BufferNotCurrent
highlight! link BufferVisibleSign BufferNotCurrent
highlight! link BufferVisibleTarget BufferNotCurrent

highlight! link BufferInactive CursorLine
highlight! link BufferInactiveIndex BufferNotCurrent
highlight! link BufferInactiveMod BufferNotCurrent
highlight! link BufferInactiveSign BufferNotCurrent
highlight! link BufferInactiveTarget BufferNotCurrent

highlight! link BufferTabPages CursorLine
highlight! link BufferTabPageFill CursorLine
highlight! link BufferOffset CursorLine
]])
