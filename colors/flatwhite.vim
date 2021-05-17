
"                            M O O N L I G H T
"      _..._         _..._         _..._         _..._         _..._
"    .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
"   :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
"   :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
"   `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
"     `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
"
" Colorscheme name:    flatwhite.nvim
" Description:         Port of VSCode's Moonlight colorscheme for NeoVim
" Author:              https://github.com/shaunsingh

lua << EOF
package.loaded['flatwhite'] = nil
package.loaded['flatwhite.util'] = nil
package.loaded['flatwhite.colors'] = nil
package.loaded['flatwhite.theme'] = nil
package.loaded['flatwhite.functions'] = nil

require('flatwhite').set()
EOF
