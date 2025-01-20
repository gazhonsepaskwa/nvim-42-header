# 42 Header for nvim

![image](https://github.com/user-attachments/assets/28f3a7bc-afd8-4f41-a4aa-9cdc8ce0c16c)

## Auto install

```

chmod 700 autoinstall.sh && ./autoinstall.sh

```

## Manual install

1. go to the nvim config folder
```

cd ~/.config/nvim/

```

2. add thosse line at the end of init.lua
```

-- auto added code by nalebrun header42
local header = require('header')
vim.api.nvim_create_user_command(
    'Header42',
    function()
        header.insert_header()
    end,
    {}
)

```
(ps: the comment is important to prevent the autoinstall breaking the init file)

<br>

3. Copy the ```header.lua``` in ```~/.config/nvim/lua/```

<br>

## Error / Improvement ?

Open an issue or a pull request ;)
