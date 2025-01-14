#!/bin/bash

line_to_check="-- auto added code by nalebrun header42"
ninth_line_from_bottom=$(tail -n 9 ~/.config/nvim/init.lua | head -n 1)
if [ "$ninth_line_from_bottom" != "$line_to_check" ]; then
	echo 	"-- auto added code by nalebrun header42"		>> ~/.config/nvim/init.lua
	echo 	"local header = require('header')"	 			>> ~/.config/nvim/init.lua
	echo 	"vim.api.nvim_create_user_command("			 	>> ~/.config/nvim/init.lua
	echo 	"    'Header'," 								>> ~/.config/nvim/init.lua
	echo 	"    function()" 								>> ~/.config/nvim/init.lua
	echo 	"        header.insert_header()" 				>> ~/.config/nvim/init.lua
	echo 	"    end," 										>> ~/.config/nvim/init.lua
	echo 	"    {}" 										>> ~/.config/nvim/init.lua
	echo 	")" 											>> ~/.config/nvim/init.lua
fi
cp ./header.lua ~/.config/nvim/lua/
echo "Instalation Done ! ":Header" to use it in nvim ;)"
