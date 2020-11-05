lua <<EOF
require'nvim_lsp'.intelephense.setup{}
EOF

lua require'nvim_lsp'.pyls.setup{on_attach=require'completion'.on_attach}
