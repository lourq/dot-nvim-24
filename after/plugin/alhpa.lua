local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header

-- dashboard.section.header.val = {
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠇⣀⡀⢥⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢎⠞⣷⣟⣮⠇⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⢸⢀⡹⠛⡗⣅⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⠀",
--     "⢶⣿⣿⣿⣿⣿⣿⣿⣿⡽⣯⣻⣯⣮⣯⣯⣾⠭⢫⠏⣟⣗⣗⢯⣻⡗⢯⢏⢙⣷⣿⣯⣮⣻⣻⢟⣫⣿⢿⣿⣿⣿⣿⣿⣷⡆⠀",
--     "⠀⠻⣿⣿⣿⣿⣿⣷⣿⣿⣟⡿⢿⡿⣿⡿⢟⣑⡡⠖⣺⡟⢗⡿⣿⡞⠧⣘⣝⣿⣻⣿⣿⠿⣿⢻⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀",
--     "⠀⠀⠀⠉⠛⠻⠿⠿⠿⠿⠷⠿⣛⣋⡯⣹⣷⣷⣾⡟⡿⣥⣞⣿⡟⡟⣯⣷⣻⣾⣍⢏⣑⡻⠷⠿⠿⠿⠿⠿⠟⠛⠉⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⢀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣾⣿⡓⣌⣟⡃⢀⢹⣜⣯⢱⣄⣜⡟⡀⣱⢩⣮⣿⣿⣿⣿⣿⣶⣶⣦⣄⡀⠀⠀⠀⠀⠀",
--     "⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣡⡿⠾⠃⡎⢸⢙⢻⠀⠋⠻⢧⢱⣏⣜⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀",
--     "⠀⠀⠈⠛⠻⢿⣿⣿⣿⣿⣿⠿⠿⠯⠟⠛⠉⠁⠀⢀⠁⢈⣸⣾⠄⢠⠀⠀⠈⠙⠛⠯⠯⠿⢿⣿⣿⣿⣿⣿⠿⠟⠋⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢸⢷⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢸⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣼⣽⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢸⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⢰⣩⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢔⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
-- }

dashboard.section.header.val = {
    "PPPGY:                               ?GGPPPPPPPPPP",
    "PPGJ.                                 !GGPPPPPPPPP",
    "PG?                                   .~PGPPPPPPPP",
    "GY                                     .^PGPPPPPPP",
    "P~                                      .!PGPPPPPP",
    "J^                                       :JGPPPPPP",
    "!                     :.                 .!PGPPPPP",
    "~         .:           ^:!.                !PGGPPP",
    "..         .:   ...    ..:^^ .      :.   .  :JGGGP",
    "~^       :~  ^~...:77:.~?J?~~~.    ^75    . .^~YGG",
    "PY        ~^ .^!JJ~.J&&GJGG??7:   .~Y5     .... .!",
    "GP:      .7J~^P7Y@@&#&@@@@&&@&~   ^!@:       :~. .",
    "GP7       :~J7~75&@@@@@@@@@@@&J   :^^         :7.!",
    "GP7       .B&&BG@@@@@&&####&@&Y.   !      .  . ^^&",
    "PG!        J@@@@@@&#BG&@@@@@@@5.   G5.?:    JG.7&!",
    "PG!      :. P@PGBB&@@&@@@@@@@@G.   B5^@YBY  :PY #&",
    "PGY   ^   !  7&GG@@@@@@@@@&&@@&.   J!:@BB@!^ .5~.#",
    "PGP   7   ~~: ^5YB&@@@GB#B#@@@@^   ^. @@B@&7^ .J.7",
    "!!~   7^ ..~^    :5&@@@@@@@@@@G!   .: ?@G@@Y!  ~! ",
    "PPP. .~? :^.^. .   .:?G&@@@@#B@5    Y..BB@@@~: ?J^",
    "GGG: ~.J  Y..   :  .^   .^J57@@Y  : B!7:J@@@G. 75J",
    "PPG~ ^:.. ~P.   .:   ^^   &@JG&B  7 G@.7YYB&B .JPP",
    "PPG? .P!.: JG7. ^:    . :~&@&&&@ .J7Y@G~^^  .!&JPG",
    "PPG5  JP^^^ ?G5 .Y. .G. 7!5@@@#B ~55JG&&P!~?#@@&JP"
}

-- dashboard.section.header.val = {
-- "          .                                                      .",
-- "        .n                   .                 .                  n.",
-- "  .   .dP                  dP                   9b                 9b.    .",
-- " 4    qXb         .       dX                     Xb       .        dXp     t",
-- "dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb",
-- "9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP",
-- " 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP",
-- "  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'",
-- "    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'",
-- "        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~",
-- "                        )b.  .dbo.dP'`v'`9b.odb.  .dX(",
-- "                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.",
-- "                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb",
-- "                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb",
-- "                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP",
-- "                     `'      9XXXXXX(   )XXXXXXP      `'",
-- "                              XXXX X.`v'.X XXXX",
-- "                              XP^X'`b   d'`X^XX",
-- "                              X. 9  `   '  P )X",
-- "                              `b  `       '  d'",
-- "                               `             '"
-- }

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "󰈞  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

