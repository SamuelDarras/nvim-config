return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local theme = require 'alpha.themes.theta'
        theme.header.val = {
            [[        ....                      _            .                        ]],
            [[    .xH888888Hx.                 u            @88>                      ]],
            [[  .H8888888888888:              88Nu.   u.    %8P      ..    .     :    ]],
            [[  888*"""?""*88888X            '88888.o888c    .     .888: x888  x888.  ]],
            [[ 'f     d8x.   ^%88k            ^8888  8888  .@88u  ~`8888~'888X`?888f` ]],
            [[ '>    <88888X   '?8             8888  8888 ''888E`   X888  888X '888>  ]],
            [[  `:..:`888888>    8>            8888  8888   888E    X888  888X '888>  ]],
            [[         `"*88     X             8888  8888   888E    X888  888X '888>  ]],
            [[    .xHHhx.."      !  88888888  .8888b.888P   888E    X888  888X '888>  ]],
            [[   X88888888hx. ..!   88888888   ^Y8888*""    888&   "*88%""*88" '888!` ]],
            [[  !   "*888888888"                 `Y"        R888"    `~    "    `"`   ]],
            [[         ^"***"`                               ""                       ]],
        }
        require 'alpha'.setup(theme.config)
    end
}
