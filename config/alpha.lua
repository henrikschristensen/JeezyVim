local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
  "                                                                                                                                                                          ",
  "																				             ",
  "																					     ",
  "																					     ",
  "																					     ",
  " --[[																				     ",
  "                 █████████████               ",
  "              ███ █████████████ ████           ",
  "           ██████ ███████████  ████████        ",
  "         ████████ █████████ █████████████      ",
  "        █████████ ███████  ███████████████     ",
  "       ██████████ ██████  █████████████████     .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.          ",
  "        █████████ ███                          | .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |         ",
  "     ███ ████████               █████████████  | |     _____    | || |  ____  ____  | || |    _______   | || |  ___  ____   | || |  _________   | || | ____   ____  | || |     _____    | || | ____    ____ | |         ",
  "     █████ ██████                █████████████ | |    |_   _|   | || | |_  _||_  _| | || |   /  ___  |  | || | |_  ||_  _|  | || | |_   ___  |  | || ||_  _| |_  _| | || |    |_   _|   | || ||_   \\  /   _|| |         ",
  "     ███████ ████                 ████████████ | |      | |     | || |   \\ \\  / /   | || |  |  (__ \\_|  | || |   | |_/ /    | || |   | |_  \\_|  | || |  \\ \\   / /   | || |      | |     | || |  |   \\/   |  | |     ",
  "     █████████                       █████████ | |   _  | |     | || |    \\ \\/ /    | || |   '.___`-.   | || |   |  __'.    | || |   |  _|  _   | || |   \\ \\ / /    | || |      | |     | || |  | |\\  /| |  | |       ",
  "     ███████████                 ████ ████████ | |  | |_' |     | || |    _|  |_    | || |  |`\\____) |  | || |  _| |  \\ \\_  | || |  _| |___/ |  | || |    \\ ' /     | || |     _| |_    | || | _| |_\\/_| |_ | |       ",
  "     █████████████               ██████ ██████ | |  `.___.'     | || |   |______|   | || |  |_______.'  | || | |____||____| | || | |_________|  | || |     \\_/      | || |    |_____|  | || ||_____||_____|| |         ",
  "     ██████████████              ████████ ███  | |              | || |              | || |              | || |              | || |              | || |              | || |              | || |              | |         ",
  "                             ███ █████████     | '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |         ",
  "       ██████████████████  █████ ██████████     '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'          ",
  "        ████████████████ ███████ █████████     ",
  "         █████████████ █████████ ████████      ",
  "           █████████ ███████████ ██████        ",
  "              ████ █████████████ ████          ",
  "                   █████████████                ",
  "																					     ",
  " --]]																				     ",
  "																					     ",
  "																					     ",
  " 																					     ",
  " 																					     ",
  "																					     ",
 }
dashboard.section.buttons.val = {
  dashboard.button('e', '󱝩  Explorer', ':NvimTreeToggle<CR>'),
  dashboard.button(
    'f',
    '  Find file',
    ':Telescope frecency workspace=CWD theme=dropdown<CR>'
  ),
  dashboard.button('n', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button(
    'r',
    '󱝩  Recently used files',
    ':Telescope oldfiles theme=dropdown<CR>'
  ),
  dashboard.button('q', '  Quit JyskeVim', ':qa<CR>'),
}

dashboard.section.footer.val = 'Free The Ukraine'

dashboard.section.footer.opts.hl = 'Macro'
dashboard.section.header.opts.hl = 'Macro'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = false
alpha.setup(dashboard.opts)
