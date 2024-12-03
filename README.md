# YamVim

My NeoVim configuration is based on [Josean NeoVim config](https://www.youtube.com/watch?v=6pAG3BHurdM&t=1461s).
The key differences are the theme: Catppuccin, and some plugins. YamVim is currently on development.

## Pendings

1. TS-autotag is not working with Treesitter, need to do the instalation separately.
2. Indentation is not rainbow, only the main indentation has colors
3. Could not restore sessio wit space wr after space qa
4. Sometimes ctrl f and ctrl p does not work for scrolling through file (known issue)
5. When I type { ""} it does not add a space after the closing curly bracket.
6. Need to install firtst the autoclosing plugin, so Treesitter does not have problem with indentation
7. CTRL o does not work
8. Check Vim Motions
9. Did not fully understan nvim-subsitute
10. Theres a plugin to show all my commands, cant remember it
11. I can write to the end of the window, I believe there was a plugin to prevent this, but I did not set it
12. How to render .md

## Resources

1. Catppuccin lualine theme: https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/utils/lualine.lua
2. tsserver is not recognized, switchet do vtsls: https://github.com/neovim/nvim-lspconfig/pull/3232
3. [ Josean config ] (https://www.josean.com/posts/how-to-setup-neovim-2024)
